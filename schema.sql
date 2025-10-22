-- GIMPA Hostel Management System Database Schema (PostgreSQL/MySQL)

-- 1. Students Table
CREATE TABLE Students (
    student_id VARCHAR(15) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    program VARCHAR(100),
    contact_number VARCHAR(20),
    email VARCHAR(100) UNIQUE NOT NULL,
    room_id INT REFERENCES Rooms(room_id)
);

-- 2. Rooms Table
CREATE TABLE Rooms (
    room_id INT PRIMARY KEY,
    room_number VARCHAR(10) UNIQUE NOT NULL,
    block_name VARCHAR(50) NOT NULL,
    room_type VARCHAR(50), -- e.g., 'Standard', 'AC', 'Suite'
    capacity INT NOT NULL,
    current_occupancy INT DEFAULT 0
);

-- 3. Fees Table
CREATE TABLE Fees (
    fee_id SERIAL PRIMARY KEY,
    student_id VARCHAR(15) REFERENCES Students(student_id),
    amount DECIMAL(10, 2) NOT NULL,
    payment_status VARCHAR(20) NOT NULL, -- e.g., 'Paid', 'Pending', 'Overdue'
    invoice_date DATE NOT NULL,
    due_date DATE
);

