use sameer;
use cybrom;
/*delimiter //
create procedure getsalary  salary int as 
begin
select name,age from dept where salary = @ salary;
end //
delimiter ;*/

DELIMITER &&  
CREATE PROCEDURE get_merit_student1 ()  
BEGIN  
    SELECT age FROM dept WHERE name='komal' ;  
    /*SELECT COUNT(stud_code) AS Total_Student FROM student_info;*/    
END &&  
DELIMITER ;  

CALL get_merit_student1();  

DELIMITER &&  
CREATE PROCEDURE get_merit_student3 (in var1 varchar(10))  
BEGIN  
    SELECT age FROM dept WHERE name= var1;  
END &&  
DELIMITER ;  

CALL get_merit_student3('komal');

drop procedure get_merit_student2;

DELIMITER &&  
CREATE PROCEDURE get_merit_student4(out komalage int)  
BEGIN  
    SELECT age into komalage FROM dept WHERE name='komal' ;  
END &&  
DELIMITER ;  

CALL get_merit_student4(@M);
select @M;

select *from dept;

DELIMITER &&  
CREATE PROCEDURE get_merit_student5(inout var1 varchar(10))  
BEGIN  
    SELECT age into var1 FROM dept WHERE name= var1 ;  
END &&  
DELIMITER ;  

set @M='komal';
CALL get_merit_student5(@M);
select @M;

set @name='komal';
CALL get_merit_student5(@name);
select @name;

DELIMITER &&  
CREATE PROCEDURE get_merit_student6(inout var1 int,name1 varchar(10))  
BEGIN  
    SELECT age into var1 FROM dept WHERE name= name1 ;  
END &&  
DELIMITER ; 
CALL get_merit_student(@age, 'komal');
select @age;


DELIMITER &&  
CREATE PROCEDURE get_merit_student8(inout var1 int,inout var2 int,name1 varchar(10))  
BEGIN  
    SELECT age,salary into var1,var2 FROM dept WHERE name= name1 ;  
END &&  
DELIMITER ; 
set @salary=;
CALL get_merit_student6(@age,'komal');
select @age,@salary;

select * from dept;