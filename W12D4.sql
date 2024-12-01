Create database ToysGroup;

Use ToysGroup;

Create table Product (
ProductID int,
ProductName varchar (255) not null,
Category varchar (255),
Price decimal (10, 2),
constraint PK_Product primary key (ProductID)
);

Create table Region (
RegionID int,
RegionName varchar (255) not null,
Country varchar (255),
constraint PK_Region primary key (RegionID)
);

Create table Sales (
SalesOrderNumber varchar (50) not null,
SalesOrderNumberLine int not null,
SaleDate date not null,
ProductID int not null,
RegionID int not null,
UnitPrice decimal (10, 2),
OrderQuantity int not null,
SalesAmount decimal (15,2) not null,
constraint PK_Sales primary key (SalesOrderNumber, SalesOrderNumberLine),
constraint FK_Sales_Product foreign key (ProductID) references Product(ProductID),
constraint FK_Sales_Region foreign key (RegionID) references Region(RegionID)
)
;

insert into Product (ProductID, ProductName, Category, Price)
values
(1, 'Super Racer Car', 'Toys & Games', 19.99),
(2, 'Lego Space Adventure', 'Building Blocks', 29.99),
(3, 'Dollhouse Dream', 'Dolls', 49.99),
(4, 'Robot Fighter', 'Action Figures', 24.99),
(5, 'Plush Teddy Bear', 'Stuffed Animals', 14.99),
(6, 'Puzzle Mania', 'Puzzles', 9.99),
(7, 'Action Hero Set', 'Action Figures', 39.99),
(8, 'Toy Train Set', 'Building Blocks', 59.99),
(9, 'Magic Coloring Book', 'Arts & Crafts', 12.99),
(10, 'Drone Flyer', 'Remote Control', 89.99),
(11, 'Funky Fashion Doll', 'Dolls', 19.99),
(12, 'Beach Ball Set', 'Outdoor Toys', 8.99),
(13, 'Mini Basketball Hoop', 'Sports Toys', 24.99),
(14, 'Remote Control Helicopter', 'Remote Control', 39.99),
(15, 'Jungle Safari Set', 'Playsets', 32.99),
(16, 'Toy Kitchen Set', 'Pretend Play', 49.99),
(17, 'Toy Dinosaur', 'Action Figures', 17.99),
(18, 'Kids Camera', 'Electronic Toys', 39.99),
(19, 'Interactive Learning Robot', 'Educational Toys', 69.99),
(20, 'Fidget Spinner Set', 'Fidget Toys', 5.99);

Insert into Region (RegionID, RegionName, Country)
values
(1, 'Northern Europe', 'Sweden'),
(2, 'Western Europe', 'France'),
(3, 'Southern Europe', 'Italy'),
(4, 'Eastern Europe', 'Poland'),
(5, 'Northern Europe', 'Norway'),
(6, 'Southern Europe', 'Spain'),
(7, 'Eastern Europe', 'Ukraine'),
(8, 'Western Europe', 'Germany'),
(9, 'Southern Europe', 'Portugal'),
(10, 'Eastern Europe', 'Czech Republic'),
(11, 'Western Europe', 'Belgium'),
(12, 'Northern Europe', 'Denmark'),
(13, 'Southern Europe', 'Greece'),
(14, 'Eastern Europe', 'Romania'),
(15, 'Northern Europe', 'Finland'),
(16, 'Western Europe', 'Netherlands'),
(17, 'Southern Europe', 'Croatia'),
(18, 'Eastern Europe', 'Hungary'),
(19, 'Southern Europe', 'Malta'),
(20, 'Northern Europe', 'Iceland');

