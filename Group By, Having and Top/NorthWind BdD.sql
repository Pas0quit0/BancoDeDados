Select country, city, count(*)
from Customers
group by country, city
order by country

/* ------------------------- */

Select country, city, count(*)
From customers
Group By country, city
Having count(*) > 2
Order By country

/* ------------------------- */

Select  pr.productname as produto,
		sum(quantity) as QuantidadeTotal

From Products pr
Inner Join [Order Details] od
	on od.ProductID = pr.ProductID

Group By ProductName
Order By sum(quantity) desc

/* ------------------------- */

Select (em.firstname + ' ' + em.lastname) as empregado,
		count(os.orderid) as pedidos

From orders os
Inner Join Employees em
	On em.EmployeeID = os.EmployeeID

Group By em.FirstName + ' ' + em.LastName
Order By count(os.orderid) desc

/* ------------------------- */

Select (em.firstname + ' ' + em.lastname) as empregado,
		count(os.orderid) as pedidos

From orders os
Inner Join Employees em
	On em.EmployeeID = os.EmployeeID

Group By em.FirstName + ' ' + em.LastName

Having count(os.OrderID) > 50

Order By count(os.orderid) desc

/* ------------------------- */

Select Top(10) *
from Customers
Order By CompanyName 

/* ---------- EXERCÍCIOS -------------- */

/* -----------Ex. 1-------------- */

Select	top(5)
		pr.productname as produto,
		sum(quantity) as QuantidadeTotal

From Products pr
Inner Join [Order Details] od
	on od.ProductID = pr.ProductID

Group By ProductName
Order By sum(quantity) desc

/* -----------Ex. 2-------------- */



