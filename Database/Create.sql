-- DROP DATABASE Hotel_Booking_System;
CREATE DATABASE Hotel_Booking_System;
GO

USE Hotel_Booking_System;
GO

CREATE TABLE customer (
    id INT PRIMARY KEY IDENTITY(1,1),
    first_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    email VARCHAR(320) NOT NULL,
    phone CHAR(10) NOT NULL
);

CREATE TABLE booking (
    id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT NOT NULL,
    booking_time DATETIME NOT NULL,
    update_time DATETIME NOT NULL,
    checkin_date DATE NOT NULL,
    checkout_date DATE NOT NULL,
    actual_checkin_time DATETIME,
    actual_checkout_time DATETIME,
    deposit INT NOT NULL,
    payment_status TINYINT NOT NULL, -- 0: Đã cọc, 1: Đã thanh toán
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

CREATE TABLE hotel (
    id INT PRIMARY KEY IDENTITY(1,1),
    hotel_name NVARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(320) NOT NULL UNIQUE,
    phone CHAR(11) NOT NULL UNIQUE,
    city NVARCHAR(50) NOT NULL,
    address NVARCHAR(255) NOT NULL UNIQUE,
    description NVARCHAR(MAX) NOT NULL
);

CREATE TABLE room_type (
    id INT PRIMARY KEY IDENTITY(1,1),
    room_type_name NVARCHAR(50) NOT NULL,
);

CREATE TABLE hotel_room_type (
    hotel_id INT,
    room_type_id INT,
    base_price INT NOT NULL,
	hotel_room_type_status TINYINT DEFAULT 1, -- 1: còn phòng loại này, 0: hết phòng loại này
    PRIMARY KEY (hotel_id, room_type_id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(id),
    FOREIGN KEY (room_type_id) REFERENCES room_type(id)
);

CREATE TABLE room (
    id INT PRIMARY KEY IDENTITY(1,1),
    hotel_id INT NOT NULL,
    room_type_id INT NOT NULL,
    room_number CHAR(4) NOT NULL, -- VD: P401, P402,...
    room_status TINYINT NOT NULL,
    FOREIGN KEY (hotel_id, room_type_id) REFERENCES hotel_room_type(hotel_id, room_type_id),
);

CREATE TABLE booking_room (
    booking_id INT,
    room_id INT,
    num_adults INT NOT NULL,
    num_children INT NOT NULL,
    room_surcharge INT DEFAULT 0,
	booking_price INT NOT NULL,
    PRIMARY KEY (booking_id, room_id),
    FOREIGN KEY (booking_id) REFERENCES booking(id),
    FOREIGN KEY (room_id) REFERENCES room(id)
);

CREATE TABLE service (
    id INT PRIMARY KEY IDENTITY(1,1),
    service_name NVARCHAR(50) NOT NULL,
    price INT NOT NULL
);

CREATE TABLE booking_service (
    booking_id INT,
    service_id INT,
    quantity SMALLINT NOT NULL,
	booking_price INT NOT NULL,
    PRIMARY KEY (booking_id, service_id),
    FOREIGN KEY (booking_id) REFERENCES booking(id),
    FOREIGN KEY (service_id) REFERENCES service(id)
);

CREATE TABLE payment_method (
    id INT PRIMARY KEY IDENTITY(1,1),
    payment_method_name NVARCHAR(255) NOT NULL
);

CREATE TABLE invoice (
    booking_id INT PRIMARY KEY,
    payment_method_id INT NOT NULL,
    checkin_checkout_surcharge INT DEFAULT 0,
    room_charge INT DEFAULT 0,
    service_fee INT DEFAULT 0,
    FOREIGN KEY (booking_id) REFERENCES booking(id),
    FOREIGN KEY (payment_method_id) REFERENCES payment_method(id)
);

CREATE TABLE bed_type (
    id INT PRIMARY KEY IDENTITY(1,1),
    bed_type_name NVARCHAR(50) NOT NULL
);

CREATE TABLE room_type_bed_type (
    room_type_id INT,
    bed_type_id INT,
    num_beds TINYINT NOT NULL,
    PRIMARY KEY (room_type_id, bed_type_id),
    FOREIGN KEY (room_type_id) REFERENCES room_type(id),
    FOREIGN KEY (bed_type_id) REFERENCES bed_type(id)
);

CREATE TABLE amenity (
    id INT PRIMARY KEY IDENTITY(1,1),
    amenity_name NVARCHAR(255) NOT NULL
);

CREATE TABLE room_type_amenity (
    room_type_id INT,
    amenity_id INT,
    PRIMARY KEY (room_type_id, amenity_id),
    FOREIGN KEY (room_type_id) REFERENCES room_type(id),
    FOREIGN KEY (amenity_id) REFERENCES amenity(id)
);

CREATE TABLE role (
    id INT PRIMARY KEY IDENTITY(1,1),
    role_type NVARCHAR(50) NOT NULL
);

CREATE TABLE employee (
    id INT PRIMARY KEY IDENTITY(1,1),
    hotel_id INT NOT NULL,
    role_id INT NOT NULL,
	employee_code VARCHAR(20) UNIQUE,
    first_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    email VARCHAR(320) UNIQUE,
    password VARCHAR(20) NOT NULL,
    phone CHAR(10) NOT NULL,
    gender BIT NOT NULL, -- 0: Nam, 1: Nữ
    dob DATE NOT NULL,
    address NVARCHAR(255) NOT NULL,
	status TINYINT DEFAULT 1, -- 1: đang làm việc, 0: đã nghỉ
    FOREIGN KEY (hotel_id) REFERENCES hotel(id),
    FOREIGN KEY (role_id) REFERENCES role(id)
);

CREATE TABLE UnicodeMapping
(
    OriginalChar NVARCHAR(1),
    MappedChar NVARCHAR(1)
);

--Chữ thường
INSERT INTO UnicodeMapping (OriginalChar, MappedChar)
VALUES
(N'á', N'a'), (N'à', N'a'), (N'ả', N'a'), (N'ã', N'a'), (N'ạ', N'a'), (N'â', N'a'), (N'ấ', N'a'), (N'ầ', N'a'),
(N'ẩ', N'a'), (N'ẫ', N'a'), (N'ậ', N'a'), (N'ă', N'a'), (N'ắ', N'a'), (N'ằ', N'a'), (N'ẳ', N'a'), (N'ẵ', N'a'),
(N'ặ', N'a'), (N'é', N'e'), (N'è', N'e'), (N'ẻ', N'e'), (N'ẽ', N'e'), (N'ẹ', N'e'), (N'ê', N'e'), (N'ế', N'e'),
(N'ề', N'e'), (N'ể', N'e'), (N'ễ', N'e'), (N'ệ', N'e'), (N'í', N'i'), (N'ì', N'i'), (N'ỉ', N'i'), (N'ĩ', N'i'),
(N'ị', N'i'), (N'ó', N'o'), (N'ò', N'o'), (N'ỏ', N'o'), (N'õ', N'o'), (N'ọ', N'o'), (N'ô', N'o'), (N'ố', N'o'),
(N'ồ', N'o'), (N'ổ', N'o'), (N'ỗ', N'o'), (N'ộ', N'o'), (N'ơ', N'o'), (N'ớ', N'o'), (N'ờ', N'o'), (N'ở', N'o'),
(N'ỡ', N'o'), (N'ợ', N'o'), (N'ú', N'u'), (N'ù', N'u'), (N'ủ', N'u'), (N'ũ', N'u'), (N'ụ', N'u'), (N'ư', N'u'),
(N'ứ', N'u'), (N'ừ', N'u'), (N'ử', N'u'), (N'ữ', N'u'), (N'ự', N'u'), (N'ý', N'y'), (N'ỳ', N'y'), (N'ỷ', N'y'),
(N'ỹ', N'y'), (N'ỵ', N'y'), (N'đ', N'd');

-- Chữ hoa
INSERT INTO UnicodeMapping (OriginalChar, MappedChar)
VALUES
(N'Á', N'A'), (N'À', N'A'), (N'Ả', N'A'), (N'Ã', N'A'), (N'Ạ', N'A'), (N'Â', N'A'), (N'Ấ', N'A'), (N'Ầ', N'A'),
(N'Ẩ', N'A'), (N'Ẫ', N'A'), (N'Ậ', N'A'), (N'Ă', N'A'), (N'Ắ', N'A'), (N'Ằ', N'A'), (N'Ẳ', N'A'), (N'Ẵ', N'A'),
(N'Ặ', N'A'), (N'É', N'E'), (N'È', N'E'), (N'Ẻ', N'E'), (N'Ẽ', N'E'), (N'Ẹ', N'E'), (N'Ê', N'E'), (N'Ế', N'E'),
(N'Ề', N'E'), (N'Ể', N'E'), (N'Ễ', N'E'), (N'Ệ', N'E'), (N'Í', N'I'), (N'Ì', N'I'), (N'Ỉ', N'I'), (N'Ĩ', N'I'),
(N'Ị', N'I'), (N'Ó', N'O'), (N'Ò', N'O'), (N'Ỏ', N'O'), (N'Õ', N'O'), (N'Ọ', N'O'), (N'Ô', N'O'), (N'Ố', N'O'),
(N'Ồ', N'O'), (N'Ổ', N'O'), (N'Ỗ', N'O'), (N'Ộ', N'O'), (N'Ơ', N'O'), (N'Ớ', N'O'), (N'Ờ', N'O'), (N'Ở', N'O'),
(N'Ỡ', N'O'), (N'Ợ', N'O'), (N'Ú', N'U'), (N'Ù', N'U'), (N'Ủ', N'U'), (N'Ũ', N'U'), (N'Ụ', N'U'), (N'Ư', N'U'),
(N'Ứ', N'U'), (N'Ừ', N'U'), (N'Ử', N'U'), (N'Ữ', N'U'), (N'Ự', N'U'), (N'Ý', N'Y'), (N'Ỳ', N'Y'), (N'Ỷ', N'Y'),
(N'Ỹ', N'Y'), (N'Ỵ', N'Y'), (N'Đ', N'D');