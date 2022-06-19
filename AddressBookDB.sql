UC1: Creating Address Book Service DB
CREATE DATABASE AddressBook;
use AddressBook;

UC2: Create Address book table
Create Table AddressBook (ID INT IDENTITY(1,1) PRIMARY KEY, FirstName VARCHAR(150), LastName VARCHAR(150), 
Address VARCHAR(150), City VARCHAR(150), State VARCHAR(150), Zip INT, PhoneNumber INT, Email VARCHAR(150));