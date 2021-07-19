select distinct job_id from datasource.job_employee je 


select first_name, last_name, salary
from datasource.job_employee je 
where job_id = 'IT_PROG'

select * from datasource.job_employee je 
--where salary >= 10000 and salary <= 20000
where salary between 10000 and 20000

select department_name from datasource.departments 
where department_name ilike 'it%'

--kalau like case sensitif
select department_name from datasource.departments 
where department_name like 'it%'

select first_name, length(first_name), upper(first_name), lower(first_name), substring(first_name,1,2)
from datasource.job_employee je 

select first_name, last_name, email, concat(first_name,last_name,email)
from datasource.job_employee je 

--concat juga yang bawah

select first_name, last_name, first_name || ' ' || last_name 
from datasource.job_employee je 


select sum(salary), avg(salary), max(salary)
from datasource.job_employee je group by job_id


select first_name, salary
from datasource.job_employee je 
order by salary desc

select first_name, salary
from datasource.job_employee je limit 5
