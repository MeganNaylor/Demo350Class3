/* Problem  3   Solution     */ 
/* Author:      Megan Naylor */ 

select first_name, last_name
from employees e
inner join jobs j
    on e.job_id = j.job_id
where job_title ~ '.*Manager.*'

/* Problem  6   Solution     */ 
/* Author:      Megan Naylor */ 

select avg(salary)
from employees e
inner join departments d
    on e.department_id = d.department_id
inner join locations l
    on d.location_id = l.location_id
inner join countries c
    on l.country_id = c.country_id
where country_name ~ '.*Germany.*'

/* Problem  9   Solution     */ 
/* Author:      Megan Naylor */ 

select sum(salary)
from departments d
inner join employees e
    on e.department_id = d.department_id
where department_name ~ 'Finance'

/* Problem  12  Solution     */ 
/* Author:      Megan Naylor */ 

select distinct employee_id, last_name
from employees e
inner join departments d
    on d.department_id = e.department_id
inner join locations l
    on l.location_id = d.location_id
inner join countries c
    on l.country_id = c.country_id
where salary > 9000 or country_name ~ 'Germany'