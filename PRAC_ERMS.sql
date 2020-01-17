SELECT  Food_ID,Food_Name,Food_Price,Category_Name
FROM Foods
INNER JOIN Categories ON   Foods.Category_ID = Categories.Category_ID

select Foods.Food_ID from Foods where Food_ID=(SELECT MAX(Food_ID) FROM Foods)

select * from Foods
select * from Categories
select * from Tables

select Tables.Table_ID from Tables where Table_ID=(SELECT MAX(Table_ID) FROM Tables)

select Count(*) as Total from Foods
select Count(*) as Total from Tables

Select IDENT_CURRENT('Foods') + 1

Select Category_ID from Categories where Category_Name = 'Chinese'


https://docs.microsoft.com/en-us/aspnet/web-api/overview/older-versions/creating-a-web-api-that-supports-crud-operations?fbclid=IwAR21oz7_2z47J6gktBsVbcLVOGkq__1LVz5yNhFn1CBj8arJRRlQjKwrjBU


https://www.mindstick.com/Articles/1472/crud-operation-using-asp-dot-net-web-api-and-entity-framework-in-asp-dot-net-mvc-4
