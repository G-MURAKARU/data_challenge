CREATE DATABASE IF NOT EXISTS school;

USE school;

CREATE TABLE IF NOT EXISTS Students(
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100),
    Age INT CHECK(Age >= 18),
    Email VARCHAR(255) UNIQUE NOT NULL
);

INSERT INTO Students(FirstName, LastName, Age, Email)
VALUES("John", "Doe", 20, "john.doe@example.com"),
("Jane", "Smith", 22, "jane.smith@example.com"),
("Michael", "Brown", 19, "michael.brown@example.com");

ALTER TABLE Students ADD COLUMN EnrollmentDate DATE;
ALTER TABLE Students MODIFY COLUMN Email VARCHAR(300) UNIQUE NOT NULL;
ALTER TABLE Students DROP COLUMN LastName;