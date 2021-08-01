#UC1;
CREATE database Payroll_Service;
USE Payroll_Service;

#UC2;
CREATE TABLE employee_payroll
(
id int not null primary key auto_increment,
name Varchar(25),
salary double not null,
start DATE NOT NULL
);
Select * from employee_payroll;

#UC3;
insert into employee_payroll (name,salary,start) values ('Deepak','30000.00','2000-11-18');
insert into employee_payroll values ('2','Dhiraj','40000.00','2002-12-08');
insert into employee_payroll values ('3','Shridhar','60000.00','2003-01-20');
#UC4;
Select * from employee_payroll;

#UC5;
select salary from employee_payroll where name = 'Dhiraj';
WHERE start BETWEEN CAST('2000-11-18' AS DATE) AND DATE(NOW());

#UC6;
ALTER TABLE employee_payroll ADD Gender varchar(2);
update employee_payroll SET Gender = 'M' WHERE id = '1';
update employee_payroll SET Gender = 'F' WHERE id = '2';
update employee_payroll SET Gender = 'M' WHERE id = '3';

#UC7;
SELECT SUM(salary) from employee_payroll where Gender = 'M';
SELECT AVG(salary) from employee_payroll where Gender = 'M';
SELECT MIN(salary) from employee_payroll where Gender = 'M';
SELECT MAX(salary) from employee_payroll where Gender = 'M';

#UC8;
ALTER TABLE employee_payroll ADD Phone Double ;
ALTER TABLE employee_payroll ADD Address Varchar(255);
ALTER TABLE employee_payroll ADD department varchar(255) NOT NULL;
SELECT * FROM employee_payroll;
UPDATE employee_payroll SET Phone = '7038716093' where id = '1';
UPDATE employee_payroll SET Phone = '1234567890' where id = '2';
UPDATE employee_payroll SET Phone = '9876543210' where id = '3';
ALTER TABLE employee_payroll ALTER Address SET default 'Solapur';
UPDATE employee_payroll SET department = 'Software developer' where id = '1';
UPDATE employee_payroll SET department = 'Full stack Developer'WHERE id = '2';
UPDATE employee_payroll SET department = 'intern'WHERE id = '3';
SELECT * FROM employee_payroll;

#UC9;
ALTER TABLE employee_payroll ADD Basicpay double after department ;
ALTER TABLE employee_payroll ADD deduction  double ;
ALTER TABLE employee_payroll ADD taxablePay double ;
ALTER TABLE employee_payroll ADD tax double ;
ALTER TABLE employee_payroll ADD NetPay double;
UPDATE employee_payroll SET Basicpay = '25000' WHERE id = '1';
UPDATE employee_payroll SET Basicpay = '24000' WHERE id = '2';
UPDATE employee_payroll SET Basicpay = '23000' WHERE id = '3';
UPDATE employee_payroll SET deduction = '2500' WHERE id = '1';
UPDATE employee_payroll SET deduction = '2500' WHERE id = '2';
UPDATE employee_payroll SET deduction = '2500' WHERE id = '3';
UPDATE employee_payroll SET taxablePay = '1500' WHERE id = '3';
UPDATE employee_payroll SET taxablePay = '1400' WHERE id = '2';
UPDATE employee_payroll SET taxablePay = '1300' WHERE id = '1';
UPDATE employee_payroll SET tax = '500' WHERE id = '1';
UPDATE employee_payroll SET tax = '500' WHERE id = '2';
UPDATE employee_payroll SET tax = '500' WHERE id = '3';
UPDATE employee_payroll SET NetPay = '200' WHERE id = '1';
UPDATE employee_payroll SET NetPay = '200' WHERE id = '2';
UPDATE employee_payroll SET NetPay = '200' WHERE id = '3';
SELECT * FROM employee_payroll WHERE name = 'Deepak'