
--------------------------- getting no of album count --------------


DELIMITER $$
DROP PROCEDURE IF EXISTS albums_count_proc;
CREATE PROCEDURE albums_count_proc()
  BEGIN
    DECLARE p_type INT;
    DECLARE p_count INT(10) UNSIGNED;
    DECLARE done INT DEFAULT 0;
    DECLARE albums CURSOR FOR
      SELECT
        userid,
        COUNT(*)
      FROM user_albums
      GROUP BY userid;
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

    TRUNCATE albums_count;

    OPEN albums;
    
    REPEAT
      FETCH albums
      INTO p_type, p_count;
      IF NOT done
      THEN
        INSERT INTO albums_count
        SET
          userid  = p_type,
          count = p_count;
      END IF;
    UNTIL done
    END REPEAT;
    
    CLOSE albums;
  END $$
DELIMITER ;


