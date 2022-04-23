USE HospitalManagement
GO

-------------------------------------------------------- DML : TABLE VALUES INSERTION ---------------------------------------------------------

-- Insert values to table HospitalEmployee
INSERT INTO HospitalEmployee VALUES
('10000','Ralph', 'Wright','8573331245', 'DR');

INSERT INTO HospitalEmployee VALUES
('10001','Fred', 'Wood','6172331245', 'DR');

INSERT INTO HospitalEmployee VALUES
('10002','Diana', 'White','6172721245', 'DR');

INSERT INTO HospitalEmployee VALUES
('10003','Kevin', 'James','6172300245', 'DR');

INSERT INTO HospitalEmployee VALUES
('10004','Jane', 'Hill','8573331247', 'DR');

INSERT INTO HospitalEmployee VALUES
('10005','Kathy', 'Brown','8573331232', 'DR');

INSERT INTO HospitalEmployee VALUES
('10006','Judy', 'Allen','6172331000', 'DR');

INSERT INTO HospitalEmployee VALUES
('10007','Roger', 'Taylor','8573331221', 'DR');

INSERT INTO HospitalEmployee VALUES
('10008','Benjamin', 'Cox','6172300245', 'DR');

INSERT INTO HospitalEmployee VALUES
('10009','Joshua', 'Brown','6172331245', 'DR');

INSERT INTO HospitalEmployee VALUES
('10010','Henry', 'Fox','8570331245', 'ST');

INSERT INTO HospitalEmployee VALUES
('10011','Irene', 'White','8573330945', 'ST');

INSERT INTO HospitalEmployee VALUES
('10012','Kelly', 'Moore','6172331321', 'ST');

INSERT INTO HospitalEmployee VALUES
('10013','Antonio', 'Adams','6172331838', 'ST');

INSERT INTO HospitalEmployee VALUES
('10014','Lily', 'Thomas','6172312909', 'ST');

INSERT INTO HospitalEmployee VALUES
('10015','Jeffery', 'King','6172331345', 'ST');

INSERT INTO HospitalEmployee VALUES
('10016','Nicole', 'Mason','8573239186', 'ST');

INSERT INTO HospitalEmployee VALUES
('10017','Matthew', ' Taylor','6172331232', 'ST');

INSERT INTO HospitalEmployee VALUES
('10018','Patrick', 'King','6172331257', 'ST');

INSERT INTO HospitalEmployee VALUES
('10019','Paula', 'Hill','6172331080', 'ST');

INSERT INTO HospitalEmployee VALUES
('10020','Charles', 'Jones','8573331111', 'ST');

INSERT INTO HospitalEmployee VALUES
('10021','Shawn', 'Wood','6172331888', 'ST');

INSERT INTO HospitalEmployee VALUES
('10022','Mark', 'Green','6172331999', 'ST');

INSERT INTO HospitalEmployee VALUES
('10023','James', 'Allen','8573330018', 'ST');

INSERT INTO HospitalEmployee VALUES
('10024','Lily', 'Adams','6172331222', 'ST');

INSERT INTO HospitalEmployee VALUES
('10025','Jane', 'Fox','8573331737', 'ST');

SELECT * FROM HospitalEmployee;

----Insert values to table HospitalStaff
INSERT INTO HospitalStaff VALUES
('10010', 'Nurse');

INSERT INTO HospitalStaff VALUES
('10011', 'Head Nurse');

INSERT INTO HospitalStaff VALUES
('10012', 'HR');

INSERT INTO HospitalStaff VALUES
('10013', 'Customer Service');

INSERT INTO HospitalStaff VALUES
('10014', 'Cook');

INSERT INTO HospitalStaff VALUES
('10015', 'Head Cook');

INSERT INTO HospitalStaff VALUES
('10016', 'Nurse');

INSERT INTO HospitalStaff VALUES
('10017', 'Nurse');

INSERT INTO HospitalStaff VALUES
('10018', 'Nurse');

INSERT INTO HospitalStaff VALUES
('10019', 'Customer Service');

INSERT INTO HospitalStaff VALUES
('10020', 'Supervisor');

INSERT INTO HospitalStaff VALUES
('10021', 'Administrator');

INSERT INTO HospitalStaff VALUES
('10022', 'Supervisor');

INSERT INTO HospitalStaff VALUES
('10023', 'Nurse');

INSERT INTO HospitalStaff VALUES
('10024', 'HR');

INSERT INTO HospitalStaff VALUES
('10025', 'Head Supervisor');

SELECT * FROM HospitalStaff;

----Insert values to table Doctor
INSERT INTO Doctor VALUES
('10000', 'Allergists');

