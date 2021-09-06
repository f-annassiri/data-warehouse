DROP TABLE vancouver;

CREATE TABLE vancouver(item VARCHAR(15), periode DATE, qte INTEGER);

INSERT INTO vancouver VALUES('Tel. fixe', TO_DATE('10/1999', 'MM/YYYY'), 15);


INSERT INTO vancouver VALUES('Tel. portable', TO_DATE('12/1999', 'MM/YYYY'), 5);

INSERT INTO vancouver VALUES('PC bureau', TO_DATE('06/1999', 'MM/YYYY'), 2);

INSERT INTO vancouver VALUES('PC portable', TO_DATE('07/1999', 'MM/YYYY'), 8);

INSERT INTO vancouver VALUES('Micro onde', TO_DATE('02/1999', 'MM/YYYY'), 10);

INSERT INTO vancouver VALUES('Mixeur', TO_DATE('02/2000', 'MM/YYYY'), 5);

INSERT INTO vancouver VALUES('Grille-pain', TO_DATE('01/2000', 'MM/YYYY'), 5);

