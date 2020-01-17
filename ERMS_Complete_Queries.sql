------------------use master
------------------go

------------------drop database ER

create database ERMS

use ERMS
go

create table Customers
(
	Customer_ID int not null IDENTITY (1,1) primary key ,
	Customer_Name nvarchar(50) not null,
	Customer_Email varchar(320) not null unique,
	Customer_PhoneNumber nvarchar(50) not null unique,
	Customer_Password nvarchar(50) not null
)

create table Expenses
(
	Expense_ID int not null IDENTITY (1,1) primary key,
	Expense_Type nvarchar(50) not null unique,
	Expense_Month nvarchar(50) not null,
	Expense_PayingDate timestamp not null,
	Expense_Amount int not null
)

create table Designations
(
	Designation_ID int not null IDENTITY (1,1) primary key,
	Designation_Name nvarchar(50) not null unique,
)

create table Allowances
(
	Allowance_ID int not null IDENTITY (1,1) primary key,
	Allowance_Name nvarchar(50) not null unique,
	Allowance_Amount int not null,
)

create table Categories
(
	Category_ID int not null IDENTITY (1,1) primary key,
	Category_Name nvarchar(50) not null unique,
)

create table Events
(
	Event_ID int not null IDENTITY (1,1) primary key,
	Event_Name nvarchar(50) not null unique,
	Event_Amount int not null,
)

create table Foods
(
	Food_ID int not null IDENTITY (1,1) primary key,
	Food_Name nvarchar(50) not null unique,
	Food_Price int not null,
	Category_ID int not null
)

ALTER TABLE Foods
ADD CONSTRAINT FK_CategoryID
FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID);

create table Employees
(
	Employee_ID int not null IDENTITY (1,1) primary key,
	Employee_Name nvarchar(50) not null,
	Employee_PhoneNumber nvarchar(50) not null unique,
	Employee_Password nvarchar(50) not null,
	Employee_DesignationID int not null
	FOREIGN KEY (Employee_DesignationID) REFERENCES Designations(Designation_ID)
)

create table Attendances
(
	Attendance_ID int not null IDENTITY (1,1) primary key,
	Attendance_Date timestamp not null,
	Attendance_EmployeeID int not null,
	Attendance_PresentAbsent bit not null,
	FOREIGN KEY (Attendance_EmployeeID) REFERENCES Employees(Employee_ID)
)

create table Salaries
(
	Salary_ID int not null IDENTITY (1,1) primary key,
	Salary_EmployeeID int not null,
	FOREIGN KEY (Salary_EmployeeID) REFERENCES Employees(Employee_ID),
	Salary_AllowanceID int not null,
	FOREIGN KEY (Salary_AllowanceID) REFERENCES Allowances(Allowance_ID),
	Salary_Amount int not null
)

create table Salaries_Transactions
(
	ST_ID int not null IDENTITY (1,1) primary key,
	ST_EmployeeID int not null,
	FOREIGN KEY (ST_EmployeeID) REFERENCES Employees(Employee_ID),
	ST_Month nvarchar(50) not null,
	ST_PayingDate timestamp not null,
	ST_Amount int not null
)

create table Tables
(
	Table_ID int not null IDENTITY (1,1) primary key,
	Table_Number int not null,
	Table_TR_ID int not null
)

create table Table_Reservations
(
	TR_ID int not null IDENTITY (1,1) primary key,
	TR_Customer_ID int not null,
	FOREIGN KEY(TR_Customer_ID) REFERENCES Customers(Customer_ID),
	TR_Table_ID int not null,
	FOREIGN KEY(TR_Table_ID) REFERENCES Tables(Table_ID),
	TR_EmployeeID int not null,
	FOREIGN KEY(TR_EmployeeID) REFERENCES Employees(Employee_ID),
	TR_Date timestamp not null
)

create table Sales
(
	Sales_ID int not null IDENTITY (1,1) primary key,
	Sale_Customer_ID int not null,
	FOREIGN KEY(Sale_Customer_ID) REFERENCES Customers(Customer_ID),
	Sale_Table_ID int not null,
	FOREIGN KEY(Sale_Table_ID) REFERENCES Tables(Table_ID),
	Sale_EmployeeID int not null,
	FOREIGN KEY(Sale_EmployeeID) REFERENCES Employees(Employee_ID),
	Sale_CashierID int not null,
	FOREIGN KEY(Sale_CashierID) REFERENCES Employees(Employee_ID),
	Sale_FoodID int not null,
	FOREIGN KEY(Sale_FoodID) REFERENCES Foods(Food_ID),
	Sale_Event int not null,
	FOREIGN KEY(Sale_Event) REFERENCES Events(Event_ID),
	Sale_Date timestamp not null,
	Sale_Taxes int not null
)