INSERT INTO Doctor VALUES
('10001', 'Infectious disease');

INSERT INTO Doctor VALUES
('10002', 'Cardiologists');

INSERT INTO Doctor VALUES
('10003', 'Obstetrician');

INSERT INTO Doctor VALUES
('10004', 'Dentist');

INSERT INTO Doctor VALUES
('10005', 'Dermatologists');

INSERT INTO Doctor VALUES
('10006', 'Cardiologists');

INSERT INTO Doctor VALUES
('10007', 'Dentist');

INSERT INTO Doctor VALUES
('10008', 'Infectious disease');

INSERT INTO Doctor VALUES
('10009', 'Allergists');

SELECT * FROM Doctor;

--Insert Table Patient Values
INSERT INTO Patient VALUES
('Johnny', 'Griffiths','Male', '7023796353','1399 Hall Street','Las Vegas','NV','89119' );

INSERT INTO Patient VALUES
('Eva', 'Wilson','Female', '6548234153','599 Cambridge Street','Cambridge','MA','02141' );

INSERT INTO Patient VALUES
('Jesse', 'Khan','Male', '9176815532','1096 Layman Court','New York','NY','10001' );

INSERT INTO Patient VALUES
('Russel', 'Ward', 'Other', '6176508140','4385 Joanne Lane','Boston','MA','02110' );

INSERT INTO Patient VALUES
('Judith', 'Cox', 'Female', '5134534421','185 Longview Road','West Tisbury','MA','02568' );

INSERT INTO Patient VALUES
('Ryan', 'Morgan', 'Male', '8573503743','442 Kennedy Court','Westborough','MA','01581' );

INSERT INTO Patient VALUES
('Rose', 'Bailey', 'Female', '8573503740','4692 Valley View Drive','Boston','MA','02114' );

INSERT INTO Patient VALUES
('Chris', 'Moore', 'Male', '7812405863','2703 Burke Street','Quincy','MA','02169' );

INSERT INTO Patient VALUES
('Joan', 'Allen','Female', '6178659747','2472 Rainy Day Drive','Boston','MA','02110' );

INSERT INTO Patient VALUES
('Diana', 'Maeshall','Female', '3524037492','1477 Rhapsody Street','Waterville','NY','12480' );

INSERT INTO Patient VALUES
('Patrick', 'Lee', 'Male', '5856723441','2252  James Street','Rochester','NY','14620' );

INSERT INTO Patient VALUES
('Judy', 'Simpson', 'Female', '6961435637','210 Green Road','Manchester','CT','06042' );

SELECT * FROM Patient;

--Insert values to table Prescription
INSERT INTO Prescription VALUES
('100000', '10003','1/5/2015');

INSERT INTO Prescription VALUES
('100003', '10000','8/13/2017');

INSERT INTO Prescription VALUES
('100002', '10000','6/7/2018');

INSERT INTO Prescription VALUES
('100008', '10007','11/11/2020');

INSERT INTO Prescription VALUES
('100009', '10003','5/1/2021');

INSERT INTO Prescription VALUES
('100001', '10006','10/1/2020');

INSERT INTO Prescription VALUES
('100010', '10002','7/1/2019');

INSERT INTO Prescription VALUES
('100008', '10004','5/27/2019');

INSERT INTO Prescription VALUES
('100005', '10005','10/1/2017');

INSERT INTO Prescription VALUES
('100000', '10008','8/19/2018');

INSERT INTO Prescription VALUES
('100006', '10001','3/1/2020');

INSERT INTO Prescription VALUES
('100000', '10008','8/19/2018');

INSERT INTO Prescription VALUES
('100006', '10001','3/1/2020');

INSERT INTO Prescription VALUES
('100000', '10008','8/19/2018');

INSERT INTO Prescription VALUES
('100006', '10001','3/1/2020');

INSERT INTO Prescription VALUES
('100007', '10004','7/13/2019');

INSERT INTO Prescription VALUES
('100011', '10009','1/1/2022');

INSERT INTO Prescription VALUES
('100003', '10001','6/22/2018');

INSERT INTO Prescription VALUES
('100000', '10003','2/11/2021');

INSERT INTO Prescription VALUES
('100000', '10005','3/23/2018');

SELECT * FROM Prescription;


--Insert values to table Medicine
INSERT INTO Medicine VALUES
('allopurinol', 'medicine for metabolic arthritis','tab');

INSERT INTO Medicine VALUES
('allopurinol', 'Anti-infectives','mg');

INSERT INTO Medicine VALUES
('albendazole', 'Anti-infectives','mg');

