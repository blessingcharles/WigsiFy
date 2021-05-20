
------------ UPDATE EMAIL TRIGGER --------------------
DELIMITER $$
CREATE TRIGGER validate_users_update
BEFORE UPDATE ON users FOR EACH ROW
BEGIN
	CALL validate_users(NEW.email);
END$$
DELIMITER ;

