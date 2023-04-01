// 1 вывести все строки и поля;
select * from public.students;

// 2 вывести всех студентов в таблице;
select name from public.students;

// 3 вывести только id пользователей;
select id from public.students;

// 4 вывести только имя пользователей;
select name from public.students;

// 5 вывести только email пользователей;
select email from public.students;

// 6 вывести имя и email пользователей;
select name, email from public.students;

// 7 вывести id, имя, email и дату создания пользователей;
select id, name, email, created_on from public.students;

// 8 вывести пользователей, где password 12333;
select name from public.students
where password='12333';

// 9 вывести пользователей, которые бы ли созданы 2021-03-26-00:00.00;
select name, id from public.students
where created_on = '2021-03-26';

// 10 вывести пользователей, где в имени есть слово Аnna;
select name from public.students
where name LIKE '%Anna%';

// 11 вывести пользователей, где имени в конце есть 8;
select name from public.students
where name LIKE '%8';

// 12 вывести пользователей, где в имени есть буква а;
select name from public.students
where name LIKE '%a%';

// 13 вывести пользователей, которые бы ли созданы 2021-07-12 00:00:00;
select name, id from public.students
where created_on = '2021-07-12 00:00:00.000';

// 14 вывести пользователей, которые бы ли созданы 2021-07-12 00:00:00 и имеют пароль 1m313;
select name, id from public.students
where created_on = '2021-07-12' and password='1m313';

// 15 вывести пользователей, которые бы ли созданы 2021-07-12 00:00:00 и у которых в имени есть Andrey;
select name, id from public.students
where created_on = '2021-07-12' and name LIKE '%Andrey%';

// 16 вывести пользователей, которые бы ли созданы 2021-07-12 00:00:00 у которых в имени есть цифра 8;
select name, id from public.students
where created_on = '2021-07-12' and name LIKE '%8%';

// 17 вывести пользователя, у которых id равен 110;
select * from public.students
where id = '110';

// 18 вывести пользователя, у которых id равен 153;
select * from public.students
where id = '153';

// 19 вывести пользователя, у которых id равен 140;
select * from public.students
where id = '140';

// 20 вывести пользователя, у которых id равен 130;
select * from public.students
where id = '130';

// 21 вывести пользователя, у которых id меньше 137 или больше 188;
select * from public.students
where id < '137' or id > '188';

// 22 вывести пользователя, у которых id меньше либо равно 137;
select * from public.students
where id <= '137';

// 23 вывести пользователя, у которых id больше либо равно 137;
select * from public.students
where id >= '137'; 

// 24 вывести пользователя, у которых id больше 180, но меньше 190;
select * from public.students
where id > 180 and id < 190;

// 25 вывести пользователя, у которых id между 180 и 190;
select * from public.students
where id between 180 and 190;

// 26 вывести пользователей, где password равен 12333, 1m313, 123313;
select * from public.students
where password = '12333' or password = '1m313' or password = '123313';

// 27 вывести пользователей, где created_on равен 2020-10-03 00:00:00.000, 2021-05-19 00:00:00.000, 2021-03-26 00:00:00.000;
select * from public.students
where created_on = '2020-10-03 00:00:00.000' or created_on = '2021-05-19 00:00:00.000' or created_on = '2021-03-26 00:00:00.000';

// 28 вывести минимальный id;
select MIN(id) from public.students;

// 29 вывести максимальный id;
select MAX(id) from public.students;

// 30 вывести количество пользователей;
select count(*) from public.students;

// 31 вывести id пользователя, имя, created_on,
	отсортировать по порядку возростания даты добавления пользователя;
select id, name, created_on from public.students
order by created_on;
	
// 32 вывести id пользователя, имя, дату создания пользователя,
	отсортировать по порядку убывания даты добавления пользователя;
select id, name, created_on from public.students
order by created_on DESC;
