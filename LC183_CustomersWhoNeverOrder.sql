/*
183. Customers Who Never Order
Easy

SQL Schema
Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.

Table: Customers.

+----+-------+
| Id | Name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
Table: Orders.

+----+------------+
| Id | CustomerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
Using the above tables as example, return the following:

+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+

*/
# Write your MySQL query statement below
SELECT A.Name AS Customers FROM Customers AS A
WHERE A.Id NOT IN
(
SELECT B.CustomerId FROM Orders AS B
)

# Method 2
select a.Name as Customers from Customers as a
left join Orders as b
on a.Id = b.CustomerId
where b.CustomerId is null
