-- create function
DELIMITER //
CREATE FUNCTION year_difference(y INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result = TIMESTAMPDIFF(YEAR, STR_TO_DATE(CONCAT(y, '-01-01'), '%Y-%m-%d'), CURDATE());
    RETURN result;
END //
DELIMITER ;
