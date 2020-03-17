#### Creating a data base


CREATE DATABASE  damahstore;

USE damahstore;

use damahstore;

#### Creating tables

CREATE TABLE `ReturnX` (
  `ReturnID` integer,
  `OrderID` integer,
  `ProductID` integer,
  `Quantity` integer,
  `Return_Date` Date,
  PRIMARY KEY (`ReturnID`),
  KEY `FK` (`OrderID`, `ProductID`)
);

CREATE TABLE `OrderX` (
  `OrderID` integer,
  `CustomerID` integer,
  `Order_Date` date,
  `PaymentID` integer,
  `LocationID` integer,
  PRIMARY KEY (`OrderID`),
  KEY `FK` (`CustomerID`, `PaymentID`, `LocationID`)
);

CREATE TABLE `Payment` (
  `PaymentTypeID` integer,
  `Method` varchar(20),
  PRIMARY KEY (`PaymentTypeID`)
);

CREATE TABLE `Customer` (
  `CustomerID` integer,
  `Fname` varchar(20),
  `Lname` varchar(20),
  `Address` varchar(50),
  `LocationID` integer,
  `Telephone` varchar(14),
  PRIMARY KEY (`CustomerID`),
  KEY `FK` (`LocationID`)
);

CREATE TABLE `ProductOrder` (
  `ProductOrderID` integer,
  `OrderID` integer,
  `ProductID` integer,
  `Quantity` integer,
  PRIMARY KEY (`ProductOrderID`),
  KEY `PK,FK` (`OrderID`, `ProductID`)
);

CREATE TABLE `Location` (
  `LocationID` integer,
  `City` varchar(50),
  `State` varchar(50),
  PRIMARY KEY (`LocationID`)
);

CREATE TABLE `Supplier` (
  `SupplierID` integer,
  `Name` varchar(50),
  `Address` varchar(50),
  `LocationID` integer,
  `Telephone` varchar(14),
  PRIMARY KEY (`SupplierID`),
  KEY `FK` (`LocationID`)
);
CREATE TABLE `Product` (
  `ProductID` integer,
  `SupplierID` integer,
  `Product` varchar(50),
  `UnityPrice` numeric,
  `Quantity` integer,
  `Profit` numeric,
  `VAT` numeric,
  PRIMARY KEY (`ProductID`),
  KEY `FK` (`SupplierID`)
);

#### Inserting values

insert into ReturnX	(	ReturnID	,	OrderID	,	ProductID	,	Quantity	,	Return_Date	)	values	(	1001	, 	1001	, 	1001	,	2	,'	2019-01-28'	);
insert into ReturnX	(	ReturnID	,	OrderID	,	ProductID	,	Quantity	,	Return_Date	)	values	(	1002	, 	1008	, 	1008	,	5	,'	2019-04-26'	);
insert into ReturnX	(	ReturnID	,	OrderID	,	ProductID	,	Quantity	,	Return_Date	)	values	(	1003	, 	1008	, 	1008	,	5	,'	2019-04-26'	);

insert into Location	(	LocationID	,	City	,	State	)	values	(	1	,	"Noble"	,	"OK"	);
insert into Location	(	LocationID	,	City	,	State	)	values	(	2	,	"Chicago"	,	"IL"	);
insert into Location	(	LocationID	,	City	,	State	)	values	(	3	,	"West-Lafayette"	,	"IN"	);
insert into Location	(	LocationID	,	City	,	State	)	values	(	4	,	"Madison"	,	"WI"	);
insert into Location	(	LocationID	,	City	,	State	)	values	(	5	,	"Des Moines"	,	"IA"	);

insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1001	,	1001	,	1001	,	16	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1002	,	1002	,	1002	,	3	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1003	,	1003	,	1003	,	5	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1004	,	1004	,	1004	,	10	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1005	,	1005	,	1005	,	12	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1006	,	1006	,	1006	,	17	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1007	,	1007	,	1007	,	16	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1008	,	1008	,	1008	,	12	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1009	,	1009	,	1009	,	6	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1010	,	1010	,	1010	,	6	);

