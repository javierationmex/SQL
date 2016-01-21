#TABLE CREATION

CREATE TABLE Customer
(
cid CHAR(9),
name VARCHAR(20),
address VARCHAR(80),
PRIMARY KEY (cid)
);

CREATE TABLE Publisher
(
pid CHAR(10),
name VARCHAR(30),
address VARCHAR(80),
phone CHAR(10),
PRIMARY KEY (pid)
);

CREATE TABLE Book
(
isbn CHAR(10),
title VARCHAR(100),
type VARCHAR(15),
price DECIMAL(10,2),
pub_date DATE,
pid CHAR(10),
PRIMARY KEY (isbn),
FOREIGN KEY (pid) REFERENCES Publisher(pid)
);

CREATE TABLE Purchases
(
tran_id CHAR(10),
tran_date DATE,
tran_time TIME,
cid CHAR(9),
isbn CHAR(10),
PRIMARY KEY (tran_id),
FOREIGN KEY (cid) REFERENCES Customer(cid),
FOREIGN KEY (isbn) REFERENCES Book(isbn)
);

CREATE TABLE Author
(
aid CHAR(4),
fname VARCHAR(15),
lname VARCHAR(15),
PRIMARY KEY (aid)
);

CREATE TABLE Written_by
(
isbn VARCHAR(10),
aid CHAR(4),
PRIMARY KEY (isbn,aid),
FOREIGN KEY (isbn) REFERENCES Book(isbn),
FOREIGN KEY (aid) REFERENCES Author(aid)
);

CREATE TABLE Editor
(
eid CHAR(4),
fname VARCHAR(15),
lname VARCHAR(15),
PRIMARY KEY (eid)
);

CREATE TABLE Edited_by
(
eid CHAR(4),
isbn CHAR(10),
PRIMARY KEY (eid,isbn),
FOREIGN KEY (eid) REFERENCES Editor(eid),
FOREIGN KEY (isbn) REFERENCES Book(isbn)
);
