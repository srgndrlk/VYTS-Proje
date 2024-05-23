--CREATE DATABASE PPTvIS;
-- SQL Server doesn't have case sensitivity by default

--USE PPTvIS;


/*
-- Drop the tables that have foreign key constraints first
DROP TABLE Calls;
DROP TABLE Personel;
DROP TABLE Customer;
DROP TABLE İtirazlar;
DROP TABLE Primler;
DROP TABLE Counter;
-- Finally, drop the Kimlik table
DROP TABLE Kimlik;
*/

CREATE TABLE Kimlik( --bütün kullanıcılar için temel kullanıcı bilgisi personel Müşteriler için Customer herrkes için
    KimlikNo INT PRIMARY KEY IDENTITY(1,1),
    adi varchar(10),
    soyadi varchar(10)
);

CREATE TABLE Personel( --Çalışanlar için
   KimlikNo INT FOREIGN KEY REFERENCES Kimlik(KimlikNo) ON DELETE CASCADE,
    SicilNo INT PRIMARY KEY IDENTITY(1,1),
    Prim money,
    CallsID int
);

CREATE TABLE Customer( --Müşteriler için Customerlerin bilgisi
    KimlikNo INT FOREIGN KEY REFERENCES Kimlik(KimlikNo) ON DELETE CASCADE,
    CustomerNo INT PRIMARY KEY IDENTITY(1,1),
    CallsID int
);

CREATE TABLE Calls(
    CallsID INT PRIMARY KEY IDENTITY(1,1),
    Tarih date,
    BaslamaZamani time,
    BitisZamani time,
    AramaSebebi varchar(5) CHECK (AramaSebebi IN ('Talep', 'Ariza', 'Bilgi')),
    AramaSonucu varchar(12) CHECK (AramaSonucu IN ('Tamamlandi  ', 'DevamEtmekte', 'Olmadi      ')),
    SicilNo INT REFERENCES Personel(SicilNo) ON DELETE CASCADE,
    CustomerNo INT REFERENCES Customer(CustomerNo),
    CONSTRAINT Check_Baslama_Bitis CHECK (BaslamaZamani < BitisZamani)-- Baslama Bitisten küçük olmalı
);
--tarih zaman zaman sebep sonuc müsteriNo
--yani sicilNo yu çıkarmaya çalışacağıoz veya Formda eklemey çalışacağız. sicilno +kimlikno ile olabilir
-- CallsId otomatik belirlense güzel olur

CREATE TABLE İtirazlar(
    SicilNo INT REFERENCES Personel(SicilNo) ON DELETE CASCADE,
    CallsID int,
    Aciklama text ,
    Sonucu bit
);

CREATE TABLE Primler(
  SicilNo INT REFERENCES Personel(SicilNo) ON DELETE CASCADE,
    CallsID int,
    Prim money
);

CREATE TABLE Counter(
    KimlikSayisi int,
    PersonelSayisi int,
    CustomerSayisi int,
    CallsSayisi int
);
