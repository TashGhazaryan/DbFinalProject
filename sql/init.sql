CREATE TABLE authors (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));

CREATE TABLE categories (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));

CREATE TABLE locations (
  id INT NOT NULL AUTO_INCREMENT,
  `start` INT NOT NULL,
  `end` INT NOT NULL,
  PRIMARY KEY (id),
    ON DELETE SET NULL
    ON UPDATE SET NULL);


CREATE TABLE books (
  id INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  total_amount INT NOT NULL,
  available_amount INT NOT NULL,
  sub_category INT NOT NULL,
  author_id INT NOT NULL,
  PRIMARY KEY (id),
  CREATE INDEX index4 on books(`name`)
    FOREIGN KEY (sub_category)
    REFERENCES sub_categories (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (author_id)
    REFERENCES authors (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  blocked BOOLEAN NOT NULL DEFAULT 0,
  PRIMARY KEY (id));

CREATE TABLE borrows (
  user_id INT NOT NULL,
  book_id INT NOT NULL,
  take_date DATE NOT NULL,
  return_date DATE NOT NULL,
  return_status BOOLEAN NOT NULL DEFAULT 0,
  PRIMARY KEY (user_id, book_id),
    FOREIGN KEY (user_id)
    REFERENCES users (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (book_id)
    REFERENCES books (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE black_lists (
  user_id INT NOT NULL,
  end_date DATE NOT NULL,
  PRIMARY KEY (user_id),
    FOREIGN KEY (user_id)
    REFERENCES users (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


ALTER TABLE sub_categories 
ADD COLUMN location_id INT NULL AFTER category_id;

ALTER TABLE sub_categories 
  FOREIGN KEY (location_id)
  REFERENCES locations (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE books 
CHANGE COLUMN total_amount total_amount INT(11) NOT NULL DEFAULT 1 ,
CHANGE COLUMN available_amount available_amount INT(11) NOT NULL DEFAULT 1 ;