insert into OrderX	(	OrderID	,	CustomerID	,	Order_Date	,	PaymentID	,	LocationID	)	values	(	1001	,	1001	,'	2019-01-26'	,	1	,	1	);
insert into OrderX	(	OrderID	,	CustomerID	,	Order_Date	,	PaymentID	,	LocationID	)	values	(	1002	,	1002	,'	2019-02-06'	,	2	,	2	);
insert into OrderX	(	OrderID	,	CustomerID	,	Order_Date	,	PaymentID	,	LocationID	)	values	(	1003	,	1003	,'	2018-09-12'	,	3	,	3	);
insert into OrderX	(	OrderID	,	CustomerID	,	Order_Date	,	PaymentID	,	LocationID	)	values	(	1004	,	1004	,'	2019-01-19'	,	4	,	1	);
insert into OrderX	(	OrderID	,	CustomerID	,	Order_Date	,	PaymentID	,	LocationID	)	values	(	1005	,	1005	,'	2018-08-25'	,	5	,	2	);
insert into OrderX	(	OrderID	,	CustomerID	,	Order_Date	,	PaymentID	,	LocationID	)	values	(	1006	,	1006	,'	2018-11-25'	,	1	,	3	);
insert into OrderX	(	OrderID	,	CustomerID	,	Order_Date	,	PaymentID	,	LocationID	)	values	(	1007	,	1007	,'	2019-01-16'	,	2	,	1	);
insert into OrderX	(	OrderID	,	CustomerID	,	Order_Date	,	PaymentID	,	LocationID	)	values	(	1008	,	1008	,'	2019-04-24'	,	3	,	2	);
insert into OrderX	(	OrderID	,	CustomerID	,	Order_Date	,	PaymentID	,	LocationID	)	values	(	1009	,	1009	,'	2018-09-11'	,	4	,	3	);
insert into OrderX	(	OrderID	,	CustomerID	,	Order_Date	,	PaymentID	,	LocationID	)	values	(	1010	,	1010	,'	2019-02-12'	,	5	,	1	);
insert into OrderX	(	OrderID	,	CustomerID	,	Order_Date	,	PaymentID	,	LocationID	)	values	(	1011	,	1006	,'	2019-02-12'	,	5	,	1	);

insert into Payment	(	PaymentTypeID	,	Method	)	values	(	1	,'	visa	 ');
insert into Payment	(	PaymentTypeID	,	Method	)	values	(	2	,'	visa electron	 ');
insert into Payment	(	PaymentTypeID	,	Method	)	values	(	3	,'	maestro	 ');
insert into Payment	(	PaymentTypeID	,	Method	)	values	(	4	,'	mastercard	 ');
insert into Payment	(	PaymentTypeID	,	Method	)	values	(	5	,'	cash	 ');

insert into Product	(	ProductID	,	SupplierID	,	Product	,	UnityPrice	,	Quantity	,	Profit	,	Vat) values	(	1001		,	1001	,'	Wine - White'		,	18	,	5	,	36	,	0.15	);
insert into Product	(	ProductID	,	SupplierID	,	Product	,	UnityPrice	,	Quantity	,	Profit	,	Vat) values	(	1002		,	1002	,'	Dried Apple'		,	5	,	18	,	10	,	0.15	);
insert into Product	(	ProductID	,	SupplierID	,	Product	,	UnityPrice	,	Quantity	,	Profit	,	Vat) values	(	1003		,	1003	,'	Sauce - Plum'		,	7	,	14	,	14	,	0.15	);
insert into Product	(	ProductID	,	SupplierID	,	Product	,	UnityPrice	,	Quantity	,	Profit	,	Vat) values	(	1004		,	1004	,'	Wine - Two Oceans Cabernet'		,	12	,	12	,	24	,	0.15	);
insert into Product	(	ProductID	,	SupplierID	,	Product	,	UnityPrice	,	Quantity	,	Profit	,	Vat) values	(	1005		,	1005	,'	Muffin Orange Individual'		,	14	,	6	,	28	,	0.15	);
insert into Product	(	ProductID	,	SupplierID	,	Product	,	UnityPrice	,	Quantity	,	Profit	,	Vat) values	(	1006		,	1006	,'	Glass Clear 7 Oz Xl'		,	19	,	13	,	38	,	0.15	);
insert into Product	(	ProductID	,	SupplierID	,	Product	,	UnityPrice	,	Quantity	,	Profit	,	Vat) values	(	1007		,	1007	,'	Cheese - Le Cru Du Clocher'		,	18	,	13	,	36	,	0.15	);
insert into Product	(	ProductID	,	SupplierID	,	Product	,	UnityPrice	,	Quantity	,	Profit	,	Vat) values	(	1008		,	1008	,'	Pork - Shoulder'		,	14	,	10	,	28	,	0.15	);
insert into Product	(	ProductID	,	SupplierID	,	Product	,	UnityPrice	,	Quantity	,	Profit	,	Vat) values	(	1009		,	1009	,'	Raspberries - Fresh'		,	8	,	8	,	16	,	0.15	);
insert into Product	(	ProductID	,	SupplierID	,	Product	,	UnityPrice	,	Quantity	,	Profit	,	Vat) values	(	1010		,	1010	,'	Gelatine Leaves - Bulk'		,	8	,	5	,	16	,	0.15	);
insert into Product	(	ProductID	,	SupplierID	,	Product	,	UnityPrice	,	Quantity	,	Profit	,	Vat) values	(	1011		,	1008	,'	Chicken - Breast'		,	8	,	5	,	16	,	0.15	);

insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1011	,	1001	,	1001	,	2	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1012	,	1002	,	1002	,	15	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1013	,	1003	,	1003	,	11	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1014	,	1004	,	1004	,	9	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1015	,	1005	,	1005	,	3	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1016	,	1006	,	1006	,	10	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1017	,	1007	,	1007	,	10	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1018	,	1008	,	1008	,	7	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1019	,	1009	,	1009	,	5	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1020	,	1010	,	1010	,	2	);
insert into ProductOrder	(	ProductOrderID	,	OrderID	,	ProductID	,	Quantity	)	values	(	1021	,	1011	,	1002	,	2	);

insert into Supplier	(	SupplierID	,	Name	,	Address	,	LocationID	,	Telephone	)	values	(	1001		,'	Gabvine'	,'	13 Main Place'		,	1	,'	938-587-0771'	);
insert into Supplier	(	SupplierID	,	Name	,	Address	,	LocationID	,	Telephone	)	values	(	1002		,'	Realmix'	,'	1 Westridge Point'		,	2	,'	291-374-9897'	);
insert into Supplier	(	SupplierID	,	Name	,	Address	,	LocationID	,	Telephone	)	values	(	1003		,'	Tagcat'	,'	74 Reindahl Avenue'		,	3	,'	526-349-7315'	);
insert into Supplier	(	SupplierID	,	Name	,	Address	,	LocationID	,	Telephone	)	values	(	1004		,'	Blognation'	,'	79 Mariners Cove Parkway'		,	4	,'	903-551-6160'	);
insert into Supplier	(	SupplierID	,	Name	,	Address	,	LocationID	,	Telephone	)	values	(	1005		,'	Yamia'	,'	1 Stephen Pass'		,	5	,'	349-707-9872'	);
insert into Supplier	(	SupplierID	,	Name	,	Address	,	LocationID	,	Telephone	)	values	(	1006		,'	Jabbersphere'	,'	3500 Mayer Park'		,	1	,'	744-854-7232'	);
insert into Supplier	(	SupplierID	,	Name	,	Address	,	LocationID	,	Telephone	)	values	(	1007		,'	Abatz'	,'	3 Sheridan Place'		,	2	,'	699-745-4209'	);
insert into Supplier	(	SupplierID	,	Name	,	Address	,	LocationID	,	Telephone	)	values	(	1008		,'	Twitternation'	,'	6482 Hermina Court'		,	3	,'	190-195-5444'	);
insert into Supplier	(	SupplierID	,	Name	,	Address	,	LocationID	,	Telephone	)	values	(	1009		,'	Muxo'	,'	88312 Utah Way'		,	4	,'	777-761-5201'	);
insert into Supplier	(	SupplierID	,	Name	,	Address	,	LocationID	,	Telephone	)	values	(	1010		,'	Skiptube'	,'	99 Eggendart Hill'		,	5	,'	843-847-3960'	);


