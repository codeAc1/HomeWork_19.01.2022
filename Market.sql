--Market adli Database yaradin
	Create Database Market
	Use Market
--Icinde Products Table-i yaradin.Product table-inda Id,Name,Price columnlari olsun
	Create Table Products
	(
		Id int,
		Name nvarchar(30),
		Price money
	)
-- Products table-na yeni bir Brand columnu elave edin
	Alter Table Products Add Brand nvarchar(15)

-- Products table-a value-lar insert edin (10-15 dene product datasi kifayetdir)
	insert into Products(Id,Name,Price,Brand)
	values  (1,'Corek',0.65,'Bakixanov'),
		    (2,'Günəbaxan yağı',16,'Oleos'),
			(3,'Balqabaq yağı',42,'Oleos'),
			(4,'Qoz yağı',35,'Oleos'),
			(5,'Yumru düyü',7.5,'Risotto'),
			(6,'Cay',4.3,'Beta'),
			(7,'Simit',0.8,'AzSimit'),
			(8,'Qend',1.5,'AzerQend'),
			(9,'Duz',1.6,'AzerDuz'),
			(10,'Konfet',6,'AzerKonfet')

-- Qiymeti Productlarin price-larinin average-den kicik olan Products datalarinin siyahisini getiren query yazin
	Select * from Products
	where Price<(Select AVG(Price) from Products)

-- Qiymeti 10-dan yuxari olan Product datalarinin siyahisini getiren query yazin
	Select * from Products
	where Price>10

--Brand uzunlugu 5-den boyuk olan Productlarin siyahisini getiren query.
--Gelen datalarda Mehsulun adi ve Brand adi 1 columnda gorsensin ve Column adi ProductInfo olsun 
--(dersdeki name ve surname-i fullname kimi gostermeye uygun)
	Select (Name+' '+Brand) 'ProductInfo' from Products
	where LEN(Brand)>5

