select * from category;
select * from custcustdemographics;
select * from customer;
select * from customerdemographics;
select * from employee;
select * from employeeterritory; 
select * from orderdetail;
select * from product;
select * from region;
select * from salesorder;
select * from shipper;
select * from supplier;
select * from territory;

select emp.employeeId,  emp.lastname, emp.firstname, emp.title, emp.titleOfCourtesy, emp.birthDate, emp.hireDate, emp.address,emp.city,emp.region, emp.postalCode,emp.country, emp.phone,
empt.employeeId,empt.territoryId
from employee as emp
join employeeterritory as empt
	on emp.employeeId = empt.employeeId;