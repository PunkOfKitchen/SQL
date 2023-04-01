--1 Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary 
from employees join salary2
on employees.id = salary2.id;

--2 Вывести всех работников у которых ЗП меньше 2000.
select employee_name from employees join salary2 
on employees.id = salary2.id 
where monthly_salary < 2000;

--3 Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary, employee_name from salary2 left join employees
on salary2.id = employees.id
where employee_name = null;

--4 Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary, employee_name from salary2 left join employees
on salary2.id = employees.id
where employee_name = null and monthly_salary < 2000;

--5 Найти всех работников кому не начислена ЗП.
select employee_name from employees join salary2
on employees.id = salary2.id 
where monthly_salary  = null;

--6 Вывести всех работников с названиями их должности.
select employee_name, role_name from employees join roles2
on employees.id = roles2.id;

--7 Вывести имена и должность только Java разработчиков.
select employee_name, role_name from employees join roles2
on employees.id = roles2.id
where role_name like '%Java %';

--8 Вывести имена и должность только Python разработчиков.
select employee_name, role_name from employees join roles2
on employees.id = roles2.id
where role_name like '%Python%';

--9 Вывести имена и должность всех QA инженеров.
select employee_name, role_name from employees join roles2
on employees.id = roles2.id
where role_name like '%QA%';

--10 Вывести имена и должность ручных QA инженеров.
select employee_name, role_name from employees join roles2
on employees.id = roles2.id
where role_name like '%Manual QA%';

--11 Вывести имена и должность автоматизаторов QA
select employee_name, role_name from employees join roles2
on employees.id = roles2.id
where role_name like '%Automation QA%';

--12  Вывести имена и зарплаты Junior специалистов
select employee_name, role_name, monthly_salary from employees join roles2
on employees.id = roles2.id
full join employee_salary
	on roles2.id = employee_salary.employee_id
full join salary2 
	on salary2.id = employee_salary.salary_id
where role_name like '%Junior%' and monthly_salary > 0;
 
--13. Вывести имена и зарплаты Middle специалистов
select employee_name, role_name, monthly_salary from employees join roles2
on employees.id = roles2.id
full join employee_salary
	on roles2.id = employee_salary.employee_id
full join salary2 
	on salary2.id = employee_salary.salary_id
where role_name like '%Middle%' and monthly_salary > 0;

--14. Вывести имена и зарплаты Senior специалистов
 select employee_name, role_name, monthly_salary from employees join roles2
on employees.id = roles2.id
full join employee_salary
	on roles2.id = employee_salary.employee_id
full join salary2 
	on salary2.id = employee_salary.salary_id
where role_name like '%Senior%' and monthly_salary > 0;

--15. Вывести зарплаты Java разработчиков
select monthly_salary, role_name from salary2 
join roles2
on salary2.id = roles2.id 
where role_name like '%Java %';

--16. Вывести зарплаты Python разработчиков
select monthly_salary, role_name from salary2 
join roles2
on salary2.id = roles2.id 
where role_name like '%Python %';

--17. Вывести имена и зарплаты Junior Python разработчиков
 select employee_name, role_name, monthly_salary from employees join roles2
on employees.id = roles2.id
full join employee_salary
	on roles2.id = employee_salary.employee_id
full join salary2 
	on salary2.id = employee_salary.salary_id
where role_name like 'Junior Python%' and monthly_salary > 0;

-- 18. Вывести имена и зарплаты Middle JS разработчиков
 select employee_name, role_name, monthly_salary from employees join roles2
on employees.id = roles2.id
full join employee_salary
	on roles2.id = employee_salary.employee_id
full join salary2 
	on salary2.id = employee_salary.salary_id
where role_name like 'Middle JavaScript%'  and monthly_salary > 0;

-- 19. Вывести имена и зарплаты Senior Java разработчиков
 select employee_name, role_name, monthly_salary from employees join roles2
on employees.id = roles2.id
full join employee_salary
	on roles2.id = employee_salary.employee_id
full join salary2 
	on salary2.id = employee_salary.salary_id
where role_name like 'Senior Java%' and monthly_salary > 0;

-- 20. Вывести зарплаты Junior QA инженеров
select monthly_salary, role_name from salary2 
right join roles2
on salary2.id = roles2.id 
where role_name like 'Junior%' and role_name like '% QA %' and monthly_salary > 0;

-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) from 
employees e join roles2 r2
on e.id = r2.id 
join salary2 s 
on r2.id = s.id
where role_name like 'Junior%';

-- 22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary)from 
employees e join roles2 r2
on e.id = r2.id 
join salary2 s 
on r2.id = s.id
where role_name like '%JavaScript%';

-- 23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary)from 
employees e join roles2 r2
on e.id = r2.id 
join salary2 s 
on r2.id = s.id
where role_name like '%QA%';


-- 24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary)from 
employees e join roles2 r2
on e.id = r2.id 
join salary2 s 
on r2.id = s.id
where role_name like '%QA%';

-- 25. Вывести количество QA инженеров
select count(employee_name) from employees e 
join roles2 r 
	on e.id = r.id
join roles2_employee re 
	on re.role_id = r.id 
where role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.
select count(employee_name) from employees e 
join roles2 r 
	on e.id = r.id
join roles2_employee re 
	on re.role_id = r.id 
where role_name like 'Middle%';

-- 27. Вывести количество разработчиков.
select count(employee_name) from employees e 
join roles2 r 
	on e.id = r.id
join roles2_employee re 
	on re.role_id = r.id 
where role_name like '%developer';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) from salary2 s 
join roles2 r 
	on s.id = r.id 
where role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию.
select employee_name, role_name, monthly_salary from employees e 
join roles2 r 
	on e.id = r.id 
join salary2 s 
	on r.id = s.id 
order by monthly_salary;	

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300.
select employee_name, role_name, monthly_salary from employees e 
join roles2 r 
	on e.id = r.id 
join salary2 s 
	on r.id = s.id 
where monthly_salary >=1700 and monthly_salary <=2300 
order by monthly_salary;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary from employees e 
join roles2 r 
	on e.id = r.id 
join salary2 s 
	on r.id = s.id 
where monthly_salary < 2300 
order by monthly_salary;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees e 
join roles2 r 
	on e.id = r.id 
join salary2 s 
	on r.id = s.id 
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary;