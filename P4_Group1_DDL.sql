IF EXISTS (SELECT NAME FROM sys.databases WHERE NAME = N'HospitalManagement')
    DROP DATABASE HospitalManagement
GO

------------------------------------------------------- DATABASE CREATION -------------------------------------------------------------

CREATE DATABASE HospitalManagement
GO

USE HospitalManagement
GO

------------------------------------------------------ DDL : TABLE CREATION ---------------------------------------------------------------

--Create Table Hospital Employee
CREATE TABLE HospitalEmployee(
    Emp_ID INT NOT NULL,
    Emp_fname VARCHAR(25),
    Emp_lname VARCHAR(25),
    Emp_phone CHAR(10),
    Emp_type CHAR(2)
    CONSTRAINT HospitalEmployee_PK PRIMARY KEY(Emp_ID),
	CONSTRAINT HospitalEmployee_CHK CHECK(Emp_type IN ('DR', 'ST')),	-- [ Check Constraint : 1 ]
	CONSTRAINT HospitalEmpPhone_CHK CHECK(LEN(Emp_phone) = 10)			-- [ Check Constraint : 2 ]
);

--Create Table Hospital Staff
CREATE TABLE HospitalStaff (
    Staff_ID INT NOT NULL,
    Designtion VARCHAR(50)
    CONSTRAINT HospitalStaff_PK PRIMARY KEY(Staff_ID),
    CONSTRAINT HospitalStaff_FK FOREIGN KEY(Staff_ID) REFERENCES HospitalEmployee(Emp_ID)
);

--Create Table Doctor
CREATE TABLE Doctor (
    Doctor_ID INT NOT NULL,
    Specilization VARCHAR(50)
    CONSTRAINT Doctor_PK PRIMARY KEY(Doctor_ID),
    CONSTRAINT Doctor_FK FOREIGN KEY(Doctor_ID) REFERENCES HospitalEmployee(Emp_ID)
);


--Create Table Patient
CREATE TABLE Patient (
    Pat_ID INT NOT NULL IDENTITY(100000,1),
    Pat_fname VARCHAR(25),
    Pat_lname VARCHAR(25),
    Gender VARCHAR(6),
    Pat_phone CHAR(10),
    Pat_street VARCHAR(200),
    Pat_city VARCHAR(50),
    Pat_state VARCHAR(25),
    Pat_zipcode CHAR(10),
    CONSTRAINT Patient_PK PRIMARY KEY(Pat_ID),
	CONSTRAINT ZipCode_CHK CHECK (LEN(Pat_zipcode) = 5),				-- [ Check Constraint : 3 ]
	CONSTRAINT Gender_CHK CHECK (Gender IN ('Female','Male','Other')),	-- [ Check Constraint : 4 ]
	CONSTRAINT PatientPhone_CHK CHECK (LEN(Pat_phone) = 10)				-- [ Check Constraint : 5 ]
);

--Create Table Prescription
CREATE TABLE Prescription (
    Pre_ID INT NOT NULL IDENTITY(1000000,1),
    Pat_ID INT,
    Doctor_ID INT,
    Prescribed_Date Date

    CONSTRAINT Prescription_PK PRIMARY KEY(Pre_ID),
    CONSTRAINT Prescription_FK FOREIGN KEY(Pat_ID) REFERENCES Patient(Pat_ID),
    CONSTRAINT Prescription_FK2 FOREIGN KEY(Doctor_ID) REFERENCES HospitalEmployee(Emp_ID)
);

--Create Table Case
CREATE TABLE [Case](
    Case_ID INT NOT NULL IDENTITY(2000000,1),
    Pre_ID INT,
    Pat_ID INT,
    Doctor_ID INT,
    Visit_Date Date
    
    CONSTRAINT Case_PK PRIMARY KEY(Case_ID),
    CONSTRAINT Case_FK FOREIGN KEY(Pre_ID) REFERENCES Prescription(Pre_ID),
    CONSTRAINT Case_FK2 FOREIGN KEY(Pat_ID) REFERENCES Patient (Pat_ID),
    CONSTRAINT Case_FK3 FOREIGN KEY(Doctor_ID) REFERENCES HospitalEmployee(Emp_ID)
);

--Create Table Medicine
CREATE TABLE Medicine(
    Medi_ID INT NOT NULL IDENTITY(10000,1),
    Medi_name VARCHAR(50),
    Medi_Des VARCHAR(250),
    Measure_unit VARCHAR(10)
    CONSTRAINT Measure_unit_CHK CHECK (Measure_unit IN ('mg','ml','tab')),	-- [ Check Constraint : 6 ]
    CONSTRAINT Medicine_PK PRIMARY KEY(Medi_ID)
);

