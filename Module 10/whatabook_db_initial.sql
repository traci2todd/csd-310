-- drop test user if exists 
DROP USER IF EXISTS 'whatabook_user'@'localhost';

-- create whatabook_user and grant them all privileges to the whatabook database 
CREATE USER 'whatabook_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MySQL8IsGreat!';

-- grant all privileges to the whatabook database to user whatabook_user on localhost 
GRANT ALL PRIVILEGES ON whatabook.* TO'whatabook_user'@'localhost';

-- drop contstraints if they exist
ALTER TABLE wishlist DROP FOREIGN KEY fk_book;
ALTER TABLE wishlist DROP FOREIGN KEY fk_user;

-- drop tables if they exist
DROP TABLE IF EXISTS store;
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS wishlist;
DROP TABLE IF EXISTS user;

/*
    Create table(s)
*/
CREATE TABLE store (
    store_id    INT             NOT NULL    AUTO_INCREMENT,
    locale      VARCHAR(500)    NOT NULL,
    PRIMARY KEY(store_id)
);

CREATE TABLE book (
    book_id     INT             NOT NULL    AUTO_INCREMENT,
    book_name   VARCHAR(200)    NOT NULL,
    author      VARCHAR(200)    NOT NULL,
    details     VARCHAR(500),
    PRIMARY KEY(book_id)
);

CREATE TABLE user (
    user_id         INT         NOT NULL    AUTO_INCREMENT,
    first_name      VARCHAR(75) NOT NULL,
    last_name       VARCHAR(75) NOT NULL,
    PRIMARY KEY(user_id) 
);

CREATE TABLE wishlist (
    wishlist_id     INT         NOT NULL    AUTO_INCREMENT,
    user_id         INT         NOT NULL,
    book_id         INT         NOT NULL,
    PRIMARY KEY (wishlist_id),
    CONSTRAINT fk_book
    FOREIGN KEY (book_id)
        REFERENCES book(book_id),
    CONSTRAINT fk_user
    FOREIGN KEY (user_id)
        REFERENCES user(user_Id)
);

/*
    insert store record 
*/
INSERT INTO store(store_id, locale)
    VALUES('3550 1st Ave, Lake Charles, LA');

/*
    insert book records 
*/
INSERT INTO book(book_id, book_name, details, author)
    VALUES('1', 'History of Lake Charles', 'The history of the town of Lake Charles.', 'T.B. Porter');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('2','A Boy and His Best Friend', 'The story of a young boy and his dog as they journey through adolescence.', 'Justin White');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('3','Mysteries of Oak Island', 'The historical mystery surrounding the treasure hidden on Oak Island.', 'Nathan Mhire');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('4', 'The Magical Ride', 'The story of a young couple exploring a hidden tunnel in the Alps.', 'Wendy Cox');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('5', 'Hystory of Cape Cod', 'The history of the town of Cape Cod.', 'Amanda Jinks');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('6', 'The River Runs Wild', 'The story of a family and their adventures down the Mississippi River.' , 'Alex Box');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('7', 'The Hunting Grounds of Del Rio TX', 'A detailed account of the hunting ranches spread throughout Del Rio, TX.', 'Brian Todd');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('8', 'Sharks in the Gulf of Mexico', 'A personal encounter of sharks in the Gulf of Mexico.', 'Brayson Todd');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('9', 'History of Dinosaurs Located in Lake Charles', 'The history of dinosaur fossils discovered in Lake Charles, LA.', 'Tyson Todd');

/*
    insert user
*/ 
INSERT INTO user(user_id, first_name, last_name) 
    VALUES('1', 'Jessica', 'Chapman');

INSERT INTO user(user_id, first_name, last_name) 
    VALUES('2', 'Traci', 'Longhorn');

INSERT INTO user(user_id, first_name, last_name) 
    VALUES('3', 'Xavier', 'Todd');