Insert into Sales (SalesOrderNumber, SalesOrderNumberLine, SaleDate, ProductID, RegionID, UnitPrice, OrderQuantity, SalesAmount)
values
('SO1001', 1, '2021-03-12', 12, 1, 8.99, 5, 44.95),
('SO1002', 1, '2021-05-03', 5, 3, 14.99, 6, 89.94),
('SO1003', 1, '2021-06-04', 20, 15, 5.99, 6, 35.94),
('SO1004', 1, '2021-06-15', 18, 2, 39.99, 2, 79.98),
('SO1005', 1, '2021-07-01', 14, 5, 39.99, 3, 119.97),
('SO1006', 1, '2021-07-13', 7, 6, 39.99, 7, 279.93),
('SO1007', 1, '2021-08-05', 16, 12, 49.99, 3, 149.97),
('SO1008', 1, '2021-09-13', 7, 11, 39.99, 4, 159.96),
('SO1009', 1, '2021-09-18', 13, 9, 24.99, 6, 149.94),
('SO1010', 1, '2021-09-26', 14, 13, 39.99, 2, 79.98),
('SO1011', 1, '2021-10-30', 17, 17, 17.99, 4, 71.96),
('SO1012', 1, '2021-11-05', 9, 4, 12.99, 7, 90.93),
('SO1013', 1, '2021-11-18', 16, 9, 49.99, 2, 99.98),
('SO1014', 1, '2021-11-20', 17, 14, 17.99, 4, 71.96),
('SO1015', 1, '2021-12-25', 11, 20, 19.99, 5, 99.95),
('SO1016', 1, '2022-01-05', 13, 8, 24.99, 6, 149.94),
('SO1017', 1, '2022-01-12', 20, 16, 5.99, 10, 59.90),
('SO1018', 1, '2022-01-18', 16, 19, 59.99, 2, 119.98),
('SO1019', 1, '2022-01-23', 5, 3, 14.99, 6, 89.94),
('SO1020', 1, '2022-02-14', 19, 15, 69.99, 2, 139.98),
('SO1021', 1, '2022-02-20', 9, 1, 12.99, 6, 77.94),
('SO1022', 1, '2022-03-02', 8, 18, 59.99, 4, 239.96),
('SO1023', 1, '2022-03-14', 3, 14, 49.99, 5, 249.95),
('SO1024', 1, '2022-03-22', 4, 6, 24.99, 5, 124.95),
('SO1025', 1, '2022-04-04', 19, 4, 69.99, 3, 209.97),
('SO1026', 1, '2022-04-10', 15, 10, 32.99, 3, 98.97),
('SO1027', 1, '2022-05-18', 10, 13, 89.99, 2, 179.98),
('SO1028', 1, '2022-06-22', 6, 17, 9.99, 8, 79.92),
('SO1029', 1, '2022-06-28', 13, 16, 24.99, 3, 74.97),
('SO1030', 1, '2022-07-01', 14, 5, 39.99, 3, 119.97),
('SO1031', 1, '2022-07-05', 12, 7, 49.99, 3, 149.97),
('SO1032', 1, '2022-08-01', 9, 18, 12.99, 8, 103.92),
('SO1033', 1, '2022-08-05', 5, 6, 14.99, 7, 104.93),
('SO1034', 1, '2022-08-22', 16, 9, 49.99, 2, 99.98),
('SO1035', 1, '2022-09-10', 10, 6, 89.99, 4, 359.96),
('SO1036', 1, '2022-09-12', 5, 1, 14.99, 9, 134.91),
('SO1037', 1, '2022-10-08', 15, 12, 32.99, 4, 131.96),
('SO1038', 1, '2022-10-14', 12, 7, 49.99, 3, 149.97),
('SO1039', 1, '2022-10-20', 4, 3, 24.99, 4, 99.96),
('SO1040', 1, '2022-11-17', 7, 20, 39.99, 5, 199.95),
('SO1041', 1, '2022-12-17', 13, 8, 24.99, 6, 149.94),
('SO1042', 1, '2023-01-12', 7, 6, 39.99, 7, 279.93),
('SO1043', 1, '2023-01-18', 14, 5, 39.99, 4, 159.96),
('SO1044', 1, '2023-02-06', 3, 9, 49.99, 5, 249.95),
('SO1045', 1, '2023-03-22', 18, 4, 39.99, 4, 159.96),
('SO1046', 1, '2023-03-30', 17, 2, 17.99, 4, 71.96),
('SO1047', 1, '2023-04-25', 7, 7, 39.99, 3, 119.97),
('SO1048', 1, '2023-05-10', 20, 6, 5.99, 10, 59.90),
('SO1049', 1, '2023-05-17', 9, 3, 24.99, 6, 149.94),
('SO1050', 1, '2023-06-28', 8, 19, 59.99, 3, 179.97);


/* 1. Verificare che i campi definiti come PK siano univoci. */

select
count(productid)
from
product;

select
count(*) recordtotali,
count(productid) recordunivoci
from
product;

select
count(*) recordtotali,
count(regionid) recordunivoci
from
region;

select
count(*) recordtotali,
count(distinct salesordernumber, salesordernumberline) as recordfattura
from
sales
where salesordernumber is not null 
and salesordernumberline is not null;

/* 2. Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno.*/

select
-- s.productid idprodotto,
p.productname prodotto,
sum(s.salesamount) fatturato,
year (s.saledate) anno
from
sales s
left outer join
product p
on s.productid = p.productid
group by prodotto, anno
order by prodotto asc, anno desc; 

/* 3. Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente.*/

select
-- r.regionid idregione,
r.country stato,
sum(s.salesamount) fatturato,
year(s.saledate) anno
from
sales s
inner join 
region r 
on s.regionid = r.regionid
group by stato, anno
order by anno desc, fatturato desc;

/* 4. Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato?*/

select
-- p.productid,
p.productname prodotto,
sum(s.orderquantity) quantitavendute
from
product p
left outer join
sales s
on p.productid = s.productid
group by p.productname
order by quantitavendute desc;

/* 5. Rispondere alla seguente domanda: quali sono, se ci sono, i prodotti invenduti? 
Proponi due approcci risolutivi differenti*/

-- 1° approccio

select
p.productid idprodotto,
p.productname prodotto
from product p
left outer join 
sales s 
on p.productid = s.productid
where
s.productid is null;

-- 2° approccio

select
p.productid idprodotto,
p.productname prodotto
from
product p
where p.productid not in (
select
distinct productid
from sales
)
;

/* 6. Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita (la data di vendita più recente).*/

select
p.productid idprodotto,
p.productname prodotto,
max(s.saledate) ultimavendita
from 
product p
inner join
sales s 
on p.productid = s.productid
group by p.productid, p.productname
order by ultimavendita desc;