--Create Table StaffAssigned
CREATE TABLE StaffAssigned(
    Staff_ID INT NOT NULL,
    Case_ID INT NOT NULL,
    Assign_Date DATE
    
    CONSTRAINT StaffAssigned_PK PRIMARY KEY(Staff_ID, Case_ID),
    CONSTRAINT StaffAssigned_FK FOREIGN KEY(Case_ID) REFERENCES [Case](Case_ID),
    CONSTRAINT StaffAssigned_FK2 FOREIGN KEY(Staff_ID) REFERENCES HospitalEmployee(emp_ID)
);

--Create Table Pharmacy
CREATE TABLE Pharmacy(
    Phar_ID INT NOT NULL IDENTITY(100,1),
    Phar_name VARCHAR(25),
    Phar_phone CHAR(10),

    Phar_street VARCHAR(200),
    Phar_city VARCHAR(50),
    Phar_state VARCHAR(25),
    Phar_zipcode CHAR(10),

    CONSTRAINT Pharmacy_PK PRIMARY KEY(Phar_ID),
	CONSTRAINT ZipCode_CHK1 CHECK (LEN(Phar_zipcode) = 5),		-- [ Check Constraint : 7 ]
	CONSTRAINT PhrmacyPhone_CHK CHECK (LEN(Phar_phone) = 10)	-- [ Check Constraint : 8 ]
);

--Create Table PrescriptionMedicine
CREATE TABLE PreMedicine(
    Pre_ID INT NOT NULL,
    Medi_ID INT NOT NULL,
    PreMedi_Quan INT

    CONSTRAINT PreMedicine_PK PRIMARY KEY(Pre_ID,Medi_ID),
    CONSTRAINT PreMedicine_FK FOREIGN KEY(Pre_ID) REFERENCES Prescription (Pre_ID),
    CONSTRAINT PreMedicine_FK2 FOREIGN KEY(Medi_ID) REFERENCES Medicine(Medi_ID)
);

--Create Table MEDICINE_STORAGE
CREATE TABLE MediStorage(
    Phar_ID INT NOT NULL,
    Medi_ID INT NOT NULL,
    Storage_Quan INT

    CONSTRAINT MediStorage_PK PRIMARY KEY(Phar_ID,Medi_ID),
    CONSTRAINT MediStorage_FK FOREIGN KEY(Phar_ID) REFERENCES  Pharmacy(Phar_ID),
    CONSTRAINT MediStorage_FK2 FOREIGN KEY(Medi_ID) REFERENCES Medicine(Medi_ID)
);

--Create Table Order
CREATE TABLE [Order](
    Order_ID INT NOT NULL IDENTITY(1000,1),
    Pat_ID INT,
    Pre_ID INT,
    Order_Date DATE

    CONSTRAINT Order_PK PRIMARY KEY(Order_ID),
    CONSTRAINT Order_FK FOREIGN KEY(Pat_ID) REFERENCES  Patient(Pat_ID),
    CONSTRAINT Order_FK2 FOREIGN KEY(Pre_ID) REFERENCES Prescription(Pre_ID)
);

--Create Table OrderLine
CREATE TABLE OrderLine(
    Order_ID INT NOT NULL,
    Medi_ID INT,
    OrdLineQuan INT,

    CONSTRAINT OrderLine_PK PRIMARY KEY(Order_ID, Medi_ID),
    CONSTRAINT OrderLine_FK FOREIGN KEY(Order_ID) REFERENCES [Order](Order_ID),
    CONSTRAINT OrderLine_FK2 FOREIGN KEY(Medi_ID) REFERENCES Medicine(Medi_ID)
);

--Create Table Supplier
CREATE TABLE Supplier(
    Supplier_ID INT NOT NULL IDENTITY(1000,1),
    Supplier_name VARCHAR(50),
    Supplier_phone CHAR(10),
    Supplier_street VARCHAR(200),
    Supplier_city VARCHAR(50),
    Supplier_state VARCHAR(25),
    Supplier_zipcode CHAR(10)

    CONSTRAINT Supplier_PK PRIMARY KEY(Supplier_ID),
	CONSTRAINT ZipCode_CHK2 CHECK (LEN(Supplier_zipcode) = 5),			-- [ Check Constraint : 9 ]
	CONSTRAINT SupplierPhone_CHK CHECK (LEN(Supplier_phone) = 10)		-- [ Check Constraint : 10 ]
);

--Create Table SupplierCer
CREATE TABLE SupplyCert(
    Phar_ID INT,
    Medi_ID INT,
    Supplier_ID INT,
    Cer_Start_Date DATE,
    Cer_End_Date DATE

    CONSTRAINT SupplyCert_PK PRIMARY KEY(Phar_ID,Medi_ID,Supplier_ID),
    CONSTRAINT SupplyCert_FK FOREIGN KEY(Phar_ID) REFERENCES Pharmacy(Phar_ID),
    CONSTRAINT SupplyCert_FK2 FOREIGN KEY(Medi_ID) REFERENCES Medicine(Medi_ID),
    CONSTRAINT SupplyCert_FK3 FOREIGN KEY(Supplier_ID) REFERENCES Supplier(Supplier_ID)
);


