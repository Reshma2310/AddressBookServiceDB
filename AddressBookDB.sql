UC1: Creating Address Book Service DB
CREATE DATABASE AddressBook;
use AddressBook;

UC2: Create Address book table
Create Table Address_Book (ID INT IDENTITY(1,1) PRIMARY KEY, FirstName VARCHAR(150), LastName VARCHAR(150), 
Address VARCHAR(150), City VARCHAR(150), State VARCHAR(150), ZipCode int, PhoneNumber bigint, Email VARCHAR(150));

UC3: Inserting Details into Address Book
INSERT INTO Address_Book( FirstName, LastName, Address, City, State, ZipCode, PhoneNumber, Email ) VALUES
( 'Reshma', 'Rose', '49/A-62', 'Kurnool', 'AndhraPradesh', 234234, 2342342342, 'reshma@gmail.com' ),
( 'Vahidha', 'D', '4/6A-23', 'Vizak', 'AndhraPradesh', 134234, 6242342342, 'vahidha@yahoo.com' ),
( 'Basith', 'R', '49-A/28', 'Hyd', 'Telangana', 567234, 4567842342, 'basith@gmail.com' );
