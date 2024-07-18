-- Tạo database
CREATE DATABASE cinema_management;
USE cinema_management;

-- Bảng Phim
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    duration INT,
    release_date DATE,
    genre VARCHAR(100),
    director VARCHAR(100),
    cast TEXT
);

-- Bảng Phòng chiếu
CREATE TABLE Theaters (
    theater_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    capacity INT
);

-- Bảng Ghế ngồi
CREATE TABLE Seats (
    seat_id INT PRIMARY KEY AUTO_INCREMENT,
    theater_id INT,
    row_number VARCHAR(5),
    seat_number INT,
    FOREIGN KEY (theater_id) REFERENCES Theaters(theater_id)
);

-- Bảng Suất chiếu
CREATE TABLE Showtimes (
    showtime_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    theater_id INT,
    start_time DATETIME,
    end_time DATETIME,
    price DECIMAL(10, 2),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (theater_id) REFERENCES Theaters(theater_id)
);

-- Bảng Khách hàng
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    password VARCHAR(255),
    avatar VARCHAR(),
    membership_status VARCHAR(20)
);

-- Bảng Đặt vé
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    showtime_id INT,
    booking_date DATETIME,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (showtime_id) REFERENCES Showtimes(showtime_id)
);

-- Bảng Chi tiết đặt vé
CREATE TABLE BookingDetails (
    booking_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,
    seat_id INT,
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id),
    FOREIGN KEY (seat_id) REFERENCES Seats(seat_id)
);

-- Bảng Nhân viên
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    position VARCHAR(50),
    password VARCHAR(255)
);

-- Bảng Đồ ăn và đồ uống
CREATE TABLE Concessions (
    concession_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2),
    stock INT
);

-- Bảng Khuyến mãi
CREATE TABLE Promotions (
    promotion_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    discount_percent DECIMAL(5, 2),
    start_date DATE,
    end_date DATE
);

-- Bảng Đánh giá
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    customer_id INT,
    rating INT,
    comment TEXT,
    review_date DATETIME,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);