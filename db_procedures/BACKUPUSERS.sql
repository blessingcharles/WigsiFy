
------  BACKUP USERS CURSOR DATA -----

    delimiter $$ 
    CREATE PROCEDURE backupusersCurs()  
    BEGIN  
    DECLARE d INT DEFAULT 0;  
    DECLARE c_id INT;  
    DECLARE c_name, c_email VARCHAR(20);  

    DECLARE Get_cur CURSOR FOR SELECT  id , name , email  FROM users;  
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'  
    SET d = 1;  
    DECLARE CONTINUE HANDLER FOR SQLSTATE '23000'  
    SET d = 1;  
    
	TRUNCATE Vbackupdata ;
    OPEN Get_cur;  
    lbl: LOOP  
    IF d = 1 THEN  
    LEAVE lbl;  
    END IF;  
    IF NOT d = 1 THEN  
      
    FETCH Get_cur INTO c_id, c_name, c_email;  
    INSERT INTO Vbackupdata VALUES(c_id, c_name, c_email);  
    END IF;  
    END LOOP;  
      
    CLOSE Get_cur;  
    END$$ 
	delimiter ; 

------------- calling the procedure ----------------

CALL backupusersCurs();  

