USE okna;

INSERT INTO kupec (ID_kupca, Podjetje, Ime, Priimek, EMAIL, Tel_stevilka, Naslov, Posta, Postna_st, Država)
VALUES('000001', 'Veka', 'žiga', 'Vajs', 'Žiga.Vajs@Veka.com', '042 232 231', 'Bohinj 3', 'Bohinjsko jezero', '4265', 'Slovenija');

INSERT INTO delovno_mesto (ID_delovnega_mesta, Ime_mesta, Stroj)
VALUES('00001', '/', '/'),
	('00002','Delovna miza 1','/'),
	('00003','Delovna postaja 1','Vakumsko dvihalo'),
	('00004', 'Pisarna','/'),
	('00005', 'CNC žaga 1','CNC žaga'),
    ('00006', 'Skladišče 1','Viličar'),
    ('00007', 'Delovna postaja 5','Žaga za železo');
    
INSERT INTO zaposlitev (ID_zaposlitev, Naziv_zaposlitve, ID_delovnega_mesta)
VALUES('00001', 'Monter', '00001'),
	('00002','Sestavljalec','00002'),
	('00003','Steklitev','00003'),
	('00004', 'Vodja proizvodnje','00004'),
	('00005', 'CNC tehnik','00005'),
    ('00006', 'Skladiščnik','00006'),
    ('00007', 'Obdelovalec železa','00007');
    
INSERT INTO zaposleni (ID_zaposlenega,Ime, Priimek, EMAIL, Tel_stevilka, ID_zaposlitev)
VALUES('00001', 'Luka', 'Primic', 'Luka.Primic@okna.com', '040 233 244', '00001'),
	('00002', 'Matic', 'Golf', 'Matic.Golf@okna.com', '041 423 534', '00002'),
    ('00003', 'Gašper', 'Vladič', 'Gašper.Vladič@okna.com', '040 323 828', '00003'),
    ('00004', 'Matej', 'Glav', 'Matej.Glav@okna.com', '041 436 676', '00004'),
    ('00005', 'Tomaž', 'Gornji', 'Tomaž.Gornji@okna.com', '041 423 124', '00005'),
    ('00006', 'Toni', 'Hitrec', 'Toni.Hitrec@okna.com', '032 224 898', '00006'),
    ('00007', 'Tanja', 'Globinc', 'Toni.Hitrec@okna.com', '032 224 898', '00007');

INSERT INTO monter (ID_monter, ID_zaposlenega, Službeno_vozilo)
VALUES('00001', '00001', 'VW KOMBI 1');

INSERT INTO skladišče (ID_artikla, Ime_artikla, Skladiščno_mesto ,Količina, Datum_dostave)
VALUES('000001','40x40 tanko železo','A1',40,'2021-12-15'),
	('000002','38x38 tanko železo','A1',30,'2021-12-05'),
	('000003','L profil 1','A1',20,'2021-11-17'),
	('000004','Dvoslojno Termoglass','H1',25,'2021-12-10'),
    ('000005','Gonilka','B1',23,'2021-12-05'),
	('000006','Voglanik','B1',20,'2021-11-29'),
    ('000007','Gonilka','B1',23,'2021-12-05'),
	('000008','Vodilo škarje','B1',20,'2021-12-07'),
	('000009','Škarje','B1',15,'2021-12-10'),
	('000010','Spona škarje','B1',20,'2021-11-04'),
    ('000011','Vogalnik škarje','B1',23,'2021-12-05'),
	('000012','Zadnja zapora','B1',20,'2021-12-23'),
	('000013','Kotna spona','B1',20,'2021-11-05'),
    ('000014','Krilni ležaj','B1',20,'2021-11-01'),
    ('000015','Zapirni elementi','B1',20,'2021-08-14'),
    ('000016','Okvir','VE1' ,24,'2021-10-12'),
	('000017','Pokončnik','VE1' ,21,'2021-10-25'),
	('000018','Krilo','VE1' ,44,'2021-10-21'),
	('000019','Steklitvena lestvica','VE1' ,23,'2021-11-24'),
	('000020','Ojačitveni profil za okvir','VE1' ,54,'2021-11-28'),
	('000021','Ojačitveni profil za pokončnik','VE1' ,24,'2021-11-26'),
	('000022','Ojačitveni profil za krilo','VE1',42,'2021-11-30');


INSERT INTO naročilo (ID_naročila, ID_kupca, Način_dostave, Datum, ID_zaposlenega)
VALUES('000001','000001','Montaža', '2022-01-06', '00004');

INSERT INTO proizvodi (ID_proizvoda, Ime_proizvoda, Širina, Dolžina, Višina, Barva, Število_kosov,Opombe, ID_zaposlenega, ID_naročila)
VALUES('000001', 'Dvokrilno Okno',105,1050,1350, 'Bela',1,'/', '00002', '000001' );

INSERT INTO ojačitev (ID_železa, ID_artikla, Dolžina, Število_kosov, ID_zaposlenega, ID_proizvoda)
VALUES('000001', '000001', 1350, 2, '00007', '000001'),
	('000002','000002',950,1, '00007', '000001'),
	('000003','000003',930,1,'00007', '000001');


INSERT INTO okovje (ID_kompleta, ID_artikla,Število_kosov, ID_proizvoda)
VALUES('000001', '000005',5, '000001'),
		('000002', '000006',8, '000001'),
		('000003', '000007',8, '000001'),
        ('000004', '000008',8, '000001'),
		('000005', '000009',6, '000001'),
        ('000006', '000010',6, '000001'),
		('000007', '000011',6, '000001'),
        ('000008', '000012',8, '000001'),
		('000009', '000013',5, '000001'),
        ('000010', '000014',5, '000001'),
		('000011', '000015',2,'000001');
        
INSERT INTO steklitev (ID_steklo, ID_artikla, Tip_stekla, Širina, Višina,Število_kosov, ID_zaposlenega, ID_proizvoda)
VALUES('000001', '000004', 'Dvoslojno', 1000, 1300 ,1,'00003', '000001' );
 
INSERT INTO obdelava_profilov (ID_profila, ID_artikla, Ime_profila, Dolžina, Zaključek_profila, Barva, Število_kosov, ID_zaposlenega, ID_proizvoda)
VALUES('000001', '000002', 'Okvir', 1050, '/', 'Bela',2, '00005', '000001' ),
('000002', '000003', 'Pokončnik', 1050, 'Spojnik za pokončnik', 'Bela',2, '00005', '000001' ),
('000003', '000004', 'Krilo', 1050, '/', 'Bela',2, '00005', '000001' ),
('000004', '000002', 'Steklitvena lestvica', 1050, '/', 'Bela',1, '00005', '000001' ),
('000005', '000002', 'Ojačitveni profil za okvir', 1050, '/', 'Bela',1, '00005', '000001' ),
('000006', '000002', 'Ojačitveni profil za pokončnik', 1050, '/', 'Bela',1, '00005', '000001' ),
('000007', '000002', 'Ojačitveni profil za krilo', 1050, '/', 'Bela',1, '00005','000001' );

