INSERT INTO Laji
values ('Sinisorsa', 'jokamus paikkamas', '200000', 'I-XII');

INSERT INTO Laji
values ('Maakotka', 'Iso Lintumus', '300', 'IV-XI');

INSERT INTO Laji
values ('Kurki', 'Lolitus puki', '5000', 'III-IX');

INSERT INTO Kayttaja
VALUES ('xvax', TRUE, 'Jesse Vaisanen', 'pilipali@fin.fi');

INSERT INTO Kayttaja
VALUES ('lulu', FALSE, 'MERJA MARJA', 'pup@jap.fi');

INSERT INTO Esiintymisalue
VALUES ('Etela-Suomi');

Insert INTO Esiintymisalue
VALUES ('Ahvenanmaa');

INSERT INTO Esiintymisalue
VALUES ('Lappi');

INSERT INTO Elinymparisto
VALUES ('Suo');

INSERT INTO Elinymparisto
VALUES ('Saaristo');

INSERT INTO Elinymparisto
VALUES ('Metsa');

INSERT INTO LajinAlueet
VALUES ('Kurki', 'Etela-Suomi');

Insert INTO LajinAlueet
Values ('Kurki', 'Lappi');

INSERT INTO LajinAlueet
Values ('Maakotka','Ahvenanmaa');

INSERT INTO LajinElinymparisto
VALUES ('Maakotka', 'Saaristo');

INSERT INTO LajinElinymparisto
VALUES ('Maakotka', 'Suo');

INSERT INTO LajinElinymparisto
VALUES ('Sinisorsa', 'Saaristo');

INSERT INTO Havainto 
VALUES (DEFAULT, 'Kurki', '11-11-2013', '19:39', '6', 'Helsinki', 'Esplanaadinkadun paassa', 'Jesse Vaisanen', 'xvax', FALSE);

INSERT INTO Havainto
VALUES (DEFAULT, 'Kurki', '19-09-2014', '10:39', '16', 'Porvoo', 'Pelolla', 'Merja Marja', 'lulu', TRUE);

INSERT INTO Havainto
VALUES (DEFAULT, 'Maakotka', '10-10-2014', '19:00', '2', 'Eurajoki', 'S-Marketin paalla', 'Jesse Vaisanen', 'xvax', FALSE);

INSERT INTO Havainto
VALUES (DEFAULT, 'Sinisorsa', '01-10-2014', '15:50', '403', 'Mikkeli', 'Kaikkialla', 'Merja Marja', 'lulu', FALSE);