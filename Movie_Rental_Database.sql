CREATE DATABASE swiat_filmow_barteklazarek;
CREATE TABLE klienci(
id_klienta int NOT NULL IDENTITY(1, 1),
imie VARCHAR(80)NOT NULL,
nazwisko VARCHAR(80)NOT NULL,
adres VARCHAR(250)NOT NULL,
miasto VARCHAR(50)NOT NULL,
telefon VARCHAR(50)NOT NULL,
email VARCHAR(100)NOT NULL
PRIMARY KEY (id_klienta))
INSERT INTO klienci (imie, nazwisko, adres, miasto, telefon, email) VALUES ('Bartek', 'Kowalski', 'Gleboka 1', 'Cieszyn', '123456789', 'bartek@gmail.com');
INSERT INTO klienci (imie, nazwisko, adres, miasto, telefon, email) VALUES ('Jan', 'Kowalski', 'Gleboka 2', 'Cieszyn', '123456788', 'Jan@gmail.com');
INSERT INTO klienci (imie, nazwisko, adres, miasto, telefon, email) VALUES ('Kasia', 'Adamska', 'Gleboka 3', 'Cieszyn', '123456787', 'Kasia@gmail.com');
INSERT INTO klienci (imie, nazwisko, adres, miasto, telefon, email) VALUES ('Basia', 'Adamska', 'Gleboka 4', 'Cieszyn', '123456786', 'Basia@gmail.com');
INSERT INTO klienci (imie, nazwisko, adres, miasto, telefon, email) VALUES ('Mateusz', 'Jureczek', 'Gleboka 5', 'Cieszyn', '123456755', 'Adam@gmail.com');
INSERT INTO klienci (imie, nazwisko, adres, miasto, telefon, email) VALUES ('Justyna', 'Jureczek', 'Gleboka 6', 'Cieszyn', '123456784', 'Justyna@gmail.com')
INSERT INTO klienci (imie, nazwisko, adres, miasto, telefon, email) VALUES ('Sebastian', 'Soboszek', 'Gleboka 7', 'Cieszyn', '123456783', 'Sebastian@gmail.com');
INSERT INTO klienci (imie, nazwisko, adres, miasto, telefon, email) VALUES ('Kacper', 'Soboszek', 'Gleboka 8', 'Cieszyn', '123456782', 'Kacper@gmail.com')
INSERT INTO klienci (imie, nazwisko, adres, miasto, telefon, email) VALUES ('Jakub', 'Kowalski', 'Gleboka 9', 'Cieszyn', '123456756', 'kuba@gmail.com');
INSERT INTO klienci (imie, nazwisko, adres, miasto, telefon, email) VALUES ('Marek', 'Jureczek', 'Gleboka 10', 'Cieszyn', '123456234', 'Marek@gmail.com');
INSERT INTO klienci (imie, nazwisko, adres, miasto, telefon, email) VALUES ('Jurek', 'Jureczek', 'Gleboka 11', 'Cieszyn', '123456211', 'Jurek@gmail.com');
CREATE TABLE gatunek_filmowy(
id_gatunku int NOT NULL IDENTITY(1, 1),
nazwa VARCHAR(100)NOT NULL,
skrot VARCHAR(100)NOT NULL,
sugerowany_odbiorca VARCHAR(100)NOT NULL,
zalecany_wiek int NOT NULL,
PRIMARY KEY (id_gatunku))
INSERT INTO gatunek_filmowy (nazwa, skrot, sugerowany_odbiorca, zalecany_wiek) VALUES ('horror', 'HO', 'dorosli', 18);
INSERT INTO gatunek_filmowy (nazwa, skrot, sugerowany_odbiorca, zalecany_wiek) VALUES ('thriller', 'TH', 'dorosli lub mlodziez', 15);
INSERT INTO gatunek_filmowy (nazwa, skrot, sugerowany_odbiorca, zalecany_wiek) VALUES ('komedia', 'KO', 'dorosli lub mlodziez', 12);
INSERT INTO gatunek_filmowy (nazwa, skrot, sugerowany_odbiorca, zalecany_wiek) VALUES ('fantasy', 'FN', 'mlodziez lub dzieci', 7);
INSERT INTO gatunek_filmowy (nazwa, skrot, sugerowany_odbiorca, zalecany_wiek) VALUES ('science-fiction', 'SF', 'dorosli lub mlodziez', 12);
INSERT INTO gatunek_filmowy (nazwa, skrot, sugerowany_odbiorca, zalecany_wiek) VALUES ('dramat', 'DR', 'dorosli lub mlodziez', 12);
INSERT INTO gatunek_filmowy (nazwa, skrot, sugerowany_odbiorca, zalecany_wiek) VALUES ('film animowany', 'FA', 'dzieci', 3);
INSERT INTO gatunek_filmowy (nazwa, skrot, sugerowany_odbiorca, zalecany_wiek) VALUES ('film historyczny', 'FH', 'dorosli lub mlodziez', 12);
INSERT INTO gatunek_filmowy (nazwa, skrot, sugerowany_odbiorca, zalecany_wiek) VALUES ('western', 'WE', 'dorosli lub mlodziez', 12);
INSERT INTO gatunek_filmowy (nazwa, skrot, sugerowany_odbiorca, zalecany_wiek) VALUES ('film muzyczny', 'FM', 'dorosli lub mlodziez', 12);
INSERT INTO gatunek_filmowy (nazwa, skrot, sugerowany_odbiorca, zalecany_wiek) VALUES ('film dokumentalny', 'FD', 'dorosli lub mlodziez', 12);
CREATE TABLE filmy(
id_filmu int NOT NULL IDENTITY(1, 1),
id_gatunku INT NOT NULL,
tytul VARCHAR(100)NOT NULL,
rezyser VARCHAR(100)NOT NULL,
dlugosc_minuty int NOT NULL,
rok_wydania int NOT NULL,
PRIMARY KEY (id_filmu),
FOREIGN KEY (id_gatunku) REFERENCES gatunek_filmowy(id_gatunku))
INSERT INTO filmy(id_gatunku, tytul, rezyser, dlugosc_minuty, rok_wydania) VALUES ( (SELECT id_gatunku FROM gatunek_filmowy WHERE gatunek_filmowy.id_gatunku=1), 'To my', 'Jordan Peele', 120, 2019);
INSERT INTO filmy(id_gatunku, tytul, rezyser, dlugosc_minuty, rok_wydania) VALUES ( (SELECT id_gatunku FROM gatunek_filmowy WHERE gatunek_filmowy.id_gatunku=2), 'Siedem', 'David Fincher', 127, 1995);
INSERT INTO filmy(id_gatunku, tytul, rezyser, dlugosc_minuty, rok_wydania) VALUES ( (SELECT id_gatunku FROM gatunek_filmowy WHERE gatunek_filmowy.id_gatunku=3), 'Maska', ' Chuck Russell', 101, 1994);
INSERT INTO filmy(id_gatunku, tytul, rezyser, dlugosc_minuty, rok_wydania) VALUES ( (SELECT id_gatunku FROM gatunek_filmowy WHERE gatunek_filmowy.id_gatunku=4), 'Hobbit Niezwyk³a przygoda', ' Peter Jackson', 169, 2012);
INSERT INTO filmy(id_gatunku, tytul, rezyser, dlugosc_minuty, rok_wydania) VALUES ( (SELECT id_gatunku FROM gatunek_filmowy WHERE gatunek_filmowy.id_gatunku=5), 'Incepcja', 'Christopher Nolan', 148, 2010);
INSERT INTO filmy(id_gatunku, tytul, rezyser, dlugosc_minuty, rok_wydania) VALUES ( (SELECT id_gatunku FROM gatunek_filmowy WHERE gatunek_filmowy.id_gatunku=6), 'Lista Schindlera', 'Steven Spielberg', 195, 1993);
INSERT INTO filmy(id_gatunku, tytul, rezyser, dlugosc_minuty, rok_wydania) VALUES ( (SELECT id_gatunku FROM gatunek_filmowy WHERE gatunek_filmowy.id_gatunku=7), 'Shrek', 'Andrew Adamson', 90, 2001);
INSERT INTO filmy(id_gatunku, tytul, rezyser, dlugosc_minuty, rok_wydania) VALUES ( (SELECT id_gatunku FROM gatunek_filmowy WHERE gatunek_filmowy.id_gatunku=8), 'Gladiator', 'Ridley Scott', 155, 2000);
INSERT INTO filmy(id_gatunku, tytul, rezyser, dlugosc_minuty, rok_wydania) VALUES ( (SELECT id_gatunku FROM gatunek_filmowy WHERE gatunek_filmowy.id_gatunku=9), 'Django', 'Quentin Tarantino', 165, 2012);
INSERT INTO filmy(id_gatunku, tytul, rezyser, dlugosc_minuty, rok_wydania) VALUES ( (SELECT id_gatunku FROM gatunek_filmowy WHERE gatunek_filmowy.id_gatunku=10), 'Whiplash', ' Damien Chazelle', 105, 2014);
INSERT INTO filmy(id_gatunku, tytul, rezyser, dlugosc_minuty, rok_wydania) VALUES ( (SELECT id_gatunku FROM gatunek_filmowy WHERE gatunek_filmowy.id_gatunku=11), 'Cz³owiek', ' Yann Arthus-Bertrand', 139, 2015);
CREATE TABLE dostawcy(
id_dostawcy int NOT NULL IDENTITY(1, 1),
nazwa_firmy_przewozowej VARCHAR(100)NOT NULL,
telefon VARCHAR(100)NOT NULL,
fax VARCHAR(100)NOT NULL,
kraj_wysylki VARCHAR(100)NOT NULL,
PRIMARY KEY (id_dostawcy))
INSERT INTO dostawcy (nazwa_firmy_przewozowej, telefon, fax, kraj_wysylki) VALUES ('sirones', '123456789', '123456789', 'Polska');
INSERT INTO dostawcy (nazwa_firmy_przewozowej, telefon, fax, kraj_wysylki) VALUES ('sudetti', '123453489', '123456439', 'Polska');
INSERT INTO dostawcy (nazwa_firmy_przewozowej, telefon, fax, kraj_wysylki) VALUES ('syncore', '123451289', '123423789', 'Niemcy');
INSERT INTO dostawcy (nazwa_firmy_przewozowej, telefon, fax, kraj_wysylki) VALUES ('Tareco', '123326789', '123445789', 'Francja');
INSERT INTO dostawcy (nazwa_firmy_przewozowej, telefon, fax, kraj_wysylki) VALUES ('Premero', '123456239', '123566789', 'Polska');
INSERT INTO dostawcy (nazwa_firmy_przewozowej, telefon, fax, kraj_wysylki) VALUES ('Lordson', '123256789', '123236789', 'Polska');
INSERT INTO dostawcy (nazwa_firmy_przewozowej, telefon, fax, kraj_wysylki) VALUES ('Airam', '123456489', '123236789', 'Niemcy');
INSERT INTO dostawcy (nazwa_firmy_przewozowej, telefon, fax, kraj_wysylki) VALUES ('Promero', '123456329', '123346789', 'Polska');
INSERT INTO dostawcy (nazwa_firmy_przewozowej, telefon, fax, kraj_wysylki) VALUES ('Abare', '123456239', '123445789', 'Polska');
INSERT INTO dostawcy (nazwa_firmy_przewozowej, telefon, fax, kraj_wysylki) VALUES ('Sudetti', '123452389', '124556789', 'Polska');
INSERT INTO dostawcy (nazwa_firmy_przewozowej, telefon, fax, kraj_wysylki) VALUES ('Selves', '123456789', '123456789', 'Francja');
CREATE TABLE zamowienie(
id_zamowienia int NOT NULL IDENTITY(1, 1),
id_klienta int NOT NULL,
id_filmu int NOT NULL,
id_dostawcy int NOT NULL,
data_zakupu date NOT NULL,
cena_zlotowki decimal NOT NULL,
czas_wysylki_dni int NOT NULL,
PRIMARY KEY (id_zamowienia),
FOREIGN KEY (id_klienta) REFERENCES klienci(id_klienta),
FOREIGN KEY (id_filmu) REFERENCES filmy(id_filmu),
FOREIGN KEY (id_dostawcy) REFERENCES dostawcy(id_dostawcy))
INSERT INTO zamowienie(id_klienta, id_filmu, data_zakupu, cena_zlotowki, id_dostawcy, czas_wysylki_dni) VALUES ( (SELECT id_klienta FROM klienci WHERE klienci.id_klienta=1),(SELECT id_filmu FROM filmy WHERE filmy.id_filmu=1), '2018-01-22', 50, (SELECT id_dostawcy FROM dostawcy WHERE dostawcy.id_dostawcy=1), 2);
INSERT INTO zamowienie(id_klienta, id_filmu, data_zakupu, cena_zlotowki, id_dostawcy, czas_wysylki_dni) VALUES ( (SELECT id_klienta FROM klienci WHERE klienci.id_klienta=2),(SELECT id_filmu FROM filmy WHERE filmy.id_filmu=2), '2018-01-23', 40, (SELECT id_dostawcy FROM dostawcy WHERE dostawcy.id_dostawcy=2), 4);
INSERT INTO zamowienie(id_klienta, id_filmu, data_zakupu, cena_zlotowki, id_dostawcy, czas_wysylki_dni) VALUES ( (SELECT id_klienta FROM klienci WHERE klienci.id_klienta=3),(SELECT id_filmu FROM filmy WHERE filmy.id_filmu=3), '2018-01-24', 60, (SELECT id_dostawcy FROM dostawcy WHERE dostawcy.id_dostawcy=3), 3);
INSERT INTO zamowienie(id_klienta, id_filmu, data_zakupu, cena_zlotowki, id_dostawcy, czas_wysylki_dni) VALUES ( (SELECT id_klienta FROM klienci WHERE klienci.id_klienta=4),(SELECT id_filmu FROM filmy WHERE filmy.id_filmu=4), '2018-01-25', 70, (SELECT id_dostawcy FROM dostawcy WHERE dostawcy.id_dostawcy=4), 6);
INSERT INTO zamowienie(id_klienta, id_filmu, data_zakupu, cena_zlotowki, id_dostawcy, czas_wysylki_dni) VALUES ( (SELECT id_klienta FROM klienci WHERE klienci.id_klienta=5),(SELECT id_filmu FROM filmy WHERE filmy.id_filmu=5), '2018-01-26', 80, (SELECT id_dostawcy FROM dostawcy WHERE dostawcy.id_dostawcy=5), 1);
INSERT INTO zamowienie(id_klienta, id_filmu, data_zakupu, cena_zlotowki, id_dostawcy, czas_wysylki_dni) VALUES ( (SELECT id_klienta FROM klienci WHERE klienci.id_klienta=6),(SELECT id_filmu FROM filmy WHERE filmy.id_filmu=6), '2018-01-27', 90, (SELECT id_dostawcy FROM dostawcy WHERE dostawcy.id_dostawcy=6), 6);
INSERT INTO zamowienie(id_klienta, id_filmu, data_zakupu, cena_zlotowki, id_dostawcy, czas_wysylki_dni) VALUES ( (SELECT id_klienta FROM klienci WHERE klienci.id_klienta=7),(SELECT id_filmu FROM filmy WHERE filmy.id_filmu=7), '2018-01-29', 20, (SELECT id_dostawcy FROM dostawcy WHERE dostawcy.id_dostawcy=7), 5);
INSERT INTO zamowienie(id_klienta, id_filmu, data_zakupu, cena_zlotowki, id_dostawcy, czas_wysylki_dni) VALUES ( (SELECT id_klienta FROM klienci WHERE klienci.id_klienta=8),(SELECT id_filmu FROM filmy WHERE filmy.id_filmu=8), '2018-01-30', 30, (SELECT id_dostawcy FROM dostawcy WHERE dostawcy.id_dostawcy=8), 4);
INSERT INTO zamowienie(id_klienta, id_filmu, data_zakupu, cena_zlotowki, id_dostawcy, czas_wysylki_dni) VALUES ( (SELECT id_klienta FROM klienci WHERE klienci.id_klienta=9),(SELECT id_filmu FROM filmy WHERE filmy.id_filmu=9), '2018-01-20', 40, (SELECT id_dostawcy FROM dostawcy WHERE dostawcy.id_dostawcy=9), 2);
INSERT INTO zamowienie(id_klienta, id_filmu, data_zakupu, cena_zlotowki, id_dostawcy, czas_wysylki_dni) VALUES ( (SELECT id_klienta FROM klienci WHERE klienci.id_klienta=10),(SELECT id_filmu FROM filmy WHERE filmy.id_filmu=10), '2018-01-21', 50, (SELECT id_dostawcy FROM dostawcy WHERE dostawcy.id_dostawcy=10), 3);
INSERT INTO zamowienie(id_klienta, id_filmu, data_zakupu, cena_zlotowki, id_dostawcy, czas_wysylki_dni) VALUES ( (SELECT id_klienta FROM klienci WHERE klienci.id_klienta=11),(SELECT id_filmu FROM filmy WHERE filmy.id_filmu=11), '2018-01-21', 50, (SELECT id_dostawcy FROM dostawcy WHERE dostawcy.id_dostawcy=11), 5);
 
