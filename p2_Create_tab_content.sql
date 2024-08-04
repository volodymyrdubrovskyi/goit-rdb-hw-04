INSERT INTO `librarymanagement`.`authors` (`author_name`) VALUES ('Cooper');
INSERT INTO `librarymanagement`.`authors` (`author_name`) VALUES ('Hunter');
INSERT INTO `librarymanagement`.`authors` (`author_name`) VALUES ('Popandopalo');
INSERT INTO `librarymanagement`.`authors` (`author_name`) VALUES ('Root');

INSERT INTO `librarymanagement`.`genres` (`genre_name`) VALUES ('horror');
INSERT INTO `librarymanagement`.`genres` (`genre_name`) VALUES ('fantastic');
INSERT INTO `librarymanagement`.`genres` (`genre_name`) VALUES ('historic');
INSERT INTO `librarymanagement`.`genres` (`genre_name`) VALUES ('documental');

INSERT INTO `librarymanagement`.`users` (`username`, `email`) VALUES ('Ivanov Ivan', 'ivan@google.com');
INSERT INTO `librarymanagement`.`users` (`username`, `email`) VALUES ('Petrov', 'pop@i.ua');
INSERT INTO `librarymanagement`.`users` (`username`, `email`) VALUES ('Sidorov', 'sidor@ukr.net');

INSERT INTO `librarymanagement`.`books` (`title`, `publication_year`, `author_id`, `genre_id`) VALUES ('Moon Life', 2003, '1', '1');
INSERT INTO `librarymanagement`.`books` (`title`, `publication_year`, `author_id`, `genre_id`) VALUES ('animal', 2021, '2', '4');
INSERT INTO `librarymanagement`.`books` (`title`, `publication_year`, `author_id`, `genre_id`) VALUES ('Around the world adwenture', 1998, '3', '3');
INSERT INTO `librarymanagement`.`books` (`title`, `publication_year`, `author_id`, `genre_id`) VALUES ('Hobbit', 1999, '4', '2');

INSERT INTO `librarymanagement`.`borrowed_books` (`book_id`, `user_id`, `borrow_date`, `return_date`) VALUES ('4', '1', '2023-08-01', '2024-06-01');