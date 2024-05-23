--CREATE DATABASE PPTvIS;
-- SQL Server doesn't have case sensitivity by default

--USE PPTvIS;


/*
-- Drop the tables that have foreign key constraints first
DROP TABLE Calls;
DROP TABLE Personel;
DROP TABLE Customer;
DROP TABLE demotbl1;

-- Finally, drop the Kimlik table
DROP TABLE Kimlik;
*/

CREATE TABLE Kimlik( --bütün kullanıcılar için temel kullanıcı bilgisi personel Müşteriler için Customer herrkes için
    KimlikNo decimal(8,0) PRIMARY KEY,
    adi varchar(10),
    soyadi varchar(10)
);

CREATE TABLE Personel( --Çalışanlar için
    KimlikNo decimal(8,0) PRIMARY KEY REFERENCES Kimlik(KimlikNo) ON DELETE CASCADE,
    SicilNo decimal(6,0) UNIQUE,
    Prim money,
    CallsIds varchar(9)
);

CREATE TABLE Customer( --Müşteriler için Customerlerin bilgisi
    KimlikNo decimal(8,0) PRIMARY KEY REFERENCES Kimlik(KimlikNo) ON DELETE CASCADE,
    CustomerNo decimal(6,0) UNIQUE,
    CallsIds varchar(9)
);

CREATE TABLE Calls(
    CallsIds INT PRIMARY KEY IDENTITY(1,1),
    Tarih date,
    BaslamaZamani time,
    BitisZamani time,
    AramaSebebi varchar(5) CHECK (AramaSebebi IN ('Talep', 'Ariza', 'Bilgi')),
    AramaSonucu varchar(12) CHECK (AramaSonucu IN ('Tamamlandi  ', 'DevamEtmekte', 'Olmadi      ')),
    SicilNo decimal(6,0) REFERENCES Personel(SicilNo) ON DELETE CASCADE,
    CustomerNo decimal(6,0) REFERENCES Customer(CustomerNo),
    CONSTRAINT Check_Baslama_Bitis CHECK (BaslamaZamani < BitisZamani)-- Baslama Bitisten küçük olmalı
);
--tarih zaman zaman sebep sonuc müsteriNo
--yani sicilNo yu çıkarmaya çalışacağıoz veya Formda eklemey çalışacağız. sicilno +kimlikno ile olabilir
-- CallsId otomatik belirlense güzel olur

CREATE TABLE İtirazlar(
    SicilNo decimal(6,0) REFERENCES Personel(SicilNo) ON DELETE CASCADE,
    CallsIds varchar(9),
    Aciklama text ,
    Sonucu bit,
);

CREATE TABLE Primler(
  SicilNo decimal(6,0) REFERENCES Personel(SicilNo) ON DELETE CASCADE,
    CallsIds varchar(9),
        Prim money,
);

CREATE TABLE Counter(
    KimlikSayisi int,
    PersonelSayisi int,
    CustomerSayisi int,
    CallsSayisi int
);
