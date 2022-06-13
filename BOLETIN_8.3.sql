--Bolet�n 8.3
--Consultas sencillas
--AdventureWorks
USE AdventureWorksLT2012

--1.Nombre del producto, c�digo y precio, ordenado de mayor a menor precio
SELECT * FROM SalesLT.Product
SELECT Name, ProductID, ListPrice FROM SalesLT.Product ORDER BY ListPrice DESC
--2.N�mero de direcciones de cada Estado/Provincia
SELECT * FROM SalesLT.Address
SELECT StateProvince, COUNT(AddressID) AS [N� D DIRECCIONES] FROM SalesLT.Address GROUP BY StateProvince
--3.Nombre del producto, c�digo, n�mero, tama�o y peso de los productos
--que estaban a la venta durante todo el mes de septiembre de 2002.
--No queremos que aparezcan aquellos cuyo peso sea superior a 2000.
SELECT * FROM SalesLT.Product
SELECT Name, ProductID, ProductNumber, Size, Weight FROM SalesLT.Product WHERE (MONTH(SellStartDate) = 7 AND YEAR(SellStartDate) = 2002) AND (Weight < 2000)
--4.Margen de beneficio de cada producto (Precio de venta menos el coste), y porcentaje que supone respecto del precio de venta.
SELECT * FROM SalesLT.Product
SELECT ProductID, (ListPrice - StandardCost) AS [MARGEN DE BENEFICIO], ((ListPrice - StandardCost)/100) AS PORCENTAJE FROM SalesLT.Product

--Consultas de dificultad media
--5.N�mero de productos de cada categor�a
SELECT ProductCategoryID, COUNT(*) AS [N� DE PRODUCTOS] FROM SalesLT.Product GROUP BY ProductCategoryID
--6.cantidad de subcategor�as que hay dentro de cada categor�a padre
SELECT COUNT(*) [CANTIDAD DE SUBCATEGORIAS]
