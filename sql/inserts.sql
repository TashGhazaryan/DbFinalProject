INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`) VALUES ('1', 'AuthorName1', 'AuthorLastName1');
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`) VALUES ('2', 'AuthorName2', 'AuthorLastName2');
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`) VALUES ('3', 'AuthorName3', 'AuthorLastName3');
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`) VALUES ('4', 'AuthorName4', 'AuthorLastName4');
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`) VALUES ('5', 'AuthorName5', 'AuthorLastName5');

INSERT INTO `library`.`categories` (`id`, `name`) VALUES ('1', 'Category1');
INSERT INTO `library`.`categories` (`id`, `name`) VALUES ('2', 'Category2');
INSERT INTO `library`.`categories` (`id`, `name`) VALUES ('3', 'Category3');

INSERT INTO `library`.`locations` (`id`, `start`, `end`) VALUES ('1', '0', '10');
INSERT INTO `library`.`locations` (`id`, `start`, `end`) VALUES ('2', '10', '20');
INSERT INTO `library`.`locations` (`id`, `start`, `end`) VALUES ('3', '20', '30');
INSERT INTO `library`.`locations` (`id`, `start`, `end`) VALUES ('4', '30', '40');
INSERT INTO `library`.`locations` (`id`, `start`, `end`) VALUES ('5', '40', '50');
INSERT INTO `library`.`locations` (`id`, `start`, `end`) VALUES ('6', '50', '60');
INSERT INTO `library`.`locations` (`id`, `start`, `end`) VALUES ('7', '60', '70');
INSERT INTO `library`.`locations` (`id`, `start`, `end`) VALUES ('8', '70', '80');
INSERT INTO `library`.`locations` (`id`, `start`, `end`) VALUES ('9', '80', '90');
INSERT INTO `library`.`locations` (`id`, `start`, `end`) VALUES ('10', '90', '100');

INSERT INTO `library`.`sub_categories` (`id`, `name`, `category_id`, `location_id`) VALUES ('1', 'Sub1', '1','1');
INSERT INTO `library`.`sub_categories` (`id`, `name`, `category_id`, `location_id`) VALUES ('2', 'Sub2', '1', '2');
INSERT INTO `library`.`sub_categories` (`id`, `name`, `category_id`, `location_id`) VALUES ('3', 'Sub3', '2', '3');
INSERT INTO `library`.`sub_categories` (`id`, `name`, `category_id`, `location_id`) VALUES ('4', 'Sub4', '1', '4');
INSERT INTO `library`.`sub_categories` (`id`, `name`, `category_id`, `location_id`) VALUES ('5', 'Sub5', '3', '5');
INSERT INTO `library`.`sub_categories` (`id`, `name`, `category_id`, `location_id`) VALUES ('6', 'Sub6', '3', '6');
INSERT INTO `library`.`sub_categories` (`id`, `name`, `category_id`, `location_id`) VALUES ('7', 'Sub7', '3', '7');
INSERT INTO `library`.`sub_categories` (`id`, `name`, `category_id`, `location_id`) VALUES ('8', 'Sub8', '2', '8');
INSERT INTO `library`.`sub_categories` (`id`, `name`, `category_id`, `location_id`) VALUES ('9', 'Sub9', '2', '9');
INSERT INTO `library`.`sub_categories` (`id`, `name`, `category_id`, `location_id`) VALUES ('10', 'Sub10', '1', '10');


INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('1', 'User1', 'Email1', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('2', 'User2', 'Email2', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('3', 'User3', 'Email3', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('4', 'User4', 'Email4', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('5', 'User5', 'Email5', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('6', 'User6', 'Email6', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('7', 'User7', 'Email7', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('8', 'User8', 'Email8', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('9', 'User9', 'Email9', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('10', 'User10', 'Email10', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('11', 'User11', 'Email11', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('12', 'User12', 'Email12', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('13', 'User13', 'Email13', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('14', 'User14', 'Email14', '0');
INSERT INTO `library`.`users` (`id`, `name`, `email`, `disabled`) VALUES ('15', 'User15', 'Email15', '0');
