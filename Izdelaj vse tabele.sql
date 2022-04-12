Use okna;
create table IF NOT EXISTS Kupec (
ID_kupca Char(6) not null,
Podjetje Char(35) not null,
Ime Char(15) not null,
Priimek Char(20) not null,
EMAIL Char(35) not null,
Tel_stevilka Char(12),
Naslov Char(25) not null,
Posta Char(20) not null,
Postna_St Char(10) not null,
Država Char(15) not null,
Primary key (ID_kupca)
);

create table IF NOT EXISTS Delovno_mesto(
ID_delovnega_mesta Char(5) not null,
Ime_mesta Char(30) not null,
Stroj Char(30) not null,
primary key (ID_delovnega_mesta)
);
create table IF NOT EXISTS Zaposlitev(
ID_zaposlitev Char(5) not null,
Naziv_zaposlitve Char (25) not null,
ID_delovnega_mesta Char(5) not null,
Primary Key (ID_zaposlitev),
foreign key (ID_delovnega_mesta) references Delovno_mesto(ID_delovnega_mesta)
);

create table IF NOT EXISTS Zaposleni(
ID_zaposlenega Char(5) not null,
Ime Char(15) not null,
Priimek Char(20) not null,
Starost Integer,
EMAIL Char(25) not null,
Tel_stevilka Char(12),
ID_zaposlitev Char(5) not null,
Primary Key (ID_zaposlenega),
foreign key (ID_zaposlitev) references Zaposlitev(ID_zaposlitev)
);

create table IF NOT EXISTS Monter (
ID_monter Char(5) not null,
ID_zaposlenega Char(6) not null,
Službeno_vozilo Char(25),
primary key (ID_monter),
foreign key (ID_zaposlenega) references Zaposleni(ID_zaposlenega)
);

create table IF NOT EXISTS Naročilo(
ID_naročila Char(6) not null,
ID_kupca Char(6) not null,
Način_dostave Char(16),
ID_monter Char(5),
Datum Date not null,
ID_zaposlenega Char(6) not null,
primary key (ID_naročila),
foreign key (ID_zaposlenega) references Zaposleni(ID_zaposlenega),
foreign key (ID_monter) references Monter(ID_monter),
foreign key (ID_kupca) references Kupec(ID_kupca)
);

create table IF NOT EXISTS Proizvodi(
ID_proizvoda Char(6) not null,
Ime_proizvoda Char(20) not null,
širina Integer not null,
Dolžina Integer not null,
Višina Integer not null,
Barva Char(15) not null,
Število_kosov Integer not null,
Opombe Char(255) ,
ID_zaposlenega Char(5) not null,
ID_naročila Char(6) not null,
primary key(ID_proizvoda),
foreign key (ID_zaposlenega) references Zaposleni(ID_zaposlenega),
foreign key (ID_naročila) references Naročilo(ID_naročila)
);

create table IF NOT EXISTS Skladišče(
ID_artikla Char(6) not null,
Ime_artikla Char(100) not null,
Skladiščno_mesto Char(4) not null,
Količina Integer not null,
Datum_dostave Date,
primary key (ID_artikla)
);

create table IF NOT EXISTS Obdelava_profilov(
ID_profila Char(6) not null,
ID_artikla Char(6) not null,
Ime_profila Char(100) not null,
Dolžina integer not null,
Zaključek_profila Char(20) not null,
Barva Char(15) not null,
Število_kosov Integer not null,
ID_zaposlenega Char(6) not null,
ID_proizvoda Char(6) not null,
primary key(ID_profila),
foreign key (ID_zaposlenega) references Zaposleni(ID_zaposlenega),
foreign key (ID_proizvoda) references Proizvodi(ID_proizvoda),
foreign key (ID_artikla) references Skladišče(ID_artikla)
);

create table IF NOT EXISTS Ojačitev(
ID_železa Char(6) not null,
ID_artikla Char(6) not null,
Dolžina integer not null, 
Število_kosov integer not null,
ID_zaposlenega Char(6) not null,
ID_proizvoda Char(6) not null,
primary key (ID_železa),
foreign key (ID_zaposlenega) references Zaposleni(ID_zaposlenega),
foreign key (ID_proizvoda) references Proizvodi(ID_proizvoda),
foreign key (ID_artikla) references Skladišče(ID_artikla)
);

create table IF NOT EXISTS Steklitev(
ID_steklo Char(6) not null,
ID_artikla Char(6) not null,
Tip_stekla Char(15) not null,
Širina Integer not null,
Višina Integer not null,
Število_kosov integer not null,
ID_zaposlenega Char(6) not null,
ID_proizvoda Char(6) not null,
primary key (ID_steklo),
foreign key (ID_zaposlenega) references Zaposleni(ID_zaposlenega),
foreign key (ID_proizvoda) references Proizvodi(ID_proizvoda),
foreign key (ID_artikla) references Skladišče(ID_artikla)
);

create table IF NOT EXISTS Okovje(
ID_kompleta Char(6) not null,
ID_artikla Char(6) not null,
Število_kosov integer not null,
ID_proizvoda Char(6) not null,
primary key (ID_kompleta),
foreign key (ID_proizvoda) references Proizvodi(ID_proizvoda),
foreign key (ID_artikla) references Skladišče(ID_artikla)
);
