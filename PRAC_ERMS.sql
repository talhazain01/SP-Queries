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