-- Display all orders sorted from newest to oldest
SELECT
    *
FROM zamowienie
ORDER BY id_zamowienia DESC;

-- Display customers whose surname starts with 'Ko' together with purchase date
SELECT
    k.imie,
    k.nazwisko,
    z.data_zakupu
FROM klienci k
INNER JOIN zamowienie z
    ON k.id_klienta = z.id_klienta
WHERE k.nazwisko LIKE 'Ko%'
ORDER BY z.data_zakupu DESC;

SELECT
    COUNT(k.id_klienta) AS liczba_klientow
FROM klienci k
WHERE k.nazwisko LIKE 'Ju%';


-- Number of movies by genre
SELECT gf.nazwa AS gatunek,
       COUNT(f.id_filmu) AS liczba_filmow
FROM filmy f
JOIN gatunek_filmowy gf
ON f.id_gatunku = gf.id_gatunku
GROUP BY gf.nazwa
ORDER BY liczba_filmow DESC;

-- Average movie length by genre
SELECT gf.nazwa AS gatunek,
       AVG(f.dlugosc_minuty) AS srednia_dlugosc
FROM filmy f
JOIN gatunek_filmowy gf
ON f.id_gatunku = gf.id_gatunku
GROUP BY gf.nazwa
ORDER BY srednia_dlugosc DESC;

