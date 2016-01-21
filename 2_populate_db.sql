#POPULATING

INSERT INTO Editor(eid,fname,lname)
VALUES 
(1989,'John','Smith'),
(2522,'Javier','Garrido'),
(1233,'Alex','Brown'),
(1114,'Lucy','Red'),
(2222,'Kristin','Hainline')
;

INSERT INTO Book(isbn,title,type,price,pub_date,pid)
VALUES
('8330418998','The Little Mermaid',
 'Fiction','9.99','1989-02-15','1111111111'),
('1920151723','The Jungle Book',
 'Fiction','10.99', '1988-05-22','2222222222'),
('1293912391','Who Is My Father',
 'Novel','29.99', '1788-03-12','3333333333'),
('4523425231','Calculus 3',
 'Textbook','599.99','1999-07-10','1111111111'),
('1231231231','Fundamentals of Database Systems',
 'Textbook','299.99','1888-10-10','4444444444'),
('3151212311','Why, Oh Why Me!?!',
 'Novel','5.99','1999-02-02','5555555555'),
('1231251511','Beauty and the Beast',
 'Fiction','15.99','1988-05-22','6666666666'),
('3968928592','The Woman in the Forest',
 'Novel','35.99','2003-09-21','7777777777')

;

INSERT INTO Edited_by(eid,isbn)
VALUES
('2222','8330418998'),
('2222','1920151723'),
('2222','1293912391'),
('1989','4523425231')
;

INSERT INTO Customer(cid,name,address)
VALUES
('111111111','Paul Rodriguez',
 '1900 Straight Lane, Sacramento CA'),
('222222222','Robert Limpton',
 '2323 Doubleback Street, Sacramento CA'),
('333333333','Albus Dumbledore',
 '1212 Hogwarts Castle, Hogwarts')
;

INSERT INTO Purchases(tran_id,tran_date,tran_time,cid,isbn)
VALUES
('1111111111','2014-02-13','07:33:12',
 '111111111','1293912391'),
('2222222222','2013-11-22','09:54:13',
 '333333333','3968928592')
;

INSERT INTO Publisher(pid,name,address,phone)
VALUES
('1111111111','Ron Burgondy',
 '4531 Jokes Lane, Sacramento CA','2091349878'),
('4444444444','Josh Rotor',
 '3399 Lishter Road, Sacramento CA','2099893432'),
('3333333333','Ralph Trick',
 '231 Broll Street, Sacramento CA', '2091134232'),
('5555555555','Peter Melark',
 '123 Main Street, Sacramento CA', '9167583391')
;

INSERT INTO Author(aid,fname,lname)
VALUES
('9978','Roger','Trenton'),
('1235','Jeff','Smith'),
('5131','Ruppert','Bingo')
;

INSERT INTO Written_by(isbn,aid)
VALUES
('1231231231','9978'),
('8330418998','1235'),
('1920151723','1235'),
('3151212311','5131'),
('1293912391','5131'),
('3968928592','5131')
;

