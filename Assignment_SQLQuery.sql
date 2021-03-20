/*Excersise no. 1*/
--	1) Create table Salespeople with fieldssnum, sname, city, commission.

Create table Salespeople
(
	snum int Not Null,
	sname varchar(20),
	city varchar(10),
	commission float
	);

--	2) Orders table with fields onum, odate, snum, amt.

Create table Orders
(
  onum   int Not Null,
  odate  Date,
  snum   int,
  amt    float
  );

--	3) Customers table with fields cnum, cname, city, rating, snum

Create Table Customers
(
  cnum	int Not Null,
  cname	varchar(20),
  city	varchar(10),
  rating  int,
  snum int);

--	add primary key (snum);

Alter Table Salespeople ADD PRIMARY KEY (snum);

--	add primary key (onum);

Alter Table Orders ADD PRIMARY KEY (onum);


--	add foreign key (snum) references Salespeople(snum);

Alter table Orders add Foreign Key (snum) References Salespeople;

--	foreign key (snum) references Salespeople(snum);

Alter table Customers add Foreign Key (snum) References Salespeople;


/* Excersise no. 2 */

--	1)	i) Insert Records in Salespeople Table 

insert into Salespeople values(101,'Pushpak Chaudhari','Jalgaon',50000.00);
insert into Salespeople values(102,'Dinesh Jawale','Jalgaon',2000.00);
insert into Salespeople values(103,'Suyog Patil','Jalgaon',25000.00);
insert into Salespeople values(104,'Rohan Chaudhari','Jalgaon',37000.00);
insert into Salespeople values(105,'Pratik Kakani','Nashik',23200.00);
insert into Salespeople values(106,'Anam Chaudhary','Pune',17500.00);
insert into Salespeople values(107,'Pratiksha Lepse','Nagpur',20000.00);
insert into Salespeople values(108,'Akash Kulkarni','Solapur',50000.00);
insert into Salespeople values(109,'Parth Kulkarni','Dhude',50000.00);
insert into Salespeople values(110,'Harsh Markad','Pune',50000.00);

--		ii) Insert Records in Orders Table
insert into Orders values(111,'2008-07-06',2500,50000.00);
insert into Orders values(222,'2011-04-21',2200,35262.00);
insert into Orders values(333,'2006-04-01',1100,12502.00);
insert into Orders values(444,'2017-09-09',800,20362.00);
insert into Orders values(555,'2011-04-22',1536,9360.00);
insert into Orders values(666,'2007-01-11',3624,12503.00);
insert into Orders values(777,'2004-03-17',1325,7560.00);
insert into Orders values(888,'2002-12-07',4125,362025.00);
insert into Orders values(999,'2012-10-31',3225,42020.00);
insert into Orders values(1111,'2010-08-01',1420,36925.00);

--		iii) Insert Records in Customers Table 
insert into Customers values(101,'Vedant Belsare','Pune',70,102);
insert into Customers values(102,'Saheli Chakraborty','Mumbai',60,104);
insert into Customers values(103,'Pranav Chaudhari','Jalgaon',45,106);
insert into Customers values(104,'Debapriyam Chaudhuri','Mumbai',100,109);
insert into Customers values(105,'Pranali Jadhav','Mumbai',100,118);
insert into Customers values(106,'Riya Jhutani','Pune',100,122);
insert into Customers values(107,'Akim Kasmani','Pune',100,125);
insert into Customers values(108,'Kajal kesharwani','Mumbai',90,126);
insert into Customers values(109,'Akash Kulkarni','Solapur',75,128);
insert into Customers values(110,'Yash Sharma','Pune',100,153);

--	2) Display all the records with all sales peoples information.

SELECT snum,sname,city,commission FROM Assignment.dbo.Salespeople;

--	3) Display the details of fieldssname, commission.

SELECT sname,commission FROM Salespeople;

--	4) Display the odate, snum, onum, amt from orders table.

SELECT odate, snum, onum, amt  FROM Assignment.dbo.Orders;

--	5) Display snum from orders table without duplications.

SELECT DISTINCT snum FROM Orders;