INSERT INTO Medicine VALUES
('mitigare', 'medicine for metabolic arthritis','tab');

INSERT INTO Medicine VALUES
('celecoxib', 'non-steroidal anti-inflammatory drugs','tab');

INSERT INTO Medicine VALUES
('cisplatin', 'anticancer drugs','ml');

INSERT INTO Medicine VALUES
('ibuprofen', 'non-steroidal anti-inflammatory drugs','ml');

INSERT INTO Medicine VALUES
('docetaxel', 'mitotic inhibitor','ml');

INSERT INTO Medicine VALUES
('amoxicillin', 'penicillin','mg');

INSERT INTO Medicine VALUES
('hysingla', 'Opioid pain reliever, long-acting', 'tab');

INSERT INTO Medicine VALUES
('caspofungin', 'Antifungal','ml');


SELECT * FROM Medicine;

--Insert values to table Case
INSERT INTO [Case] VALUES
(null, '100000', '10002','12/9/2019');

INSERT INTO [Case] VALUES
('1000000', '100000', '10003','1/5/2015');

INSERT INTO [Case] VALUES
('1000001', '100003', '10000','8/13/2017');

INSERT INTO [Case] VALUES
(null, '100011', '10001','8/13/2020');

INSERT INTO [Case] VALUES
(null, '100003', '10000','7/7/2021');

INSERT INTO [Case] VALUES
(null, '100004', '10006','5/23/2018');

INSERT INTO [Case] VALUES
('1000002', '100002', '10000','6/7/2018');

INSERT INTO [Case] VALUES
('1000003', '100008', '10007','11/11/2020');

INSERT INTO [Case] VALUES
(null, '100009', '10002','12/1/2017');

INSERT INTO [Case] VALUES
('1000004', '100009', '10003','5/1/2021');

INSERT INTO [Case] VALUES
('1000005', '100001', '10006','10/1/2020');

INSERT INTO [Case] VALUES
(null, '100000', '10004','3/13/2020');

INSERT INTO [Case] VALUES
('1000006', '100010', '10002','7/1/2019');

INSERT INTO [Case] VALUES
('1000007', '100008', '10004','5/27/2019');

INSERT INTO [Case] VALUES
(null, '100011', '10005','9/22/2019');

INSERT INTO [Case] VALUES
(null, '100010', '10004','4/9/2020');

INSERT INTO [Case] VALUES
('1000008', '100005', '10005','10/1/2017');

INSERT INTO [Case] VALUES
('1000009', '100000', '10008','8/19/2018');

INSERT INTO [Case] VALUES
('1000010', '100006', '10001','3/1/2020');

INSERT INTO [Case] VALUES
('1000011', '100007', '10004','7/13/2019');

INSERT INTO [Case] VALUES
(null, '100008', '10010','8/11/2021');

INSERT INTO [Case] VALUES
('1000012', '100011', '10009','1/1/2022');

INSERT INTO [Case] VALUES
('1000013', '100003', '10001','6/22/2018');

INSERT INTO [Case] VALUES
('1000014', '100000', '10003','2/11/2021');

INSERT INTO [Case] VALUES
(null, '100007', '10002','11/19/2019');

INSERT INTO [Case] VALUES
('1000015', '100000', '10005','3/23/2018');

SELECT * FROM [Case];

--Insert values to table StaffAssigned
INSERT INTO StaffAssigned VALUES
('10010', '2000001', '1/5/2015');

INSERT INTO StaffAssigned VALUES
('10013', '2000001', '1/7/2015');

INSERT INTO StaffAssigned VALUES
('10017', '2000007', '11/11/2020');

INSERT INTO StaffAssigned VALUES
('10011', '2000008', '2/1/2017');

INSERT INTO StaffAssigned VALUES
('10010', '2000010', '10/1/2020');

INSERT INTO StaffAssigned VALUES
('10019', '2000010', '10/1/2020');

INSERT INTO StaffAssigned VALUES
('10011', '2000010', '10/4/2020');

INSERT INTO StaffAssigned VALUES
('10023', '2000005', '5/23/2018');

INSERT INTO StaffAssigned VALUES
('10018', '2000012', '7/1/2019');

INSERT INTO StaffAssigned VALUES
('10016', '2000003', '8/13/2020');

INSERT INTO StaffAssigned VALUES
('10023', '2000021', '1/1/2022');

SELECT * FROM StaffAssigned;

--Insert Table Pharmacy Values
INSERT INTO Pharmacy VALUES
('Care Health', '8577537370','3466 Cedar Lane','Boston','MA','02115' );

INSERT INTO Pharmacy VALUES
('Pharmacy Emergency', '6548230053','219 Cambridge Street','Cambridge','MA','02141' );

