select c.id,c.firstname, c.lastname,o.orderdate, o.shipdate,o.paiddate from Orders o INNER JOIN Customers c ON c.id=o.id order by o.paiddate ASC;