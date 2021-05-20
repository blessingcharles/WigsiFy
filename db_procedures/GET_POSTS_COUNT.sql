--------------- getting posts count ---------------

DELIMITER $$
DROP PROCEDURE IF EXISTS posts_count_proc;
CREATE PROCEDURE posts_count_proc()
  BEGIN
    DECLARE p_type INT;
    DECLARE p_count INT(10) UNSIGNED;
    DECLARE done INT DEFAULT 0;
    DECLARE posts CURSOR FOR
      SELECT
        userid,
        COUNT(*)
      FROM posts
      GROUP BY userid;
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

    TRUNCATE posts_count;

    OPEN posts;
    
    REPEAT
      FETCH posts
      INTO p_type, p_count;
      IF NOT done
      THEN
        INSERT INTO posts_count
        SET
          userid  = p_type,
          count = p_count;
      END IF;
    UNTIL done
    END REPEAT;
    
    CLOSE posts;
  END $$
DELIMITER ;