INSERT INTO Pharmacy VALUES
('Choose Health', '6176111532','3558 Cedar Lane','Boston','MA','02115' );

INSERT INTO Pharmacy VALUES
('CVS', '6176500000','44100 Joanne Lane','Boston','MA','02110' );

INSERT INTO Pharmacy VALUES
('MACARE', '8574534421','185 Longview Road','West Tisbury','MA','02568' );

INSERT INTO Pharmacy VALUES
('BostonCare', '8572233443','2355 Christie Way','Boston','MA','02119' );

INSERT INTO Pharmacy VALUES
('AllBest', '8573003000','3213 Valley View Drive','Boston','MA','02114' );

INSERT INTO Pharmacy VALUES
('Walgreen', '7812405563','2700 Burke Street','Quincy','MA','02169' );

INSERT INTO Pharmacy VALUES
('HospitalMedicine1', '6170000001','3466 Cedar Lane','Boston','MA','02114' );

INSERT INTO Pharmacy VALUES
('HospitalMedicine2', '6170000002','3466 Cedar Lane','Boston','MA','02114' );


INSERT INTO Pharmacy VALUES
('CVS', '5856723888','2222 James Street','Rochester','NY','14620');

INSERT INTO Pharmacy VALUES
('HospitalMedicine3', '6170000003','3466 Cedar Lane','Boston','MA','02114' );

SELECT * FROM Pharmacy;

--Insert values to table StaffAssigned
INSERT INTO PreMedicine VALUES
('1000000', '10000', '2');

INSERT INTO PreMedicine VALUES
('1000000', '10005', '3');

INSERT INTO PreMedicine VALUES
('1000000', '10009', '5');

INSERT INTO PreMedicine VALUES
('1000001', '10008', '3');

INSERT INTO PreMedicine VALUES
('1000001', '10007', '10');

INSERT INTO PreMedicine VALUES
('1000002', '10001', '1');

INSERT INTO PreMedicine VALUES
('1000003', '10007', '3');

INSERT INTO PreMedicine VALUES
('1000004', '10006', '4');

INSERT INTO PreMedicine VALUES
('1000004', '10002', '4');

INSERT INTO PreMedicine VALUES
('1000005', '10008', '2');

INSERT INTO PreMedicine VALUES
('1000006', '10007', '4');

INSERT INTO PreMedicine VALUES
('1000006', '10000', '3');

INSERT INTO PreMedicine VALUES
('1000006', '10010', '2');

INSERT INTO PreMedicine VALUES
('1000007', '10007', '5');

INSERT INTO PreMedicine VALUES
('1000007', '10000', '2');

INSERT INTO PreMedicine VALUES
('1000008', '10004', '2');

INSERT INTO PreMedicine VALUES
('1000009', '10001', '3');

INSERT INTO PreMedicine VALUES
('1000010', '10002', '10');

INSERT INTO PreMedicine VALUES
('1000011', '10007', '30');

INSERT INTO PreMedicine VALUES
('1000012', '10007', '25');

INSERT INTO PreMedicine VALUES
('1000013', '10000', '3');

INSERT INTO PreMedicine VALUES
('1000013', '10001', '5');

INSERT INTO PreMedicine VALUES
('1000014', '10007', '50');

INSERT INTO PreMedicine VALUES
('1000015', '10007', '20');

INSERT INTO PreMedicine VALUES
('1000015', '10002', '5');

SELECT * FROM PreMedicine;


--Insert values to table MediStorage

INSERT INTO MediStorage VALUES
('100', '10000', '1000'); --Pharmacy 1

INSERT INTO MediStorage VALUES
('100', '10001', '2000');

INSERT INTO MediStorage VALUES
('100', '10002', '2500');

INSERT INTO MediStorage VALUES
('100', '10003', '100');

INSERT INTO MediStorage VALUES
('100', '10004', '50');

INSERT INTO MediStorage VALUES
('100', '10006', '500');

INSERT INTO MediStorage VALUES
('100', '10007', '5000');

INSERT INTO MediStorage VALUES
('100','10008', '2000');


INSERT INTO MediStorage VALUES  --Pharmacy 2
('101', '10000', '5');


INSERT INTO MediStorage VALUES
('101', '10001', '50');


INSERT INTO MediStorage VALUES
('101', '10003', '200');

INSERT INTO MediStorage VALUES
('101', '10004', '1000');

INSERT INTO MediStorage VALUES
('101', '10005', '500');

INSERT INTO MediStorage VALUES
('101', '10006', '100');

INSERT INTO MediStorage VALUES
('101','10007', '5000');

