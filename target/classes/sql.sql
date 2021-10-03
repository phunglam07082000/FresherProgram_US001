create database Customer;


create table Customer(
   Id int IDENTITY(1,1) PRIMARY KEY,
   LastName nvarchar(60) NOT NULL,
   FirstName nvarchar(60) NOT NULL,
   Gender nvarchar(30) NOT NULL,
   DateOfBirth  DATE  NOT NULL,
   IdCustomer varchar(15) NOT NULL,
   MaritalStatus varchar(30) NOT NULL,
   Address nvarchar(120) NOT NULL,
   Country nvarchar(30) NOT NULL,
);
