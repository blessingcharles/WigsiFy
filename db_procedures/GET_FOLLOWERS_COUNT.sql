
--------------------- GET FOLLOWERS COUNT ------------------

DELIMITER $$
DROP PROCEDURE IF EXISTS followers_count_proc;
CREATE PROCEDURE followers_count_proc()
  BEGIN
    DECLARE p_type INT;
    DECLARE p_count INT(10) UNSIGNED;
    DECLARE done INT DEFAULT 0;
    DECLARE followers CURSOR FOR
      SELECT
        follow,
        COUNT(*)
      FROM friends 
      GROUP BY follow;
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

    TRUNCATE followers_count;

    OPEN followers;
    
    REPEAT
      FETCH followers
      INTO p_type, p_count;
      IF NOT done
      THEN
        INSERT INTO followers_count
        SET
          userid  = p_type,
          followersCount = p_count;
      END IF;
    UNTIL done
    END REPEAT;
    
    CLOSE followers;
  END $$
DELIMITER ;

