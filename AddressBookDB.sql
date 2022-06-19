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
SELECT * FROM Address_Book;

UC4: Edit Existing person details using their name
UPDATE Address_Book SET Address='65-A/5',PhoneNumber=9085632147 where FirstName='Vahidha';

UC5: Delete a Person using Person Name
DELETE FROM Address_Book WHERE FirstName= 'Vahidha';

UC6: Get details using city or state name
SELECT * FROM Address_Book WHERE City='Hyd' OR State='AndhraPradesh';

UC7: Size of Address book by City or State
SELECT COUNT(*) FROM Address_Book WHERE City='Kurnool' AND State='AndhraPradesh';
SELECT COUNT(*) FROM Address_Book WHERE City='Hyd'

INSERT INTO Address_Book( FirstName, LastName, Address, City, State, ZipCode, PhoneNumber, Email ) VALUES
( 'Vahidha', 'D', '4/6A-23', 'Vizak', 'AndhraPradesh', 134234, 6242342342, 'vahidha@yahoo.com' );

UC8: Data in Alphabetical order using city
SELECT FirstName, City FROM Address_Book ORDER BY City ASC;
SELECT FirstName, City FROM Address_Book ORDER BY City DESC;

UC9: Add Type to Identify
ALTER TABLE Address_Book ADD Type VARCHAR(150);
UPDATE Address_Book set Type='Family' where FirstName = 'Reshma' or FirstName = 'Basith';
UPDATE Address_Book set Type='Friends' where FirstName = 'Vahidha';
SELECT ID, Type, FirstName, LastName, Address, City, State, ZipCode, PhoneNumber, Email FROM Address_Book;