INSERT INTO MediStorage VALUES
('101','10009', '500');

INSERT INTO MediStorage VALUES
('101','10010', '200');

INSERT INTO MediStorage VALUES
('102', '10000', '500'); --Pharmacy 3

INSERT INTO MediStorage VALUES
('102', '10003', '20');

INSERT INTO MediStorage VALUES
('102', '10004', '5000');

INSERT INTO MediStorage VALUES
('102', '10005', '5000');

INSERT INTO MediStorage VALUES
('102','10009', '100');

INSERT INTO MediStorage VALUES
('102','10010', '200');

INSERT INTO MediStorage VALUES
('103', '10000', '500'); --Pharmacy 4

INSERT INTO MediStorage VALUES
('103', '10001', '150'); 

INSERT INTO MediStorage VALUES
('103', '10003', '200'); 

INSERT INTO MediStorage VALUES
('103', '10005', '500'); 

INSERT INTO MediStorage VALUES
('103', '10006', '100'); 

INSERT INTO MediStorage VALUES
('103', '10008', '100'); 

INSERT INTO MediStorage VALUES
('103', '10009', '500'); 

INSERT INTO MediStorage VALUES 
('104', '10001', '150'); --Pharmacy 5

INSERT INTO MediStorage VALUES 
('104', '10003', '20');

INSERT INTO MediStorage VALUES 
('104', '10005', '50');

INSERT INTO MediStorage VALUES 
('104', '10007', '1000');

INSERT INTO MediStorage VALUES 
('104', '10009', '500');

INSERT INTO MediStorage VALUES 
('105', '10000', '50'); --Pharmacy 6

INSERT INTO MediStorage VALUES 
('105', '10001', '500');

INSERT INTO MediStorage VALUES 
('105', '10003', '100');

INSERT INTO MediStorage VALUES 
('105', '10004', '1200');

INSERT INTO MediStorage VALUES 
('105', '10005', '50');

INSERT INTO MediStorage VALUES 
('105', '10006', '500');

INSERT INTO MediStorage VALUES 
('105', '10007', '500');

INSERT INTO MediStorage VALUES 
('105', '10009', '1500');

INSERT INTO MediStorage VALUES 
('105', '10010', '1000');


INSERT INTO MediStorage VALUES 
('106', '10007', '1000');--Pharmacy 7

INSERT INTO MediStorage VALUES 
('106', '10009', '2500');

INSERT INTO MediStorage VALUES 
('107', '10004', '200');--Pharmacy 8

INSERT INTO MediStorage VALUES 
('107', '10005', '0');

INSERT INTO MediStorage VALUES 
('107', '10006', '100');

INSERT INTO MediStorage VALUES 
('107', '10007', '400');

INSERT INTO MediStorage VALUES 
('107', '10009', '1000');

INSERT INTO MediStorage VALUES 
('108', '10000', '50');--Pharmacy 9

INSERT INTO MediStorage VALUES 
('108', '10001', '100');

INSERT INTO MediStorage VALUES 
('108', '10004', '100');

INSERT INTO MediStorage VALUES 
('108', '10005', '0');

INSERT INTO MediStorage VALUES 
('108', '10006', '100');

INSERT INTO MediStorage VALUES 
('108', '10007', '10000');

INSERT INTO MediStorage VALUES 
('108', '10009', '200');

INSERT INTO MediStorage VALUES 
('109', '10005', '10');--Pharmacy 10

INSERT INTO MediStorage VALUES 
('109', '10006', '500');

INSERT INTO MediStorage VALUES 
('109', '10007', '400');

INSERT INTO MediStorage VALUES 
('109', '10009', '5000');

INSERT INTO MediStorage VALUES 
('110', '10000', '500');--Pharmacy 11

INSERT INTO MediStorage VALUES 
('110', '10001', '150');

INSERT INTO MediStorage VALUES 
('110', '10003', '0');

INSERT INTO MediStorage VALUES 
('110', '10005', '500');

INSERT INTO MediStorage VALUES 
('110', '10006', '100');

INSERT INTO MediStorage VALUES 
('110', '10007', '2000');

INSERT INTO MediStorage VALUES 
('110', '10009', '10');

INSERT INTO MediStorage VALUES 
('110', '10010', '200');

SELECT * FROM MediStorage;

--Insert values to table Order
INSERT INTO [Order] VALUES
('100000', '1000000', '1/6/2015');

INSERT INTO [Order] VALUES
('100003', '1000001', '8/14/2017');

INSERT INTO [Order] VALUES
('100002', '1000002', '6/8/2018');

INSERT INTO [Order] VALUES
('100008', '1000003', '11/11/2020');

