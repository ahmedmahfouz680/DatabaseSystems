CREATE database LibrarySystem;
use LibrarySystem;

CREATE TABLE std (
  stdid INT primary key IDENTITY(1, 1),
  stdname VARCHAR(100)
);
CREATE TABLE book (
  bookid INT primary key IDENTITY(1, 1),
  bookname VARCHAR(100)
);
CREATE TABLE library (
  libid INT primary key IDENTITY(1, 1),
  place VARCHAR(100),
  fbookid int FOREIGN KEY REFERENCES book(bookid)
);
CREATE TABLE publisher (
  pbid INT primary key IDENTITY(1, 1),
  pname VARCHAR(100),
  fbookid int FOREIGN KEY REFERENCES book(bookid)
);
CREATE TABLE borrow (
  fbookid int FOREIGN KEY REFERENCES book(bookid),
  fstdid int FOREIGN KEY REFERENCES std(stdid)
);

INSERT INTO std(stdname) VALUES ("ahmed");
INSERT INTO std(stdname) VALUES ("ali");
INSERT INTO book(bookname) VALUES ("book1");
INSERT INTO book(bookname) VALUES ("book2");
INSERT INTO library(place,fbookid) VALUES ("giza",2);
INSERT INTO library(place,fbookid) VALUES ("giza",1);
INSERT INTO publisher(pname,fbookid) VALUES ("publisher1",2);
INSERT INTO publisher(pname,fbookid) VALUES ("publisher1",1);
INSERT INTO borrow(fbookid) VALUES (2);
INSERT INTO publisher(fbookid) VALUES (1);

SELECT * FROM std;
SELECT * FROM book;
SELECT * FROM library;
SELECT * FROM borrow;
SELECT * FROM publisher;