insert into Customer	(	CustomerID	,	Fname	,	Lname	,	Address	,	LocationID	,	Telephone	) 	values	(	1001	,'	Myrvyn'	,'	Bernhardi'	,'	3263 Magdeline Parkway'	,	1	,'	541-162-0544'	);
insert into Customer	(	CustomerID	,	Fname	,	Lname	,	Address	,	LocationID	,	Telephone	) 	values	(	1002	,'	Meggy'	,'	Audry'	,'	5 Birchwood Way'	,	2	,'	171-840-7909'	);
insert into Customer	(	CustomerID	,	Fname	,	Lname	,	Address	,	LocationID	,	Telephone	) 	values	(	1003	,'	Sandra'	,'	Wyllie'	,'	79 Harper Junction'	,	3	,'	601-813-2569'	);
insert into Customer	(	CustomerID	,	Fname	,	Lname	,	Address	,	LocationID	,	Telephone	) 	values	(	1004	,'	Oswald'	,'	Kolis'	,'	997 Manley Lane'	,	4	,'	556-330-5831'	);
insert into Customer	(	CustomerID	,	Fname	,	Lname	,	Address	,	LocationID	,	Telephone	) 	values	(	1005	,'	Madelaine'	,'	Duckels'	,'	414 Graceland Point'	,	5	,'	997-623-7223'	);
insert into Customer	(	CustomerID	,	Fname	,	Lname	,	Address	,	LocationID	,	Telephone	) 	values	(	1006	,'	Aleece'	,'	Lidstone'	,'	58432 Hudson Point'	,	1	,'	228-529-1651'	);
insert into Customer	(	CustomerID	,	Fname	,	Lname	,	Address	,	LocationID	,	Telephone	) 	values	(	1007	,'	Anabal'	,'	Kevlin'	,'	6 Cambridge Avenue'	,	2	,'	957-303-0012'	);
insert into Customer	(	CustomerID	,	Fname	,	Lname	,	Address	,	LocationID	,	Telephone	) 	values	(	1008	,'	Tracy'	,'	Beneyto'	,'	17929 Lotheville Circle'	,	3	,'	632-788-5479'	);
insert into Customer	(	CustomerID	,	Fname	,	Lname	,	Address	,	LocationID	,	Telephone	) 	values	(	1009	,'	Lisetta'	,'	Pantlin'	,'	857 Sachtjen Plaza'	,	4	,'	235-301-4622'	);
insert into Customer	(	CustomerID	,	Fname	,	Lname	,	Address	,	LocationID	,	Telephone	) 	values	(	1010	,'	Oberon'	,'	Fallanche'	,'	900 Marquette Crossing'	,	5	,'	520-941-9740'	);

#### Create a view ("table") to retrieve orders in a specific date range

create view order_transaction as
select * from orderx
where order_date between "2019-01-26" and "2019-02-02";

#### Create a trigger to update product quantity after an order

CREATE TRIGGER after_product_sale
AFTER INSERT ON ProductOrder
FOR EACH ROW

 UPDATE  Product  SET Quantity = Quantity - NEW.Quantity
    WHERE ProductID = NEW.ProductID;

select * from Product
WHERE productid = 1001;


insert into ProductOrder (ProductOrderID, OrderID, ProductID, Quantity)
value (1045, 1012, 1001, 50) ;

#### Create a view ("table") to summarize product quantity by supplier

Create view supplier_qtd as
select
	sp.Name as supplier_name,
	sum(pd.quantity) as total_qtd
from product as pd
	Inner join Supplier as sp on pd.SupplierID = sp.SupplierID
group by sp.Name;

#### Create a procedure to call total sales by year

#total sales
DELIMITER //
 CREATE PROCEDURE total_year_sales ()
 BEGIN
select
 product
, month(ox.order_date) as month
, year(ox.order_date) as year
, sum(profit * po.quantity) as total
from product  as pd inner join productorder as po on
pd.productid = po.productid
inner join orderx as ox on
po.orderID = ox.orderID
where year(ox.order_date) = 2019
group by month(ox.order_date), product , year(ox.order_date) with rollup;
END//
DELIMITER ;

call total_year_sales ();

#### Create a procedure to call total sales by  date (year and month) and by product

DELIMITER //
 CREATE PROCEDURE detail_year_sales ()
 BEGIN
select
 product
, month(ox.order_date) as month
, year(ox.order_date) as year
, profit * po.quantity as total
from product  as pd inner join productorder as po on
pd.productid = po.productid
inner join orderx as ox on
po.orderID = ox.orderID
where year(ox.order_date) = 2019;
END//
DELIMITER ;

call detail_year_sales ();

#### Create a view ("table") to summarize monthly sales

CREATE VIEW sales_month_2019 AS
    SELECT
        EXTRACT(MONTH FROM ox.order_date) AS Month_Sold,
		    EXTRACT(YEAR FROM ox.order_date) AS Year_Sold,
        SUM(po.quantity) AS Qty_Sold,
        SUM(profit) AS Sales_€,
        SUM(po.quantity*profit) AS "Sales_€_Qty_Sold"
    from product  as pd inner join productorder as po on
