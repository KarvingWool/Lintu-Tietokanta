CREATE TABLE Esiintymisalue (
esiintymisalue_Alue varchar(30) primary key
);
CREATE TABLE Elinymparisto (
elinymparisto_Elinymparisto varchar(30) primary key
);

CREATE TABLE Laji (
laji_lajinimi varchar(30) primary key,
laji_latina varchar(30) not null,
laji_parimaara int,
laji_lasna varchar(7)
);

CREATE TABLE Kayttaja (
kayttaja_kayttajatunnus varchar(32) primary key,
kayttaja_salasana varchar(32) not null,
kayttaja_yllapitaja boolean not null,
kayttaja_nimi varchar(50) not null,
kayttaja_sahkoposti varchar(30)
);

CREATE TABLE LajinAlueet (
lajinalueet_laji varchar(30),
lajinalueet_alue varchar(30),
PRIMARY KEY(lajinalueet_laji, lajinalueet_alue),
FOREIGN KEY(lajinalueet_alue) references Esiintymisalue(esiintymisalue_Alue),
FOREIGN KEY(lajinalueet_laji) references Laji(laji_lajinimi)
);

CREATE TABLE LajinElinymparisto (
LajinElinymparisto_laji varchar(30),
LajinElinymparisto_elinymparisto varchar(30),
PRIMARY KEY(LajinElinymparisto_laji, LajinElinymparisto_elinymparisto),
FOREIGN KEY(LajinElinymparisto_elinymparisto) references Elinymparisto(elinymparisto_elinymparisto),
FOREIGN KEY(LajinElinymparisto_laji) references Laji(laji_lajinimi)
);

CREATE TABLE Havainto (
havainto_havaintoID serial UNIQUE,
havainto_laji varchar(30) not null,
havainto_PVM date not null,
havainto_aika time not null,
havainto_lukumaara int not null,
havainto_paikkakunta varchar(30) not null,
havainto_paikantarkennus varchar(200),
havainto_havainnontekijannimi varchar(30)  not null,
havainto_havainnontekijantunnus varchar(32) not null,
havainto_pesa boolean not null,
PRIMARY KEY(havainto_havaintoID),
FOREIGN KEY(havainto_laji) references laji(laji_lajinimi),
FOREIGN KEY(havainto_havainnontekijantunnus) references kayttaja(kayttaja_kayttajatunnus)
);


 