drop database hotel_booking_system;
create database hotel_booking_system;
use hotel_booking_system;

create table customer (
	Id int auto_increment primary key,
    FirstName varchar(50),
    LastName varchar(20),
    Email varchar(350),
    Gender bool, -- 0 là Nam, 1 là Nữ
    Phone char(10),
    constraint CHK_Phone_Customer check (Phone regexp '^0[0-9]{9}$')
);

create table role (
	Id int auto_increment primary key,
    Role varchar(255)
);

create table hotel (
	Id int auto_increment primary key,
    Name varchar(255),
    Phone char(10) unique,
    Email varchar(350),
    City varchar(255),
    Address varchar(255),
    Description text
);

create table employee (
	Id int auto_increment primary key,
    EmployeeCode char(20) unique,
    HotelID int,
    FirstName varchar(50),
    LastName varchar(20),
    Email varchar(350) unique,
    Password varchar(20),
    Gender bool, -- 0 là Nam, 1 là Nữ
    Phone char(10),
    DoB date,
    Address text,
    RoleID int,
    constraint FK_RoleID foreign key(RoleID) references role(Id),
	constraint FK_HotelID_Employee foreign key(HotelID) references hotel(Id),
    constraint CHK_Phone_Employee check (Phone regexp '^0[0-9]{9}$')
);

create index IDX_EmployeeCode ON employee(EmployeeCode) USING BTREE;

create table amenities (
	Id int auto_increment primary key,
    Name varchar(255),
    Icon varchar(255)
);

create table roomtype (
	Id int auto_increment primary key,
    Name varchar(50),
    Bed varchar(255),
    Area int,
    Price tinyint,
    MaxPeople tinyint,
    Description text
);

create table roomtypeAmenities (
	RoomTypeID int,
    AmenitiesID int,
    constraint FK_RoomTypeID_RTA foreign key(RoomTypeID) references roomtype(Id),
    constraint FK_AmenitiesID foreign key(AmenitiesID) references amenities(Id),
    primary key(RoomTypeID, AmenitiesID)
);

create table room (
	Id int auto_increment primary key,
    Name char(4),
    Status tinyint, -- 0: Phòng trống, 1: Phòng đã cọc, 2: Phòng đang sử dụng, 3: Phòng đang dọn dẹp
    HotelID int,
    RoomTypeID int,
    constraint FK_RoomTypeID_Room foreign key(RoomTypeID) references roomtype(Id),
    constraint FK_HotelID_Room foreign key(HotelID) references hotel(Id)
);

create table service (
	Id int auto_increment primary key,
    ServiceName varchar(50),
    Price int
);

create table reservation (
	Id int auto_increment primary key,
    CustomerID int unique,
    BookingTime datetime,
    UpdatedTime datetime,
    CheckinTime datetime, 
    CheckoutTime datetime,
    Deposit int, -- Tiền cọc
    Status tinyint, -- 0: Đã cọc, 1: Đã cọc nhưng hủy, 2: Đã thanh toán xong
    constraint FK_CustomerID_Reservation foreign key(CustomerID) references customer(Id)
);

create table serviceDetails (
	ReservationID int,
    ServiceID int,
    Time datetime,
    Quantity int, 
    SubTotal int,
	constraint FK_ReservationID_srvDetails foreign key(ReservationID) references reservation(Id),
    constraint FK_ServiceID foreign key(ServiceID) references service(Id),
    primary key(ReservationID, ServiceID, Time)
);

create table paymentMethod (
	Id int auto_increment primary key,
    Method varchar(255)
);

create table invoice (
	Id int auto_increment primary key,
    Time datetime,
    TotalPrice int,
    ReservationID int unique,
    PaymentMethodID int,
    constraint FK_ReservationID_Invoice foreign key(ReservationID) references reservation(Id),
    constraint FK_PaymentMethodID foreign key(PaymentMethodID) references paymentMethod(Id)
);

create table booking (
    ReservationID int unique,
	RoomID int,
    Adult tinyint,
    Child tinyint,
    Baby tinyint,
    Surcharge int,
	constraint FK_ReservationID_Booking foreign key(ReservationID) references reservation(Id),
    constraint FK_RoomID_Booking foreign key(RoomID) references room(Id),
	primary key(ReservationID, RoomID)
);

create table review (
	CustomerID int unique,
    HotelID int,
    Comment text,
    Time datetime,
    Rate tinyint,
    constraint FK_CustomerID_Review foreign key(CustomerID) references customer(Id),
    constraint FK_HotelID_Review foreign key(HotelID) references hotel(Id),
    primary key(CustomerID, HotelID)
);

insert into role(Role)
values ('Admin'), ('Manager'), ('Employee');

    