pd.productid = po.productid
inner join orderx as ox on
po.orderID = ox.orderID
where year(ox.order_date) = 2019
group by month(ox.order_date), Month_Sold, EXTRACT(YEAR FROM ox.order_date);

#### Create a view ("table") to summarize sales in a given year

create  view sales_total_2019 as
SELECT
		year(ox.order_date) as Year_Sold,
		SUM(po.quantity*profit) AS "TOTAL_€_2019"
  from product  as pd inner join productorder as po on
pd.productid = po.productid
inner join orderx as ox on
po.orderID = ox.orderID
where year(ox.order_date) = 2019
group by YEAR (ox.order_date);

#### Create a view ("table") to summarize sales % by month

create view perc_sales_month_2019 as
select
month_sold
, s_m.Sales_€_Qty_Sold
, s_t.TOTAL_€_2019
,((Sales_€_Qty_Sold/s_t.TOTAL_€_2019)*100) as "%_sales_month"
from sales_month_2019 s_m
inner join sales_total_2019 as s_t on
s_m.Year_Sold = s_t.Year_Sold;

select * from perc_sales_month_2019;

#### Create a procedure to call order info by customer

DELIMITER //
 CREATE PROCEDURE  order_by_cutomer ()
 BEGIN
select orderID, ct.customerID, loc.state
from orderx  as ox inner join customer as ct on
ox.customerID = ct.customerID
inner join location as loc on
ct.locationID = loc.locationID
order by loc.state asc;
END//
DELIMITER ;

call order_by_cutomer ();

#### Create a procedure to call return items info by month

DELIMITER //
	CREATE PROCEDURE	return_by_month ()
BEGIN
select
month(return_date) as month_return
,productID, sum(quantity) as total_quantity
from returnx
group by month(return_date), productID;
END //
DELIMITER ;


call return_by_month ();

#### Create a procedure to call customer details info by order number

DELIMITER //
 CREATE PROCEDURE customer_order_details(in customer_number integer(4))
BEGIN
select
ct.customerID, fname, lname, loc.state, ox.order_date, po.orderID, pd.product, po.quantity
from customer as ct inner join orderx as ox on
ct.customerID = ox.customerID
inner join productOrder as po on
ox.orderID = po.orderID
inner join Location as loc on
ct.locationID = loc.locationID
inner join Product as pd on
po.productID = pd.productID
    where customer_number = ct.customerID;
END//
DELIMITER ;

call customer_order_details(1002);

#### Create a trigger update a table for each customer info update

CREATE TABLE `Customer_historic` (
  `CustomerID` integer,
  `Fname` varchar(20),
  `Lname` varchar(20),
  `Address` varchar(50),
  `LocationID` integer,
  `Telephone` varchar(14),
   changedon datetime DEFAULT NULL,
  action varchar (50) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `FK` (`LocationID`)
);

DELIMITER $$
CREATE TRIGGER before_customer_update
    BEFORE UPDATE ON customer
    FOR EACH ROW BEGIN
	INSERT INTO Customer_historic
    SET action = 'update',
    CustomerID = OLD.CustomerID,
     Fname = OLD.Fname,
     Address = OLD.Address,
     LocationID = OLD.LocationID,
     Telephone = OLD.Telephone,
        changedon = NOW();
END$$
DELIMITER ;


update Customer set Fname = "SILVA"
where CustomerID = 1001;

select * from Customer_historic;

select * from Customer;

#### Create a view ("table") that calculates profit taking in account products returned

Create view sales_return_profit as
select
 month(ox.order_date) as month
, year(ox.order_date) as year
, sum(profit * po.quantity) as sales_by_month_$
, sum(profit*rx.quantity) as return_month_$
, sum((profit * po.quantity) - ((profit*(ifnull('rx*quantity', 0))) + ((po.quantity-(ifnull('rx*quantity', 0)))*(pd.unityprice)))) as profit_$
from product  as pd inner join productorder as po on
pd.productid = po.productid
inner join orderx as ox on
po.orderID = ox.orderID
left join returnx as rx on
ox.orderID = rx.orderID
where year(ox.order_date) = 2019
group by month(ox.order_date), year(ox.order_date)
order by 1;