--	6) Display name & city of salesman where city is “Pune”.

SELECT sname,city FROM Salespeople where city='Pune';

--	7) Display all details of customer where rating is 100.

SELECT * FROM Customers where rating=100;

--	8) Display all details from customer table where salespersons number is 1.

SELECT * FROM Customers where snum=101;

--	9) Display the numbers of sales persons, with orders currently in the orders table without any repeats.

SELECT COUNT(DISTINCT snum) FROM Orders;

--	10) Display all customers where rating is more than 200.

SELECT * FROM Customers where rating>200;

--	11) Display all customers where city is ‘Mumbai’ rating is more than 100.

SELECT * FROM Customers where city='Mumbai' and rating>100;

--	12) Display all customers where city is either ‘Pune’ or ‘Mumbai’.

SELECT * FROM Customers where city='Mumbai' or city='Pune'; 

--	13) List all customers not having city ‘Pune’ or rating more than 100

SELECT * FROM Customers where not city = 'pune' or rating>100;

--	14) List all orders between order dates 2008-Jan-21 to 2020-Mar-21.

SELECT odate FROM Orders where odate BETWEEN '2008-01-21' and '2020-03-21';

--	15) Display all orders more that 1000 amt.

SELECT amt FROM Orders where amt>1000;

--	16) Display names & cities of all salespeople in ‘Pune’ with a commission above 10000.

SELECT sname,city FROM Salespeople where (city='Pune') and (commission>10000);

--	17) Display all customers excluding those, with rating less than equal to 100,unless they are located in ‘Pune’.

SELECT * FROM Customers WHERE (rating <=100) OR city='Pune';

--	18) Display all sales persons names starting with character ‘S’.

SELECT sname from Salespeople where sname Like 'S%';

--	19) Display all sales persons names starting with character ‘S’, the 4th characteris ‘A’ & the rest of characters will be any.

SELECT sname from Salespeople where sname Like 'S__a%';

--	20) Find all records from customers table where city is not known i.e. NULL.

SELECT * from Salespeople where city is NULL;

--	21) Display all the customers names begins with a letter A to G.

SELECT sname from Salespeople where sname Like '[A-G]%';

--	22) Assume each salesperson has a 12% commission on order amt. Displayorderno, snum, commission for that order.

SELECT onum,snum,amt,(amt*12)/100 commision FROM orders;

/*	Excersise no. 3 */

--	1) Display all the customers records, arranged on name.

SELECT * FROM Customers ORDER BY cname;

--	2) Display all customers records arranged on rating in desc Order.

SELECT * FROM Customers ORDER BY rating ASC;

--	3) Display all sales persons records arranged on snum.

SELECT * FROM Customers ORDER BY rating ASC;

--	4) Display the count for total number of customers in customers table.

SELECT COUNT(cnum) FROM Customers;

--	5) Display the count of snum in order table without duplication of snum.

SELECT DISTINCT COUNT(snum) FROM Salespeople;

--	6) Display the counts of all orders for Feb11.

SELECT COUNT(onum) FROM Orders WHERE odate between '2008-02-01' and '2008-29-01';

--	7) Display the count of different non-NULL city values in the customers table.

SELECT COUNT(city) from Customers where city is not NULL;

--	8) Display the maximum outstanding amount as blnc+amt.

SELECT MAX(amt) from orders;

--	9) Display the minimum rating within customers table.

SELECT MIN(rating) from customers;

--	10) Display average of amt.

SELECT AVG(amt) from orders;

--	11) Display sales persons number wise maximum amt from order table.

SELECT snum,amt from orders where snum in (select MAX(snum) from orders);

--	12) Display the largest order taken by each salesperson on each date.

SELECT * from salespeople where snum in(select snum from orders where amt in (select MAX(amt) from orders));

--	13) Display the details of maximum orders above 3000.

SELECT * from orders where amt in (select max(amt) from orders where amt>3000);

--	14) Display details of orders order number & date wise.

SELECT * from orders ORDER BY onum, odate;

--	15) Display customers highest ratings in each city.