-------------------------------------------------------- STORED PROCEDURES ---------------------------------------------------------

-- TO TRACK THE 'OPIOID' USAGE
Create Procedure Opioid_Tracking @StartDate Date, @EndDate Date
As
Select p.Pat_fname, p.Pat_lname, pr.Pre_ID, o.Order_Date, ol.OrdLineQuan, m.Medi_name
From Patient p
Join Prescription pr On p.Pat_ID=pr.Pat_ID
Join [Order] o On pr.Pre_ID=o.Pre_ID
Join OrderLine ol On o.Order_ID=ol.Order_ID
Join Medicine m On ol.Medi_ID=m.Medi_ID
Where o.Order_Date Between @StartDate and @EndDate
And m.Medi_Des Like '%Opioid%';

Exec Opioid_Tracking @StartDate = '1/1/2015', @EndDate='12/31/2015';

-- TO IDENTIFY THE NUMBER OF SUPPLIERS WHO'S CERTIFICATES ARE EXPIRING THIS YEAR
Create Procedure Supply_Cert_Ending @PharmacyID int
As
Select p.Phar_ID, p.Phar_name, s.Supplier_ID, s.Supplier_name, sc.Cer_End_Date
From Pharmacy p
Join SupplyCert sc On p.Phar_ID=sc.Phar_ID
Join Supplier s On sc.Supplier_ID=s.Supplier_ID
Where sc.Cer_End_Date Between '01/01/2022' and '01/01/2023'
And p.Phar_ID=@PharmacyID

Exec Supply_Cert_Ending @PharmacyID=100

-- TO  GET THE FULL NAME OF THE DOCTOR ASSIGNED TO A PARTICULAR CASE
Create Procedure Doctor_Assigned @Case_ID int
As
Select c.Case_ID, he.Emp_fname+' '+he.Emp_lname as Doctor_Assigned
From [Case] c
Join Doctor d On c.Doctor_ID=d.Doctor_ID
Join HospitalEmployee he On d.Doctor_ID=he.Emp_ID
Where c.Case_ID=@Case_ID

Exec Doctor_Assigned @Case_ID=2000012


-------------------------------------------------------------- VIEWS ----------------------------------------------------------------

-- Prescribed Patients
CREATE VIEW Prescribed_Patients
AS
(
SELECT DISTINCT p.Pat_ID, p.Pat_fname, p.Pat_lname 
FROM Patient p join [Case] c ON p.Pat_ID = c.Pat_ID
WHERE Pre_ID is not null
);

-- Prescribed Medicine Count
CREATE VIEW Prescribed_Medicine_Count
AS
(
SELECT m.Medi_ID, m.Medi_name, m.Medi_Des, sum(PreMedi_Quan) as Quantity
FROM Medicine m join PreMedicine pm ON m.Medi_ID = pm.Medi_ID
group by m.Medi_ID,m.Medi_name,m.Medi_Des
);

-- Patients Visit Count to each Doctor
CREATE VIEW Number_of_Patients_Visit
AS
(
SELECT p.Pat_fname, p.Pat_lname, he.Emp_fname + ' ' + he.Emp_lname as Doctor_Name, COUNT(c.Pat_ID) as Visits_Count
FROM Patient p join [Case] c ON p.Pat_ID = c.Pat_ID
join HospitalEmployee he on he.Emp_ID = c.Doctor_ID
group by p.Pat_fname, p.Pat_lname, he.Emp_fname + ' ' + he.Emp_lname
);


----------------------------------------------------------- DML TRIGGER ----------------------------------------------------------------

-- DML Trigger For INSERTION 
CREATE TRIGGER [dbo].[Employees_INSERT]
       ON [dbo].[HospitalEmployee]
AFTER INSERT
AS
BEGIN
       SET NOCOUNT ON;
	   DECLARE @EmployeeType varchar(2)
       DECLARE @EmployeeId INT
 
       SELECT @EmployeeId = INSERTED.Emp_ID       
       FROM INSERTED

	   SELECT @EmployeeType = INSERTED.Emp_type       
       FROM INSERTED
 
		 if @EmployeeType ='ST'
		  begin
			INSERT INTO HospitalStaff
			VALUES(@EmployeeId, 'To be assigned')
		  end

		 else if @EmployeeType ='DR'
		  begin
			 INSERT INTO Doctor
			 VALUES(@EmployeeId, 'To be assigned')
		  end
END