INSERT INTO [Order] VALUES
('100009', '1000004', '5/3/2021');

INSERT INTO [Order] VALUES
('100005', '1000008', '10/1/2017');

INSERT INTO [Order] VALUES
('100000', '1000009', '8/20/2018');

INSERT INTO [Order] VALUES
('100006', '1000010', '3/5/2020');

INSERT INTO [Order] VALUES
('100007', '1000011', '7/13/2019');

INSERT INTO [Order] VALUES
('100011', '1000012', '1/3/2022');

SELECT * FROM [Order];

--Insert values to table OrderLine
INSERT INTO OrderLine VALUES 
('1000', '10000', '2'); --order 1000

INSERT INTO OrderLine VALUES 
('1000', '10005', '3');

INSERT INTO OrderLine VALUES 
('1000', '10009', '5');

INSERT INTO OrderLine VALUES 
('1001', '10008', '3'); --order 1001

INSERT INTO OrderLine VALUES 
('1002', '10001', '1'); --order 1002

INSERT INTO OrderLine VALUES 
('1003', '10007', '3'); --order 1003

INSERT INTO OrderLine VALUES 
('1004', '10006', '4'); --order 1004

INSERT INTO OrderLine VALUES 
('1004', '10002', '4');

INSERT INTO OrderLine VALUES 
('1005', '10004', '2'); --order 1005

INSERT INTO OrderLine VALUES 
('1006', '10001', '3'); --order 1006

INSERT INTO OrderLine VALUES 
('1007', '10002', '10'); --order 1007

INSERT INTO OrderLine VALUES 
('1008', '10007', '30'); --order 1008

INSERT INTO OrderLine VALUES 
('1009', '10007', '25'); --order 1009

SELECT * FROM OrderLine;

--Insert Table Supplier Values
INSERT INTO Supplier VALUES
('Vitality Medical', '8003975899','7910 South 3500 East Suite C','Salt Lake','UT','84121');

INSERT INTO Supplier VALUES
('Save Rite Medical', '7185340607','16810th St','Brooklyn','NY','11215');

INSERT INTO Supplier VALUES
('Discount Medical Supplies', '8884446741','757 Manatee Bay Drive','Boynton Beach','FL','84121');

INSERT INTO Supplier VALUES
('The Betty Mills Company', '8002388964','25th Ave','San Mateo','CA','94403');

INSERT INTO Supplier VALUES
('Home Care Delivered', '8005655644','11013 West Broad St.','Glen Allen','VA','23060');

INSERT INTO Supplier VALUES
('Cascade Healthcare Solutions', '4252353877','1035 Andover','Tukwila','WA','98188');

INSERT INTO Supplier VALUES
('Allegro Medical', '8886744380','360 Veterans Parkway, Suite 115','Bolingbrook','UT','84121');

INSERT INTO Supplier VALUES
('Johnson & Johnson', '8665652873','31 Technology','Irvine','CA','92618');

INSERT INTO Supplier VALUES
('Paratek Pharmaceuticals', '6178076600','75 Park Plaza 3rd Floor','Boston','MA','02116');

INSERT INTO Supplier VALUES
('SelectX Pharmaceuticals', '5087980216','800 Boylston St','Boston','MA','02119');

SELECT * FROM Supplier;

--Insert values to table SupplyCert
INSERT INTO SupplyCert VALUES
('100', '10000', '1000','1/10/2015', null); --Pharmacy 1
INSERT INTO SupplyCert VALUES
('100', '10000', '1002','10/4/2016', null);
INSERT INTO SupplyCert VALUES
('100', '10000', '1009','11/1/2016', null);

INSERT INTO SupplyCert VALUES
('100', '10001', '1008','1/1/2017', '1/1/2022');
INSERT INTO SupplyCert VALUES
('100', '10001', '1009','12/1/2016', null);

INSERT INTO SupplyCert VALUES
('100', '10002', '1001','1/1/2017', null);

INSERT INTO SupplyCert VALUES
('100', '10003', '1003','1/1/2020', null);
INSERT INTO SupplyCert VALUES
('100', '10003', '1004','1/1/2021', null);
INSERT INTO SupplyCert VALUES
('100', '10003', '1006','5/1/2017', '5/1/2020');


INSERT INTO SupplyCert VALUES
('100', '10004', '1005','1/1/2016', '1/1/2017');
INSERT INTO SupplyCert VALUES
('100', '10004', '1000','1/1/2017', null);


INSERT INTO SupplyCert VALUES
('100', '10006', '1000','1/1/2015', null);

