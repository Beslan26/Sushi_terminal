from flask import Flask, request, render_template, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime, timezone, timedelta



app = Flask(__name__)

app.static_folder = 'static'

# Настройки для SQLite базы данных
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///ordersss.db'
db = SQLAlchemy(app)

class Order(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    phone = db.Column(db.String(20), nullable=False)
    menu_items = db.Column(db.String(200), nullable=False)
    num_clients = db.Column(db.Integer, nullable=False)
    address = db.Column(db.String(100), nullable=False)
    total_cost = db.Column(db.Float, nullable=False)
    payment_method = db.Column(db.String(50), nullable=False)  # Новый столбец для метода оплаты
    payment_status = db.Column(db.Boolean, nullable=True)  # Изменили тип данных на Boolean
    timestamp = db.Column(db.String(16), nullable=False)  # Изменили тип данных на String

class addresses(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    address = db.Column(db.String(100), nullable=False)
    delivery_cost = db.Column(db.Float, nullable=False)

class Dishes(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    dish_name = db.Column(db.String(100), nullable=False)
    dish_category = db.Column(db.String(100), nullable=False)
    dish_price = db.Column(db.Float, nullable=False)

with app.app_context():
    db.create_all()


# Маршруты
@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        # Получаем данные из формы
        tel_input = request.form['tel_input']
        menu_input = request.form['menu_input']
        clientsnumber_input = request.form['clientsnumber_input']
        address_input = request.form['address_input']
        method_input = request.form['method_input']

        # Разбиваем введенный список товаров на отдельные элементы
        all_tovar = menu_input.split(', ')

        # Инициализируем переменные для сумм адреса и товаров
        adresCost = 0
        tovarCost = 0

        # Проверяем введенный адрес
        address_obj = addresses.query.filter_by(address=address_input).first()
        if address_obj:
            adresCost = address_obj.delivery_cost
        else:
            return "Адрес не найден в списке адресов"

        # Проверяем каждый товар из введенного списка и суммируем цены
        for tovar in all_tovar:
            dish = Dishes.query.filter_by(dish_name=tovar).first()
            if dish:
                tovarCost += dish.dish_price
            else:
                return f"Товар '{tovar}' не найден в меню"

        # Складываем результаты
        total_cost = adresCost + tovarCost

        # Форматируем дату и время
        formatted_timestamp = datetime.now(timezone(timedelta(hours=3))).strftime('%Y-%m-%d %H:%M')

        # Создаем экземпляр Order и сохраняем его в базе данных с текущим временем
        new_order = Order(
            phone=tel_input,
            menu_items=menu_input,
            num_clients=clientsnumber_input,
            address=address_input,
            payment_method=method_input,
            total_cost=total_cost,
            timestamp=formatted_timestamp
        )
        db.session.add(new_order)
        db.session.commit()

        # Перенаправляем пользователя на страницу today_orders
        return redirect(url_for('today_orders'))

    return render_template('index.html')

@app.route('/order_history', methods=['GET'])
def order_history():
    # Здесь вам нужно будет получить данные о заказах из базы данных (таблицы "orders") и передать их на страницу
    orders = Order.query.all()  # Получить все заказы из базы данных
    return render_template('order_history.html', orders=orders)

@app.route('/today_orders', methods=['GET'])
def today_orders():
    today = datetime.now().date()  # Получите текущую дату
    orders = Order.query.filter(Order.timestamp >= today).all()  # Выберите заказы за сегодня

    return render_template('today_orders.html', orders=orders)



from flask import jsonify, request

@app.route('/calculate_total_cost', methods=['GET'])
def calculate_total_cost():
    # Получаем данные из формы
    menu_input = request.args.get('menu', '')
    address_input = request.args.get('address', '')

    # Разбиваем введенный список товаров на отдельные элементы
    all_tovar = menu_input.split(', ')
    
    # Инициализируем переменные для сумм адреса и товаров
    adresCost = 0
    tovarCost = 0
    
    # Проверяем введенный адрес
    address_obj = addresses.query.filter_by(address=address_input).first()
    if address_obj:
        adresCost = address_obj.delivery_cost
    else:
        return "Адрес не найден в списке адресов"

    # Проверяем каждый товар из введенного списка и суммируем цены
    for tovar in all_tovar:
        dish = Dishes.query.filter_by(dish_name=tovar).first()
        if dish:
            tovarCost += dish.dish_price
        else:
            return f"Товар '{tovar}' не найден в меню"

    # Складываем результаты
    total_cost = adresCost + tovarCost

    response_data = {'totalCost': total_cost}
    return jsonify(response_data)


@app.route('/change_payment_status', methods=['GET'])
def change_payment_status():
    order_id = request.args.get('orderId', type=int)

    # Находим заказ по ID
    order = Order.query.get(order_id)

    if order:
        # Меняем статус оплаты
        order.payment_status = not order.payment_status  # Инвертируем текущее значение
        db.session.commit()

        # Возвращаем новое значение статуса оплаты в формате JSON
        return jsonify({'newPaymentStatus': "Оплачено" if order.payment_status else "Не оплачено"})

    return jsonify({'error': 'Order not found'}), 404


# Вместо вашего текущего обработчика для today_orders
# @app.route('/get_dishes', methods=['GET'])
# def get_dishes():
#     dishes = Dishes.query.all()  # Получаем все блюда из базы данных
#     dishes_list = [dish.dish_name for dish in dishes]  # Преобразуем их в список имен блюд
#     return jsonify({'dishes': dishes_list})

@app.route('/get_dishes', methods=['GET'])
def get_dishes():
    dishes = Dishes.query.all()
    dishes_list = []
    for dish in dishes:
        if dish.dish_category == "Роллы":
            dishes_list.append(dish.dish_name)
    return jsonify({'dishes': dishes_list})


if __name__ == '__main__':
    app.run(debug=True)