-- SQLite
CREATE TABLE IF NOT EXISTS addresses (
    id INTEGER PRIMARY KEY,
    address TEXT NOT NULL,
    delivery_cost REAL NOT NULL
);

INSERT INTO addresses (address, delivery_cost) VALUES ('Восток', 300);
INSERT INTO addresses (address, delivery_cost) VALUES ('Мыхал', 250);
INSERT INTO addresses (address, delivery_cost) VALUES ('Терезе', 100);
INSERT INTO addresses (address, delivery_cost) VALUES ('Первомайск', 60);
INSERT INTO addresses (address, delivery_cost) VALUES ('Римгорка', 60);
INSERT INTO addresses (address, delivery_cost) VALUES ('Джага', 60);
INSERT INTO addresses (address, delivery_cost) VALUES ('Конзавод', 120);
INSERT INTO addresses (address, delivery_cost) VALUES ('Мирный', 200);
INSERT INTO addresses (address, delivery_cost) VALUES ('Кисловодск', 300);
INSERT INTO addresses (address, delivery_cost) VALUES ('Учкекен', 0);
INSERT INTO addresses (address, delivery_cost) VALUES ('Самовывоз', 0);
INSERT INTO addresses (address, delivery_cost) VALUES ('Столик 1', 0);
INSERT INTO addresses (address, delivery_cost) VALUES ('Столик 2', 0);
INSERT INTO addresses (address, delivery_cost) VALUES ('Столик 3', 0);
INSERT INTO addresses (address, delivery_cost) VALUES ('Столик 4', 0);
INSERT INTO addresses (address, delivery_cost) VALUES ('СТолик 5', 0);


INSERT INTO addresses (address, delivery_cost) VALUES ('', 0);


-- Добавьте другие записи, если необходимо
DROP TABLE IF EXISTS adresses;
DROP TABLE IF EXISTS dish;
DROP TABLE IF EXISTS dishes;

300 восток
мыхад 250
терезе 100
первомайск 60
Римгорка 60
Джана 60
Конзавод 120
Мирный 200
Кисловодск 300
Учкекен от 100
700р мин сумма




-- Добавьте другие записи, если необходимо
DELETE FROM dishes;
DELETE FROM addresses;


INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Смачный Мага', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Бешеный Лосось', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Филадельфия Классика', 'Роллы', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Филадельфия Люкс', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Филадельфия Гриль', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Филадельфия Микс', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Филадельфия с Авокадо', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Сливочная Филадельфия', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Филадельфия с Креветкой', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Филадельфия с Крабом', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Ямато', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Канада', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Акинава', 'Роллы', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Калифорния с Лососем', 'Роллы', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Рыжий Лис', 'Роллы', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Калифорния с Креветкой', 'Роллы', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Калифорния с коп. Лососем', 'Роллы', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Пирамида', 'Роллы', 300);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Динамит', 'Роллы', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Креветка Нежная', 'Роллы', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Калифорния Классика', 'Роллы', 290);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Ронин', 'Роллы', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Цезарь Ролл', 'Роллы', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Чикен Ролл', 'Роллы', 280);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Император', 'Запеченные', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченный Киото', 'Запеченные', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Спайс Лосось', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Спейс Краб', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Хотто Спайс Лосось', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Хотто Спайс Краб', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченная Филадельфия', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченная Калифорния', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Чипа', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченный Сливочный', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченный с Угрем', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченный с Тунцом', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченный Окунь', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченный с коп. Лососем', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченный Лосось и Краб', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченный с Курицей', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченный с Креветкой', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Темпура с Лососем', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Кебаб Ролл', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Темпура Калифорния', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Темпура Цезарь', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Инь-Янь', 'Запеченные', 320);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Сливочная Темпура', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Темпура Креветка', 'Запеченные',310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Темпура Курица', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Темпура Угорь', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Темпура с Тунцом', 'Запеченные', 310);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Классический с Лососем', 'Классические', 120);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Классический с Тунцом', 'Классические', 120);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Классический с коп. Лососем', 'Классические', 120);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Классический с с Угрем', 'Классические', 120);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Классический с Крабом', 'Классические', 100);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Классический с Огурцом', 'Классические', 70);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Классический с Масаго', 'Классические', 70);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Бургер Ролл с Лососем', 'Бургер Ролл', 300);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Бургер Ролл с Крабом', 'Бургер Ролл', 300);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Бургер Ролл с Курицей', 'Бургер Ролл', 300);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Медовые Водопады', 'Сеты', 2170);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Суетолог', 'Сеты', 1550);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Запеченный', 'Сеты', 1250);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Карфаген', 'Сеты', 1550);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Жареный', 'Сеты', 1000);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Джункай', 'Сеты', 1550);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Филадельфия', 'Сеты', 800);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Горячий', 'Сеты', 800);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Учкекен', 'Сеты', 1250);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Общий', 'Сеты', 1000);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Джанго', 'Сеты', 650);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Классический', 'Сеты', 300);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Имбирь', 'Дополнительно', 0);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Васаби', 'Дополнительно', 0);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Соевый Соус', 'Дополнительно', 0);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('Ореховый Соус', 'Дополнительно', 0);
INSERT INTO dishes (dish_name, dish_category, dish_price) VALUES ('', 'Ничего', 0);