SELECT city,rating from customers where rating in (select MAX(rating) from customers);

--	16) Write a query that totals the orders for each day & places the results in descending order.

SELECT amt from orders ORDER BY amt desc;

/*	Exercise no 4 */
--	1) Add a column curr_bal in orders table for current balance

ALTER TABLE orders ADD curr_bal int;

--	2) Increase commission of all sales persons by 200.

update salespeople set commission=commission+200;

--	3) Delete all orders where odate is less than 31-jan-2013.

DELETE FROM orders WHERE odate<'1998/10/02';

/*	Excersise no. 5 */
--	1) Display names of all customers matched with the salespeople servingthem.

SELECT customers.cname, salespeople.sname FROM customers,salespeople WHERE customers.snum=salespeople.snum;

--	2) Find all orders by customers not located in same cities as their salespersons.

select orders.onum from orders where orders.snum in (select snum from customers where customers.snum in (select snum from salespeople where customers.city!=salespeople.city));

--	3) Display each order number followed by the name of customer who made it.

select orders.onum,customers.cname from orders,customers where customers.snum=orders.snum;

--	4) Calculate the amount of salespersons commissions on each order by acustomer with a rating above 100.

select salespeople.commission from salespeople where salespeople.snum in (select orders.snum from orders where orders.snum in (select customers.snum from customers where rating>100));

--	5) Display the pairs of salespeople who are living in the same city. Excludecombinations of sales people with themselves as well as duplicate rowswith the order reversed.

select * from salespeople where city LIKE 'Something%';

--	6) Display the names & cities of all customers with same rating as ‘nop’.

SELECT cname, city FROM customers WHERE rating = (SELECT rating FROM customers WHERE cname='nop');

/*	Excersise no 6	*/
--	1) Write a query that uses a sub-query to obtain all orders for the customernamed ‘gopal’. Assume you do not know the customer number.

select orders.onum from orders where orders.snum in (select salespeople.snum from salespeople where salespeople.snum in (select customers.snum from customers where customers.cname='gopal'));

--	2) Write a query that produces the names & ratings of all customers who haveabove-average orders.

SELECT cname, rating FROM customers WHERE cnum IN (SELECT cnum FROM orders WHERE amt > (SELECT avg(amt) FROM orders));

--	3) Write a query that selects the total amt in orders for each salesperson forwhom this total is greater than the amount of the largest order in table.*/

SELECT sum(orders.amt) from orders where orders.snum in (select salespeople.snum from salespeople where salespeople.snum in (select orders.snum from orders GROUP BY orders.snum having sum(orders.amt)>max(orders.amt)));


/*	Exercise no 7	*/
--	1) Create a union of two queries that shows the names, cities and ratings of all customers. Those with a rating of 200 or greater will also have ratings “high rating”, while the others will have the words “low rating”.

SELECT cname, city, rating, 'High Rating' FROM customers WHERE rating >= 8 UNION (SELECT cname, city, rating, 'Low Rating' FROM customers WHERE rating < 8);


--	2) Write a command that produces the name & number of each salesperson & each customer with more than one current order. Put results in alphabetical order.

SELECT cnum,  cname
	FROM customers a
	WHERE 1<
		(SELECT COUNT (*)
		   FROM orders b
		   WHERE a.snum = b.snum)
UNION
(SELECT snum, sname
	FROM salespeople a
	WHERE 1 <
		(SELECT COUNT (*)
		 FROM orders b
		 WHERE  a.snum = b.snum))
ORDER BY 2


/*	Exercise no 8	*/
--	1) Create an index that would permit each salesperson to retrieve his or her orders grouped by date quickly.

CREATE INDEX d_order ON orders(odate);

--	2) Create a view that shows all of the customers who have highest ratings.

CREATE VIEW highrating AS SELECT * FROM customers WHERE rating =(SELECT MAX (rating) FROM customers);
select * from highrating


--	3) Create a view that shows number of salespeople in each city.

CREATE VIEW citynum AS SELECT city, count(DISTINCT snum) "NO. OF SALES PEOPLE"FROM salespeople GROUP BY city;
select * from citynum

