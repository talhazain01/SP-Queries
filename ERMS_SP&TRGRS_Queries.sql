--ALTER PROCEDURE ViewAllowance
--AS
--BEGIN
--    SELECT * FROM Allowances ORDER BY Allowance_ID ASC
--END

--ALTER PROCEDURE ViewCategories
--AS
--BEGIN
--    SELECT * FROM Categories ORDER BY Category_ID ASC
--END

--CREATE PROCEDURE ViewCustomers
--AS
--BEGIN
--    SELECT * FROM Customers ORDER BY Customer_ID ASC
--END

--CREATE PROCEDURE ViewDesignations
--AS
--BEGIN
--    SELECT * FROM Designations ORDER BY Designation_ID ASC
--END

--CREATE PROCEDURE ViewEvents
--AS
--BEGIN
--    SELECT * FROM Events ORDER BY Event_ID ASC
--END

--CREATE PROCEDURE ViewExpense
--AS
--BEGIN
--    SELECT * FROM Expenses ORDER BY Expense_ID ASC
--END

--ALTER PROCEDURE ViewFoods
--AS
--BEGIN
--    SELECT  Food_ID,Food_Name,Food_Price,Category_Name
--FROM Foods
--INNER JOIN Categories ON   Foods.Category_ID = Categories.Category_ID ORDER BY Food_ID ASC
--END

--CREATE PROCEDURE ViewFoods
--AS
--BEGIN
--    SELECT * FROM Foods ORDER BY Food_ID ASC
--END

--CREATE PROCEDURE ViewTables
--AS
--BEGIN
--    SELECT * FROM Tables ORDER BY Table_ID ASC
--END

--CREATE PROCEDURE ViewEmployee
--AS
--BEGIN
--SELECT  Employee_ID,Employee_Name,Employee_PhoneNumber,Employee_Password,Designation_Name
--FROM Employees
--INNER JOIN Designations ON   Employees.Employee_DesignationID = Designations.Designation_ID ORDER BY Employee_ID ASC
--END

--CREATE PROCEDURE ViewTables
--AS
--BEGIN
--    SELECT * FROM Tables ORDER BY Table_ID ASC
--END

CREATE PROCEDURE ViewSales
AS
BEGIN
    SELECT * FROM Sales ORDER BY Sales_ID ASC
END

EXEC ViewAllowance

EXEC ViewCategories

EXEC ViewCustomers

EXEC ViewDesignations

EXEC ViewEvents

EXEC ViewExpense

EXEC ViewFoods

EXEC ViewSalaries

EXEC ViewEmployee

EXEC ViewTables

EXEC ViewSalaries

EXEC ViewSales
Select * FROM Customers where Customer_ID = 1
Select Customer_Name From Customers WHERE Customer_ID = 1
Select Customer_Email From Customers WHERE Customer_ID = 1
Select Customer_PhoneNumber From Customers WHERE Customer_ID = 1
Select Customer_Password From Customers WHERE Customer_ID = 1

UPDATE Customers
SET Customer_Name = 'Hamid Khan', Customer_Email = 'hamiv@gmail.com',Customer_PhoneNumber = 03323225647 , Customer_Password = 'hamiv'
WHERE Customer_ID = 4