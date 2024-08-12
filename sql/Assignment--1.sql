###
1. Which SQL command is used to retrieve data from a database?

# B) SELECT

2. What does the WHERE clause do in an SQL query?

# B) Filters records based on a condition


3. Which of the following is a valid SQL keyword used to remove duplicates from a result
set?

# B) DISTINCT

4. What is the purpose of the JOIN clause in SQL?

# B) To combine rows from two or more tables based on a related column

5. Which SQL function is used to count the number of rows in a result set?
# A) COUNT()

6. What is the default order of the ORDER BY clause in SQL?
# A) Ascending (ASC)

7. Which of the following SQL clauses is used to group rows that have the same values?
# A) GROUP BY

8. In SQL, which of the following commands is used to remove a table and all of its data?
# A) DROP TABLE

9. Which SQL command is used to add a new column to an existing table?

# D) ALTER TABLE

10. What does the HAVING clause do in an SQL query?

# B) Filters records based on aggregated conditions
####1. Write a query to retrieve all records from the employees table where the salary is
greater than $50,000.
#Select * from employees where salary > $50,000

#2. How would you write a query to find the total number of employees in the employees
table?
# Select count(*)  total number of employees from employees.

#3. Write a query to retrieve the first name and last name of employees, along with the
department name they belong to, assuming you have an employees table and a
departments table with a foreign key relationship.
#Select first_name,last_name,department_name 
from employees as e innerjoin department as d
ON e.dept_id=d.dept_id;

#4. How would you write a query to update the salary of an employee named 'John Doe' to
$60,000?#Update employees SET salary=60000WHERE name='John_Doe";#5. Write a query to delete all records from the orders table where the order date is older
than one year.
# delete from order WHere order_date<current_order_date;

#6. How would you write a query to find the highest salary in the employees table?
# SELECT max(salary) as Highest_Salary from employees;

#7. Write a query to return the top 5 highest-paid employees from the employees table.
# Select first_name from employees
ORDER BY salary DESC
LIMIT 5;

#8. How would you write a query to find the average salary of employees in each
department?
#Select dept_name, avg(salary) as average_salary
from employees as e inner_join departments as d
ON e.dept_id=d.dept_id
GROUP BY dept_id;

#9. Write a query to return a list of employees who have the same last name, sorted by
their first names.
#


#10. How would you write a query to retrieve the total sales amount for each customer
from the sales table, assuming there's a customer_id column?
Select sum(sales) as total_sales_amount
from sales
group by customer_id;