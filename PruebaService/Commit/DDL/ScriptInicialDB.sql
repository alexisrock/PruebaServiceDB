CREATE DATABASE PruebaServicio;
 GO

 USE PruebaServicio;
 GO

 CREATE TABLE Tbl_Productos(
 Id int primary key identity,
 Name nvarchar(400) not null,
 Description nvarchar(400),
 Price Decimal(18,2),
 Stock int not null
 );

GO


CREATE PROCEDURE SpInsertProducts
 @Name nvarchar(400),
 @Description nvarchar(400),
 @Price Decimal(18,2),
 @Stock int 
as

Insert into Tbl_Productos 
Values(@Name,@Description,@Price, @Stock );

GO

 

CREATE PROCEDURE SpUpdateProducts
 @Id int,
 @Name nvarchar(400),
 @Description nvarchar(400),
 @Price Decimal(18,2),
 @Stock int 
as

update Tbl_Productos 
	set Name = @Name,
	Description = @Description,
	Price = @Price,
	Stock = @Stock
	where Id = @Id

GO


CREATE PROCEDURE SpDeleteProducts
 @Id int
as

 Delete from Tbl_Producto where Id = @Id

GO



CREATE PROCEDURE SpSelectAllProducts 
as
SELECT TOP (1000) [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[Stock]
  FROM [PruebaServicio].[dbo].[Tbl_Productos]


GO

CREATE PROCEDURE SpSelectIdProducts
 @Id int
as
SELECT TOP (1000) [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[Stock]
  FROM [PruebaServicio].[dbo].[Tbl_Productos]
  where Id = @Id
GO
 