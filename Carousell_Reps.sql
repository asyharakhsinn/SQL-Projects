SELECT TOP (5000) [column1]
      ,[InvoiceNo]
      ,[StockCode]
      ,[Description]
      ,[Quantity]
      ,[UnitPrice]
      ,[CustomerID]
      ,[Country]
      ,[Date]
      ,[Hour]
  FROM [E-Commerce].[dbo].Carousell_Reps

  Select CustomerID, Quantity, 
  SUM(Quantity)over(partition by CustomerID ORDER BY Description) as Rolling_Total
  From Carousell_Reps
  group by CustomerID, Quantity, Description
  Order By CustomerID DESC

	Select CustomerID, UnitPrice,
	SUM(UnitPrice)Over(Partition By CustomerID Order By column1) As Roll
	From Carousell_Reps

		  Select top 5 CustomerID, Count(CustomerID) Loyal_Customer
		  From Carousell_Reps
		  Group by CustomerID
		  oRDER BY Count(CustomerID) DESC

  Select invoiceno, sum(quantity)
	  From Carousell_Reps
	  group by InvoiceNo
	  alter table Carousell_Reps
	  alter column Quantity integer

      Select Date
	  From Carousell_Reps
	  Order by date asc
	
	  sELECT *
  From Carousell_Reps

  Select UnitPrice, CustomerID
  From Carousell_Reps
  order by CustomerID asc

   Select top 5 CustomerID, MIN(Date) as Target_reached
  From
(SELECT *,
SUM(UnitPrice)OVER(Partition By CustomerID Order By Date) AS Run_total
From Carousell_Reps) as Subtotal
Where Run_total >= 1000
Group By CustomerID
Order By 2

  Select top 5 CustomerID, MIN(Date) as Target_reached
  From
(SELECT *,
SUM(UnitPrice)OVER(Partition By CustomerID Order By Date) AS Run_total
From Carousell_Reps) as Subtotal
Where Run_total >= 1000 and Year(Date) > 2010
Group By CustomerID
Order By 2

Select CustomerID, Description, 
SUM(UnitPrice) as Total,
Sum(UnitPrice)/(Select Sum(UnitPrice) From Carousell_Reps)AS
Percentage
From Carousell_Reps
Group BY CustomerID, Description
Order By CustomerID

Select Description, SUM(UnitPrice) total,
SUM(UnitPrice)/(Select sum(UnitPrice) from Carousell_Reps) as Harga_Satuan
From Carousell_Reps
gROUP BY Description
Order By Description

Select top 15 Description, Sum(Unitprice) as Total
from Carousell_Reps
Group By Description
Order By Total Desc