select c.name as Customers from Customers c where not exists(select 1 from Orders o Where o.customerId = c.id)