-- To Check the DML Trigger
INSERT INTO HospitalEmployee (Emp_ID, Emp_fname, Emp_lname, Emp_phone, Emp_type) VALUES
('10026','Andrew', 'Tye','6998994743', 'ST');


------------------------------------------------------- USER DEFINED FUNCTIONS -------------------------------------------------------

-- Doctor Name according to their specilization
CREATE FUNCTION Get_Doctor_Name ( @Specilization varchar(100) )
RETURNS VARCHAR(100)
AS
BEGIN
DECLARE @doc_name varchar(100)
	SELECT @doc_name = he.Emp_fname + ' ' + he.Emp_lname
	from HospitalEmployee he join Doctor d on he.Emp_ID = d.Doctor_ID
	where d.Specilization like @Specilization
RETURN @doc_name
END

select distinct dbo.Get_Doctor_Name ('Obstetrician') as FullName

-- Doctor Full Name
CREATE FUNCTION Get_Doctor_Full_Name ( @Emp_ID int )
RETURNS VARCHAR(100)
AS
BEGIN
DECLARE @doc_name varchar(100)
	SELECT @doc_name = he.Emp_fname + ' ' + he.Emp_lname
	from HospitalEmployee he where he.Emp_ID = @Emp_ID
RETURN @doc_name
END

select *, [dbo].[Get_Doctor_Full_Name](Emp_ID) as FullName from HospitalEmployee he

-- Total Medicine Count according to Medicing ID across all Pharmacies
CREATE FUNCTION Get_Total_Med_Count ( @Medi_ID int)
RETURNS int
AS
BEGIN
DECLARE @Medi_Count int
	SELECT @Medi_Count = sum(ms.Storage_Quan) 
	from MediStorage ms 
	where ms.Medi_ID = @Medi_ID
RETURN @Medi_Count
END

select distinct [dbo].[Get_Total_Med_Count](10004) as Medicine_Count from MediStorage


------------------------------------------------------- NON-CLUSTERED INDEXES ----------------------------------------------------------------

CREATE NONCLUSTERED INDEX EmployeeLastName_Index ON HospitalEmployee (Emp_lname  ASC);

CREATE NONCLUSTERED INDEX Prescribed_Date_Index ON Prescription (Prescribed_Date  ASC);

CREATE NONCLUSTERED INDEX Visit_Date_Index ON [Case] (Visit_Date  DESC);

CREATE NONCLUSTERED INDEX Medicine_name_Index ON Medicine (Medi_name  ASC);

CREATE NONCLUSTERED INDEX Order_Date_Index ON [Order] (Order_Date  DESC);


---------------------------------------------------------- DATA ENCRYPTION ----------------------------------------------------------------

Alter Table HospitalEmployee add Username varchar(50), [Password] varbinary(400)

-- Create a master key for the database. 
Create MASTER KEY
ENCRYPTION BY PASSWORD ='HospitalManagement';

SELECT name KeyName,
	symmetric_key_id KeyID,
	key_length KeyLength,
	algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;

-- COLUMN DATA ENCRYPTION
CREATE CERTIFICATE HEPass
	WITH SUBJECT = 'Hospital Employee Sample Password';
GO

CREATE SYMMETRIC KEY HEPass_SM
	WITH ALGORITHM = AES_256
	ENCRYPTION BY CERTIFICATE HEPass;

-- DECRYPTION
OPEN SYMMETRIC KEY HEPass_SM
	DECRYPTION BY CERTIFICATE HEPass;

UPDATE dbo.HospitalEmployee set [username] = Emp_lname,
	[Password] = EncryptByKey (Key_GUID('HEPass_SM'),convert(varbinary, 'Pass123') )

OPEN SYMMETRIC KEY HEPass_SM 
	DECRYPTION BY CERTIFICATE HEPass;

-- TO CHECK ON ENCRYPTION AND DECRYPTION
SELECT *,
	CONVERT(varchar, DecryptByKey ([Password]))
	AS 'Decrypted password'
	FROM dbo.HospitalEmployee;
GO


------------------------------------------------------------ TRANSACTION -----------------------------------------------------------------------

-- TRANSACTION 1 - ROLLBACK

Begin Tran
Update Patient
Set Pat_fname = 'Logan',
	Pat_lname = 'Lucky'
Where Pat_ID = 100010

Select * From Patient Where Pat_ID=100010

Rollback Tran

Select * From Patient Where Pat_ID=100010

-- TRANSACTION 2 - ROLLBACK & COMMIT

Begin Transaction quan_update
Update MediStorage 
	Set Storage_Quan='250'
	Where Phar_ID='100' and Medi_ID='10001' 
Save Transaction quan_update

Delete From MediStorage Where Phar_ID=100 and Medi_ID =10001

Select * From MediStorage

Rollback Transaction quan_update
Commit Transaction

Select * From MediStorage

------------------------------------------------------------------------------------------------------------------------------------