-- Number of movies by director
SELECT rezyser,
       COUNT(*) AS liczba_filmow
FROM filmy
GROUP BY rezyser
ORDER BY liczba_filmow DESC;

-- Customers by city
SELECT miasto,
       COUNT(*) AS liczba_klientow
FROM klienci
GROUP BY miasto;

-- Genres with more than one movie
SELECT gf.nazwa,
       COUNT(*) AS liczba
FROM filmy f
JOIN gatunek_filmowy gf
ON f.id_gatunku = gf.id_gatunku
GROUP BY gf.nazwa
HAVING COUNT(*) >= 1
ORDER BY liczba DESC;

-- Average order value by shipping company
SELECT d.nazwa_firmy_przewozowej,
       AVG(z.cena_zlotowki) AS srednia_wartosc
FROM zamowienie z
JOIN dostawcy d
ON z.id_dostawcy = d.id_dostawcy
GROUP BY d.nazwa_firmy_przewozowej
ORDER BY srednia_wartosc DESC;

-- Total revenue by genre
SELECT gf.nazwa,
       SUM(z.cena_zlotowki) AS laczna_sprzedaz
FROM zamowienie z
JOIN filmy f ON z.id_filmu = f.id_filmu
JOIN gatunek_filmowy gf ON f.id_gatunku = gf.id_gatunku
GROUP BY gf.nazwa
ORDER BY laczna_sprzedaz DESC;

-- Movies longer than average
SELECT tytul,
       dlugosc_minuty
FROM filmy
WHERE dlugosc_minuty >
(
    SELECT AVG(dlugosc_minuty)
    FROM filmy
);

-- Ranking of most expensive orders
SELECT
    id_zamowienia,
    cena_zlotowki,
    ROW_NUMBER() OVER(ORDER BY cena_zlotowki DESC) AS ranking
FROM zamowienie;

-- Revenue by customer
SELECT
    k.imie,
    k.nazwisko,
    SUM(z.cena_zlotowki) AS wydane
FROM klienci k
JOIN zamowienie z
ON k.id_klienta = z.id_klienta
GROUP BY k.imie, k.nazwisko
ORDER BY wydane DESC;
