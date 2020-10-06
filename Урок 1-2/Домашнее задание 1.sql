--Создайте базу данных example

create DATABASE example;

--Разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name

CREATE TABLE example.users (
	id INT NULL,
	name varchar(100) NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

--Добавляем данные в столбцы нашей таблицы, можно таким способом

INSERT INTO users (id, name) 
VALUES (1, 'Процессоры');

INSERT INTO users (id,name) 
VALUES (2, 'Мат.платы');

INSERT INTO users (id,name) 
VALUES (3, 'Видеокарты');

INSERT INTO users (id,name) 
VALUES (4, 'Вентиляторы');

--но таким быстрее

INSERT INTO users VALUES
  (5, 'Корпуса'),
  (6, 'Блоки питания'),
  (7, 'Звуковые карты');
 
 --проверим, данные в таблице users
 
 select * from users;

--в mysqldump создаем дамп базы данных example

mysqldump -p example > "C:\Users\79167\Desktop\dump1"

--создаем базу данных sample

CREATE DATABASE sample;

--разворачиваем содержимое дампа в новую базу данных sample

mysql sample < "C:\Users\79167\Desktop\dump1"

--конец
