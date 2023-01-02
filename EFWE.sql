create database payroll_services;

show databases;

use payroll_services;

CREATE TABLE Employee_Payroll
     (id int not null auto_increment,
     name varchar(50) not null,
     salary Double not null,
     StartDate Date not null,
     primary key(id)
     );


DESCRIBE Employee_Payroll;

INSERT INTO Employee_Payroll (name,salary,StartDate) VALUES
     ('Ajit',12000,'2017-03-31'),
     ('Nupur',19000,'2023-04-11'),
     ('Kapil',47000,'2012-02-18');
     
   select * from Employee_Payroll;
   
   SELECT salary FROM Employee_Payroll WHERE name = 'Ajit';
   
   SELECT salary FROM Employee_Payroll WHERE StartDate BETWEEN CAST('2011-01-01' AS DATE) AND DATE(NOW());
     
     ALTER TABLE Employee_Payroll ADD gender char(1) NOT NULL;
     
     DESCRIBE Employee_Payroll;
     
     UPDATE Employee_Payroll SET gender = 'M' WHERE name = 'Ajit';
     
     UPDATE Employee_Payroll SET gender = 'F' WHERE name = 'Nupur';
     
     UPDATE Employee_Payroll SET gender = 'M' WHERE name = 'Kapil';
     
    select * from Employee_Payroll; 
     
   select sum(salary) from Employee_Payroll Where gender = 'M' group by gender;  
   
   select sum(salary) from Employee_Payroll Where gender = 'F' group by gender;
   
   select avg(salary) from Employee_Payroll Where gender = 'M' group by gender;
   
   select min(salary) from Employee_Payroll Where gender = 'M' group by gender;
   
   select max(salary) from Employee_Payroll Where gender = 'M' group by gender;
     
    select count(salary) from Employee_Payroll Where gender = 'M' group by gender; 
    
    select count(salary) from Employee_Payroll Where gender = 'F' group by gender;
    
    ALTER TABLE Employee_Payroll ADD phone_number VARCHAR(250) AFTER name;
    
    ALTER TABLE Employee_Payroll ADD address VARCHAR(250) AFTER phone_number;
    
    ALTER TABLE Employee_Payroll ADD department VARCHAR(250) AFTER address;
    
    ALTER TABLE Employee_Payroll ALTER address SET DEFAULT 'TBD';
    
    DESCRIBE Employee_Payroll;
    
    ALTER TABLE Employee_Payroll RENAME COLUMN salary TO basic_pay;
    
    ALTER TABLE Employee_Payroll ADD deductions Double NOT NULL AFTER basic_pay;
    
    ALTER TABLE Employee_Payroll ADD taxable_pay Double NOT NULL AFTER deductions;
    
    ALTER TABLE Employee_Payroll ADD tax Double NOT NULL AFTER taxable_pay;
    
    
    ALTER TABLE Employee_Payroll ADD net_pay Double NOT NULL AFTER tax;
    
    select * from Employee_Payroll;
    
    