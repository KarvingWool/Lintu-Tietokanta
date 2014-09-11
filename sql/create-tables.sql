CREATE TABLE Esiintymisalue (
esiintymisalue_Alue varchar(30) primary key
);
CREATE TABLE Elinymparisto (
elinymparisto_Elinymparisto varchar(30) primary key
);
CREATE TABLE LajinAlueet (
lajinalueet.laji varchar(30) primary key,
lajinalueet.alue varchar(30) primary key,
FOREIGN KEY(lajinalueet_alue) references Esiintymisalue(esiintymisalue_alue),
FOREIGN KEY(lajinalueet_laji) references Laji(laji_laji)
);

CREATE TABLE LajinElinymparisto (
lajinelinymparisto.laji varchar(30) primary key,
lajinelinymparisto.elinymparisto varchar(30) primary key,
FOREIGN KEY(elinymparisto_alue) references Elinymparisto(elinymparisto_elinymparisto),
FOREIGN KEY(lajinelinymparisto_laji) references Laji(laji_laji)
);

CREATE TABLE Laji (
Laji_lajinimi varchar(30) primary key,
laji_latina varchar(30) not null,
laji_parimaara int,
laji_lasna varchar(7)
);

CREATE TABLE Havainto (
havainto_havaintoID serial primary key,
havainto_laji varchar(30) not null,
havainto_PVM date not null,
havainto_aika time not null,
havainto_lukumaara int not null,
havainto_paikkakunta varchar(30) not null,
havainto_paikantarkennus varchar(200),
havainto_havainnontekijannimi varchar(30)  not null,
havainto_havainnontekijantunnus varchar(32) not null,
havainto_pesa boolean not null,
FOREIGN KEY(havainto_laji) references laji(laji_laji),
FOREIGN KEY(havainto_havainnontekijantunnus) references kayttaja(kayttaja_kayttajatunnus)
);

CREATE TABLE Kayttaja (
kayttaja_kayttajatunnus varchar(32) primary key,
kayttaja_yllapitaja boolean not null,
kayttaja_nimi varchar(50) not null,
kayttaja_sahkoposti varchar(30)
);
 