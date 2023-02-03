DROP DATABASE IF EXISTS hospitalmanagement;
CREATE DATABASE hospitalManagement;
USE hospitalManagement;
SET SQL_SAFE_UPDATES=0;
/* Create tables. We have 18 tables */
DROP TABLE IF EXISTS Department_T;
CREATE TABLE Department_T(
	departmentID VARCHAR(40),
    deptName VARCHAR(20),
    PRIMARY KEY(departmentID)
);
DROP TABLE IF EXISTS Doctor_T;
CREATE TABLE Doctor_T(
	doctorID VARCHAR(40) NOT NULL,
    doctorName VARCHAR(30),
    doctorQualification VARCHAR(20),
    employeeID VARCHAR(40),
	PRIMARY KEY (doctorID)
);
DROP TABLE IF EXISTS Employee_T;
CREATE TABLE Employee_T(
	employeeID VARCHAR(40),
    accountNumber VARCHAR(40),
    employee_Fname VARCHAR(30),
    employee_Lname VARCHAR(30),
    employeePhone VARCHAR(100),
    empEmail VARCHAR(20),
    employeeType VARCHAR(30),
    empJoiningDate DATE,
    departmentID VARCHAR(40),
	PRIMARY KEY (employeeID)
);

DROP TABLE IF EXISTS Patient_T;
CREATE TABLE Patient_T(
	patientID VARCHAR(40),
    patient_Fname VARCHAR(40),
    patient_Lname VARCHAR(40),
    patient_Address VARCHAR(50),
    patientPhoneNumber INT(12),
    patientGender VARCHAR(10),
    patientDateOfBirth DATE,
    patientBloodGroup VARCHAR(10),
    PRIMARY KEY(patientID)
	
);

DROP TABLE IF EXISTS PatientRegister_T;
CREATE TABLE PatientRegister_T(
	patient_RegisterID VARCHAR(40) NOT NULL,
    patientID VARCHAR(40),
    admissionDate DATE,
    dischargeDate DATE,
	assigned_Doc_ID VARCHAR(40),
    wardID VARCHAR(40),
    roomID VARCHAR(40),
    mealID VARCHAR(40),
    PRIMARY KEY(patient_RegisterID)
);
DROP TABLE IF EXISTS Pharmacy_T;
CREATE TABLE Pharmacy_T(
	medicineID VARCHAR(40) NOT NULL,
	medicineName VARCHAR(20),
    medicinePrice FLOAT(20),
    medicineQuantity INT(30),
    departmentID VARCHAR(40),
    PRIMARY KEY (medicineID)
);
DROP TABLE IF EXISTS Cafeteria_T;
CREATE TABLE Cafeteria_T (
	MealID VARCHAR(40) NOT NULL ,
	mealDescription VARCHAR(45) ,
	PRIMARY KEY(MealID)

);
DROP TABLE IF EXISTS Payroll_T;
CREATE TABLE Payroll_T(
	payrollID VARCHAR(40) NOT NULL,
    netSalary INT,
    employeeID VARCHAR(40),
    accountNumber VARCHAR(40),
	primary key(payrollID)
);

DROP TABLE IF EXISTS Disease_T;
CREATE TABLE Disease_T(
	diseaseID VARCHAR(40),
    diseaseName VARCHAR(40),
    PRIMARY KEY(diseaseID)
);
DROP TABLE IF EXISTS PatientDisease_T;
CREATE TABLE PatientDisease_T(
    diseaseID VARCHAR(40),
    patient_RegisterID VARCHAR(40)
);
Drop table if exists PatientAuditLog_T;
CREATE TABLE PatientAuditLog_T(
	patientID VARCHAR(40),
    Fname varchar(40),
    Lname Varchar(40),
    Address varchar(255),
    Phone Int(30),
	Action_Date Date,
    Action_Type Varchar(40)
    
);

DROP TABLE IF EXISTS DONOR;
CREATE TABLE donor(
	donorName varchar(30),
    donorBloodGroup varchar(2), 
    donorAge INT,
    patientID varchar(40)
    );

DROP TABLE IF EXISTS trackDonorAndPatient;
CREATE TABLE trackDonorAndPatient(
	donorName varchar(30),
	donorBloodGroup varchar(2), 
	donorAge INT,
	patientID varchar(40),
	patient_Fname varchar(40),
	patient_Lname varchar(40)
);
DROP TABLE IF EXISTS PatientVitals_T;
CREATE TABLE PatientVitals_T(
    patient_RegisterID VARCHAR(40) NOT NULL,
    oxygen_Level INT(10) NOT NULL,
    heart_Rate INT(10) NOT NULL);
Drop TABLE IF EXISTS Inventory_T;
CREATE TABLE  Inventory_T(
	itemID VARCHAR(40) NOT NULL, 
	itemName VARCHAR(45),
	lastStockUpDate DATE, 
	quantity VARCHAR(40),
    departmentID VARCHAR(40),
	PRIMARY KEY (itemID)
);
Drop TABLE IF EXISTS room_T;
CREATE TABLE room_T(
	roomID VARCHAR(40) NOT NULL,
    wardID VARCHAR(40),
    roomStatus VARCHAR(20),
    PRIMARY KEY (roomID)

);
Drop TABLE IF EXISTS Ward_T;
CREATE TABLE Ward_T(
	wardID VARCHAR(40) NOT NULL,
    wardType VARCHAR(20),
    wardFloor VARCHAR(20),
    roomID VARCHAR(40),
	PRIMARY KEY (wardID)
);
Drop TABLE IF EXISTS Laboratory_T;
CREATE TABLE Laboratory_T(
	labID VARCHAR(40), 
	labtestName VARCHAR (30),
	testmaxValue VARCHAR(40),
    testminValue VARCHAR(40),
    departmentID VARCHAR(40),
    PRIMARY KEY(LabID)
);
