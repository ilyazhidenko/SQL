--�������� ���� ������ example

create DATABASE example;

--���������� � ��� ������� users, ��������� �� ���� ��������, ��������� id � ���������� name

CREATE TABLE example.users (
	id INT NULL,
	name varchar(100) NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

--��������� ������ � ������� ����� �������, ����� ����� ��������

INSERT INTO users (id, name) 
VALUES (1, '����������');

INSERT INTO users (id,name) 
VALUES (2, '���.�����');

INSERT INTO users (id,name) 
VALUES (3, '����������');

INSERT INTO users (id,name) 
VALUES (4, '�����������');

--�� ����� �������

INSERT INTO users VALUES
  (5, '�������'),
  (6, '����� �������'),
  (7, '�������� �����');
 
 --��������, ������ � ������� users
 
 select * from users;

--� mysqldump ������� ���� ���� ������ example

mysqldump -p example > "C:\Users\79167\Desktop\dump1"

--������� ���� ������ sample

CREATE DATABASE sample;

--������������� ���������� ����� � ����� ���� ������ sample

mysql sample < "C:\Users\79167\Desktop\dump1"

--�����
