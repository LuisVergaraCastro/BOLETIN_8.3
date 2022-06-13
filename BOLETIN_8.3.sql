--Boletín 8.3
--Consultas sencillas
--AdventureWorks
USE AdventureWorksLT2012

--1.Nombre del producto, código y precio, ordenado de mayor a menor precio
SELECT * FROM SalesLT.Product
SELECT Name, ProductID, ListPrice FROM SalesLT.Product ORDER BY ListPrice DESC
--2.Número de direcciones de cada Estado/Provincia
SELECT * FROM SalesLT.Address
SELECT StateProvince, COUNT(AddressID) AS [Nº D DIRECCIONES] FROM SalesLT.Address GROUP BY StateProvince
--3.Nombre del producto, código, número, tamaño y peso de los productos
--que estaban a la venta durante todo el mes de septiembre de 2002.
--No queremos que aparezcan aquellos cuyo peso sea superior a 2000.
SELECT * FROM SalesLT.Product
SELECT Name, ProductID, ProductNumber, Size, Weight FROM SalesLT.Product WHERE (MONTH(SellStartDate) = 7 AND YEAR(SellStartDate) = 2002) AND (Weight < 2000)
--4.Margen de beneficio de cada producto (Precio de venta menos el coste), y porcentaje que supone respecto del precio de venta.
SELECT * FROM SalesLT.Product
SELECT ProductID, (ListPrice - StandardCost) AS [MARGEN DE BENEFICIO], ((ListPrice - StandardCost)/100) AS PORCENTAJE FROM SalesLT.Product

--Consultas de dificultad media
--5.Número de productos de cada categoría
SELECT ProductCategoryID, COUNT(*) AS [Nº DE PRODUCTOS] FROM SalesLT.Product GROUP BY ProductCategoryID
--6.cantidad de subcategorías que hay dentro de cada categoría padre
SELECT COUNT(*) [CANTIDAD DE SUBCATEGORIAS]
