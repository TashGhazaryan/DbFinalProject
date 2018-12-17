DROP TRIGGER IF EXISTS borrows_AFTER_INSERT;
DELIMITER $$
USE library$$
CREATE TRIGGER borrows_AFTER_INSERT AFTER INSERT ON borrows FOR EACH ROW
BEGIN
UPDATE books
           SET available_amount = available_amount-1
           WHERE id = NEW.book_id;
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS borrows_AFTER_UPDATE;
DELIMITER $$
USE library$$
CREATE TRIGGER borrows_AFTER_UPDATE AFTER UPDATE ON borrows FOR EACH ROW
BEGIN
  UPDATE books
            SET available_amount = available_amount+1
            WHERE id = NEW.book_id;
END; $$
DELIMITER ;


SET GLOBAL event_scheduler = ON;
CREATE EVENT e_change_blocked  
    ON SCHEDULE
      EVERY 24 HOUR 
    DO
      UPDATE users SET blocked=false WHERE users.id IN (
          SELECT user_id FROM black_lists WHERE DATE(end_date) < CURDATE()
      )


DELIMITER $$
CREATE EVENT e_add_blocked  
    ON SCHEDULE
      EVERY 24 HOUR 
    DO
      BEGIN
        UPDATE users SET blocked=true WHERE users.id IN (SELECT DISTINCT user_id FROM borrows WHERE DATE(return_date) < CURDATE()) AND return_status=0;
        INSERT INTO black_lists(user_id, end_date)
        SELECT * FROM (
          (SELECT DISTINCT user_id FROM borrows WHERE DATE(return_date) < CURDATE()) t1,
          (SELECT DATE_ADD(CURDATE(), INTERVAL 5 DAY) as 'end_date') t2
        );
      END$$
DELIMITER ;