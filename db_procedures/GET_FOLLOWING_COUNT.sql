
 ------------------- GET FOLLOWING COUNT ----------


DELIMITER $$
DROP PROCEDURE IF EXISTS followings_count_proc;
CREATE PROCEDURE followings_count_proc()
  BEGIN
    DECLARE p_type INT;
    DECLARE p_count INT(10) UNSIGNED;
    DECLARE done INT DEFAULT 0;
    DECLARE followings CURSOR FOR
      SELECT
        uid,
        COUNT(*)
      FROM friends 
      GROUP BY uid;
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

    TRUNCATE followings_count;

    OPEN followings;
    
    REPEAT
      FETCH followings
      INTO p_type, p_count;
      IF NOT done
      THEN
        INSERT INTO followings_count
        SET
          userid  = p_type,
          followingsCount = p_count;
      END IF;
    UNTIL done
    END REPEAT;
    
    CLOSE followings;
  END $$
DELIMITER ;

