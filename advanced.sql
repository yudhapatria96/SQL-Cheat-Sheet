select current_date, extract(year from current_date), date_trunc('year',current_date)


select '2022-01-01'::date  - current_date 

select * from datasource.employees e

-- inner join

select employee_id, first_name, e.department_id, department_name
from datasource.employees e 
join datasource.departments d on  e.department_id = d.department_id 

--simple code from inner join if we want to use with same column name 
select employee_id, first_name, e.department_id, department_name
from datasource.employees e 
join datasource.departments d using (department_id)
--simple code from inner join if we want to use with same column name 


select employee_id, first_name, e.department_id, department_name, city
from datasource.employees e 
join datasource.departments d on  e.department_id = d.department_id 
join datasource.locations l  on d.location_id  = l.location_id 



-- inner join

-- left join

select location_id, city, department_name 
from datasource.locations l 
left join datasource.departments d using (location_id)

select location_id, city, department_name
from datasource.locations l 
left join datasource.departments d using (location_id)

-- left join


-- right join

select location_id, city, department_name 
from datasource.locations l 
right join datasource.departments d using (location_id)


-- right join

--select employee_id, e.department_id, department_name, salary
--from datasource.employees e 
--join datasource.departments d using (department_id)


-- sub query

select department_name, avg(salary)
from(
	select employee_id, e.department_id, department_name, salary
	from datasource.employees e 
	join datasource.departments using (department_id)
) sub 
group by department_name

-- sub query

-- window function 

select employee_id, first_name, e.department_id, department_name, salary,
		avg(salary) over (partition by department_name) department_avg,
		avg(salary) over () company_avg
from datasource.employees e 
join datasource.departments d using (department_id)
order by employee_id 

select employee_id, first_name, e.department_id, department_name, salary,
		row_number() over (order by salary desc) rn,
		rank() over (order by salary desc) as rnk
from datasource.employees e 
join datasource.departments d using (department_id)



-- window function
