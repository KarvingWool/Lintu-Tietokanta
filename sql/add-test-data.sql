INSERT INTO Laji (lajinimi, latina, parimaara, lasna)
values ('Sinisorsa', 'jokamus paikkamas', '200000', 'I-XII');

INSERT INTO Laji (lajinimi, latina, parimaara, lasna)
values ('Maakotka', 'Iso Lintumus', '300', 'IV-XI');

INSERT INTO Laji (lajinimi, latina, parimaara, lasna)
values ('Kurki', 'Lolitus puki', '5000', 'III-IX');

INSERT INTO Kayttaja (kayttajatunnus, yllapitaja, nimi, sahkoposti)
VALUES ('xvax', TRUE, 'Jesse V‰is‰nen', 'pilipali@fin.fi');

INSERT INTO Kayttaja (kayttajatunnus, yllapitaja, nimi, sahkoposti)
VALUES ('lulu', FALSE, 'MERJA MARJA', 'pup@jap.fi');

INSERT INTO Esiintymisalue
VALUES ('Etel‰-Suomi');

Insert INTO Esiintymisalue
VALUES ('Ahvenanmaa');

INSERT INTO Esiintymisalue
VALUES ('Lappi');

INSERT INTO Elinymparisto
VALUES ('Suo');

INSERT INTO Elinymparisto
VALUES ('Saaristo');

INSERT INTO Elinympariso
VALUES ('Mets‰');

INSERT INTO LajinAlueet
VALUES ('Kurki', 'Etel‰-Suomi');

Insert INTO LajinAlueet
Values ('Kurki', 'Lappi');

INSERT INTO LajinAlueet
Values ('MaaKotka','Ahvenanmaa');

INSERT INTO LajinElinymparisto
VALUES ('Maakotka', 'Saaristo');

INSERT INTO LajinElinymparisto
VALUES ('Maakotka', 'Etel‰-Suomi');

INSERT INTO LajinElinymparisto
VALUES ('Sinisorsa', 'Saaristo');

INSERT INTO Havainto (laji, PVM, aika, lukumaara, paikkakunta, paikantarkennus, havainnontekijannimi, havainnontekijantunnus, pesa)
VALUES ('Kurki', '11-11-2013', '19:39', '6', 'Helsinki', 'Esplanaadinkadun p‰‰ss‰', 'Jesse V‰is‰nen', 'xvax', FALSE);

INSERT INTO Havainto (laji, PVM, aika, lukumaara, paikkakunta, paikantarkennus, havainnontekijannimi, havainnontekijantunnus, pesa)
VALUES ('Kurki', '19-09-2014', '10:39', '16', 'Porvoo', 'Pelolla', 'Merja Marja', 'lulu', TRUE);

INSERT INTO Havainto (laji, PVM, aika, lukumaara, paikkakunta, paikantarkennus, havainnontekijannimi, havainnontekijantunnus, pesa)
VALUES ('Maakotka', '10-10-2014', '19:00', '2', 'Eurajoki', 'S-Marketin p‰‰ll‰', 'Jesse V‰is‰nen', 'xvax', FALSE);

INSERT INTO Havainto (laji, PVM, aika, lukumaara, paikkakunta, paikantarkennus, havainnontekijannimi, havainnontekijantunnus, pesa)
VALUES ('Sinisorsa', '01-10-2014', '15:50', '403', 'Mikkeli', 'Kaikkialla', 'Merja Marja', 'lulu', FALSE);