create database projec_db;
create table tbl_User(
userID varchar(10) primary key,userName varchar (20),userEmail varchar(20),userStatus varchar(10)
);
create table tbl_Building(
buildingID varchar(10) primary key,buildingName varchar (20),buildingFloors int,FlatsPerFloor int,userID varchar (10) foreign key references tbl_User(userID),FlatNoScheme varchar (10) 
);
create table tbl_Flats(
flatNumber int primary key,Floor int,userId varchar(10) foreign key references tbl_User(userID),userEmail varchar(20),userNumber int,userDues int,MonthlyFees int,buildingID varchar(10) foreign key references tbl_Building(buildingID)
);
create table tbl_IncomingTransactions(
TransID varchar(10) primary key,PaidBy int foreign key references tbl_Flats(flatNumber),Amount int,Date varchar(20),ReceivedBy int foreign key references tbl_Flats(flatNumber),ForTheMonthOf varchar(20),buildingID varchar(10) foreign key references tbl_Building(buildingID)
);