INSERT INTO SupplyCert VALUES
('100', '10007','1002','1/1/2017', '2/1/2017');
INSERT INTO SupplyCert VALUES
('100', '10007','1005','1/1/2017', null);

INSERT INTO SupplyCert VALUES
('100','10008', '1002','1/1/2015', null);


INSERT INTO SupplyCert VALUES 
('101','10000', '1008','2/1/2022', null); --Pharmacy 2
INSERT INTO SupplyCert VALUES 
('101','10000', '1009','1/1/2015', '2/15/2022');


INSERT INTO SupplyCert VALUES
('101', '10001', '1003','7/15/2016', null);


INSERT INTO SupplyCert VALUES
('101', '10003', '1008','7/1/2016', null);

INSERT INTO SupplyCert VALUES
('101', '10004', '1005', '1/1/2016','7/1/2021');
INSERT INTO SupplyCert VALUES
('101', '10004', '1007', '7/1/2015', null);

INSERT INTO SupplyCert VALUES
('101', '10005', '1005', '1/1/2016',null);

INSERT INTO SupplyCert VALUES
('101', '10006', '1000', '1/1/2015','1/1/2019');
INSERT INTO SupplyCert VALUES
('101', '10006', '1008', '1/1/2018',null);
INSERT INTO SupplyCert VALUES
('101', '10006', '1009', '5/1/2019',null);

INSERT INTO SupplyCert VALUES
('101','10007',  '1009', '9/1/2018',null);

INSERT INTO SupplyCert VALUES
('101','10009','1004', '6/1/2019',null);
INSERT INTO SupplyCert VALUES
('101','10009','1007', '9/1/2021',null);

INSERT INTO SupplyCert VALUES
('101','10010', '1008', '9/1/2020',null);

INSERT INTO SupplyCert VALUES
('102', '10000', '1008', '9/1/2015',null); --Pharmacy 3
INSERT INTO SupplyCert VALUES
('102', '10000', '1009', '9/1/2017',null);

INSERT INTO SupplyCert VALUES
('102', '10003','1000', '9/1/2021',null);
INSERT INTO SupplyCert VALUES
('102', '10003','1001', '1/1/2016', '9/1/2021');

INSERT INTO SupplyCert VALUES
('102', '10004', '1000', '10/1/2016', null);

INSERT INTO SupplyCert VALUES
('102', '10005', '1004', '07/15/2017', null);

INSERT INTO SupplyCert VALUES
('102','10006', '1001', '02/15/2015', null);

INSERT INTO SupplyCert VALUES
('102','10009', '1003', '10/15/2021', null);

INSERT INTO SupplyCert VALUES
('102','10010','1008', '02/1/2015', null);

INSERT INTO SupplyCert VALUES
('102','10010','1009', '04/1/2019', '05/1/2019');

INSERT INTO SupplyCert VALUES
('103', '10000','1009', '04/1/2017',null); --Pharmacy 4
INSERT INTO SupplyCert VALUES
('103', '10000','1000', '04/1/2021','10/1/2021'); 

INSERT INTO SupplyCert VALUES
('103', '10001', '1001', '1/1/2022',null); 

INSERT INTO SupplyCert VALUES
('103', '10003', '1002', '1/1/2018',null); 
INSERT INTO SupplyCert VALUES
('103', '10003', '1008', '5/1/2019','11/1/2021'); 

INSERT INTO SupplyCert VALUES
('103', '10005', '1009', '12/15/2015',null); 

INSERT INTO SupplyCert VALUES
('103', '10006', '1006', '10/15/2017',null); 

INSERT INTO SupplyCert VALUES
('103', '10008', '1008', '8/1/2018',null); 

INSERT INTO SupplyCert VALUES
('103', '10009', '1005', '10/20/2017',null); 

INSERT INTO SupplyCert VALUES 
('104', '10001','1000', '10/1/2016',null); --Pharmacy 5
INSERT INTO SupplyCert VALUES 
('104', '10001', '1008', '10/1/2016','10/1/2017');

INSERT INTO SupplyCert VALUES 
('104', '10003', '1001', '1/1/2016',null);

INSERT INTO SupplyCert VALUES 
('104', '10005',  '1009', '1/15/2018',null);

INSERT INTO SupplyCert VALUES 
('104', '10007',  '1003', '4/20/2017',null);

INSERT INTO SupplyCert VALUES 
('104', '10009', '1004', '6/1/2018',null);

INSERT INTO SupplyCert VALUES 
('105', '10000',  '1000', '6/1/2015',null); --Pharmacy 6
INSERT INTO SupplyCert VALUES 
('105', '10000',  '1009', '6/1/2018',null);


