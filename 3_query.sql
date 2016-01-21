#QUERIES

#1)
SELECT e.eid, e.fname, e.lname
FROM Editor as e, Edited_by as ed
WHERE e.eid = ed.eid and
      ed.isbn = '8330418998';

#2)
SELECT c.name, p.tran_id, b.title
FROM Customer as c, Purchases as p, Book as b
WHERE b.type = 'Novel' and
      b.isbn = p.isbn and
      c.cid = p.cid
ORDER BY c.name desc;

#3)
SELECT p.name, p.address
FROM Publisher as p, Book as b
WHERE b.pid = p.pid and
      b.type = 'Textbook';

#4)
SELECT a.aid, a.fname, a.lname, count(*)
FROM Author as a, Book as b, Written_by as w
WHERE b.type = 'Novel' and
      a.aid = w.aid and
      w.isbn = b.isbn and
      2 < (SELECT count(*)
           FROM Book
           WHERE type = 'Novel');

#5)
SELECT a.fname, a.lname
FROM Author as a, Written_by as w, Book as b
WHERE b.title = 'Fundamentals of Database Systems'
and   w.isbn = b.isbn and
      a.aid = w.aid;

#6)
SELECT b.title, b.type, b.isbn
FROM Book as b, Author as a, Written_by as w
WHERE a.fname = 'Jeff' and
      a.lname = 'Smith' and
      w.aid = a.aid and
      b.isbn = w.isbn;

#7)
SELECT p.name, p.phone
FROM Publisher as p, Book as b
WHERE b.type = 'Novel' and
      b.pid = p.pid;

#8)
SELECT Max(b.price)
FROM Book as b, Author as a, Written_by as w
WHERE a.fname = 'Jeff' and
      a.lname = 'Smith' and
      b.isbn = w.isbn and
      w.aid = a.aid;

#9)
SELECT eid, count(*)
FROM Edited_by
GROUP BY eid
HAVING count(*) > 2;
