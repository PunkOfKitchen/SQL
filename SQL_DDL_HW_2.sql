--// 1  Создать таблицу employees 
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--// 2 Наполнить таблицу employee 70 строками 
insert into employees (employee_name)
values  ('Petrov'),
	    ('Сидоров'),
	    ('Смирнов'),
        ('Иванов'),
		('Кузнецов'),
		('Соколов'),
		('Попов'),
		('Лебедев'),
		('Козлов'),
		('Новиков'),
		('Морозов'),
		('Петров'),
		('Волков'),
		('Соловьёв'),
		('Васильев'),
		('Зайцев'),
		('Павлов'),
		('Семёнов'),
		('Голубев'),
		('Виноградов'),
		('Богданов'),
		('Воробьёв'),
		('Фёдоров'),
		('Михайлов'),
		('Беляев'),
		('Тарасов'),
		('Белов'),
		('Комаров'),
		('Орлов'),
		('Киселёв'),
		('Макаров'),
		('Андреев'),
		('Ковалёв'),
		('Ильин'),
		('Гусев'),
		('Титов'),
		('Кузьмин'),
		('Кудрявцев'),
		('Баранов'),
		('Куликов'),
		('Алексеев'),
		('Степанов'),
		('Яковлев'),
		('Сорокин'),
		('Сергеев'),
		('Романов'),
		('Захаров'),
		('Борисов'),
		('Королёв'),
		('Герасимов'),
		('Пономарёв'),
		('Григорьев'),
		('Филиппов'),
		('Марков'),
		('Большаков'),
		('Суханов'),
		('Миронов'),
		('Ширяев'),
		('Александров'),
		('Коновалов'),
		('Шестаков'),
		('Казаков'),
		('Ефимов'),
		('Денисов'),
		('Громов'),
		('Фомин'),
		('Давыдов'),
		('Мельников'),
		('Щербаков'),
		('Блинов'),
		('Колесников');

select * from employees;

--// 3  Создать таблицу salary 
create table salary2(
	id serial primary key,
	monthly_salary int not null
);

--// 4  Наполнить таблицу salary 15 строками 
insert into salary2(monthly_salary)
values (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	   
--// 5 Создать таблицу employee_salary 
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--// 6 Наполнить таблицу employee_salary 40 строками 
insert into employee_salary(employee_id, salary_id)
values (71,1),
	   (78,2),
	   (115,3),
	   (84,4),
	   (95,5),
	   (101,6),
	   (80,7),
	   (89,8),
	   (94,9),
	   (76,10),
	   (225,11),
	   (112,12),
	   (85,1),
	   (99,12),
	   (123,15),
	   (8,8),
	   (15,9),
	   (65,5),
	   (70,3),
	   (44,13),
	   (56,11),
	   (48,4),
	   (12,9),
	   (4,7),
	   (7,3),
	   (69,4),
	   (64,6),
	   (16,12),
	   (18,13),
	   (23,3),
	   (25,8),
	   (34,7),
	   (32,5),
	   (37,15),
	   (43,12),
	   (30,11),
	   (40,9),
	   (50,6),
	   (60,7);

--// 7 Создать таблицу roles 
create table roles2(
	id serial primary key,
	role_name int not null unique
);

--// 8 Поменять тип столба role_name с int на varchar(30) 
ALTER TABLE roles2
alter COLUMN role_name SET DATA TYPE varchar(30);

--// 9 Наполнить таблицу roles 20 строками 
insert into roles2 (role_name)
values ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
  
--// 10 Создать таблицу roles_employee
create table roles2_employee (
	id serial primary key,
	employee_id int not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles2(id)
);

--11 Наполнить таблицу roles_employee 40 строками
insert into roles2_employee(role_id, employee_id)
values (1,1),
		(2,3),
		(3,5),
		(4,7),
		(5,9),
		(6,11),
		(7,13),
		(8,15),
		(9,17),
		(10,19),
		(11,21),
		(12,23),
		(13,25),
		(14,27),
		(15,29),
		(16,31),
		(17,33),
		(18,35),
		(19,37),
		(20,39),
		(20,41),
		(19,43),
		(18,45),
		(17,47),
		(16,49),
		(15,51),
		(14,53),
		(13,55),
		(12,57),
		(11,59),
		(10,61),
		(9,2),
		(8,4),
		(7,6),
		(6,8),
		(5,12),
		(4,16),
		(3,26),
		(2,34),
		(1,28);