INSERT INTO SupplyCert VALUES 
('105', '10001', '1007', '8/1/2019',null);

INSERT INTO SupplyCert VALUES 
('105', '10003', '1009', '3/15/2017',null);

INSERT INTO SupplyCert VALUES 
('105', '10004', '1008', '3/1/2016','3/1/2022');
INSERT INTO SupplyCert VALUES 
('105', '10004', '1009', '1/1/2015',null);

INSERT INTO SupplyCert VALUES 
('105', '10005', '1007', '1/1/2017',null);

INSERT INTO SupplyCert VALUES 
('105', '10006', '1001', '9/15/2018',null);

INSERT INTO SupplyCert VALUES 
('105', '10007',  '1003', '3/15/2017',null);

INSERT INTO SupplyCert VALUES 
('105', '10009', '1008', '2/15/2021',null);

INSERT INTO SupplyCert VALUES 
('105', '10010', '1008', '1/15/2020',null);


INSERT INTO SupplyCert VALUES 
('106', '10007', '1000', '6/6/2015',null);--Pharmacy 7
INSERT INTO SupplyCert VALUES 
('106', '10007', '1008', '1/15/2020',null);
INSERT INTO SupplyCert VALUES 
('106', '10007', '1009', '6/15/2021',null);

INSERT INTO SupplyCert VALUES 
('106', '10009', '1001','11/15/2020',null);

INSERT INTO SupplyCert VALUES 
('107', '10004', '1001','5/15/2016',null);--Pharmacy 8

INSERT INTO SupplyCert VALUES 
('107', '10005', '1002','2/15/2017',null);

INSERT INTO SupplyCert VALUES 
('107', '10006', '1000','5/1/2020',null);
INSERT INTO SupplyCert VALUES 
('107', '10006', '1007','6/15/2021',null);
INSERT INTO SupplyCert VALUES 
('107', '10006', '1009','5/1/2021',null);

INSERT INTO SupplyCert VALUES 
('107', '10007','1001','6/1/2021',null);

INSERT INTO SupplyCert VALUES 
('107', '10009', '1004','9/15/2019',null);

INSERT INTO SupplyCert VALUES 
('108', '10000', '1005','9/1/2017',null);--Pharmacy 9

INSERT INTO SupplyCert VALUES 
('108', '10001', '1008','2/1/2020',null);

INSERT INTO SupplyCert VALUES 
('108', '10004','1009','4/1/2016',null);

INSERT INTO SupplyCert VALUES 
('108', '10005', '1008','4/15/2018',null);

INSERT INTO SupplyCert VALUES 
('108', '10006', '1006','6/15/2017',null);

INSERT INTO SupplyCert VALUES 
('108', '10007', '1002','7/1/2019', null);

INSERT INTO SupplyCert VALUES 
('108', '10009', '1004','5/15/2018', null);

INSERT INTO SupplyCert VALUES 
('109', '10005','1009','4/15/2017',null);--Pharmacy 10

INSERT INTO SupplyCert VALUES 
('109', '10006', '1000','4/1/2018','12/1/2022');
INSERT INTO SupplyCert VALUES 
('109', '10006', '1008','1/1/2019',null);
INSERT INTO SupplyCert VALUES 
('109', '10006', '1009','3/15/2019',null);

INSERT INTO SupplyCert VALUES 
('109', '10007', '1001','10/15/2017',null);

INSERT INTO SupplyCert VALUES 
('109', '10009', '1003','10/1/2016',null);

INSERT INTO SupplyCert VALUES 
('110', '10000', '1000','5/1/2015',null);--Pharmacy 11

INSERT INTO SupplyCert VALUES 
('110', '10001', '1001','1/1/2016',null);

INSERT INTO SupplyCert VALUES 
('110', '10003', '1008','1/15/2018',null);

INSERT INTO SupplyCert VALUES 
('110', '10005', '1009','11/15/2017',null);

INSERT INTO SupplyCert VALUES 
('110', '10006', '1005','10/1/2016',null);
INSERT INTO SupplyCert VALUES 
('110', '10006', '1006','1/20/2022',null);
INSERT INTO SupplyCert VALUES 
('110', '10006', '1007','1/1/2015','1/1/2022');


INSERT INTO SupplyCert VALUES 
('110', '10007', '1008','12/1/2016','7/1/2021');
INSERT INTO SupplyCert VALUES 
('110', '10007', '1009','12/15/2020',null);

INSERT INTO SupplyCert VALUES 
('110', '10009', '1000','11/1/2016',null);

INSERT INTO SupplyCert VALUES 
('110', '10010','1006','1/20/2020',null);

SELECT * FROM SupplyCert;















