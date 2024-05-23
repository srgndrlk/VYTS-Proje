-- Kimlik tablosuna veri ekleyelim
INSERT INTO Kimlik ( adi, soyadi) VALUES ( 'Adam', 'Driver');
INSERT INTO Kimlik ( adi, soyadi) VALUES ( 'Barry', 'Alan');
INSERT INTO Kimlik ( adi, soyadi) VALUES ( 'Mehmet', 'Demir');
INSERT INTO Kimlik ( adi, soyadi) VALUES ( 'Fatma', 'Sahin');
INSERT INTO Kimlik ( adi, soyadi) VALUES ( 'Hasan', 'Kilic');

INSERT INTO Kimlik ( adi, soyadi) VALUES 
                   ( 'Adam', 'Driver'),
                   ( 'Barry', 'Alan'),
                   ( 'Mehmet', 'Demir'),
                   ( 'Fatma', 'Sahin'),
                   ( 'Hasan', 'Kilic');

-- Personel tablosuna veri ekleyelim

INSERT INTO Personel (KimlikNo,  Prim, CallsID) VALUES 
                     (1,  5000.00, '1'),
                     (2,  4500.00, '2');
                  

-- Customer tablosuna veri ekleyelim
INSERT INTO Customer (KimlikNo,  CallsID) VALUES 
                     (3, '1'),
                     (4, '2'),
                     (5, '3');


-- ID kısmı insert te yok artık. O her yeni data da otomatik ekleniyor bir fazla 1 2 3 ...
INSERT INTO Calls (Tarih, BaslamaZamani, BitisZamani, AramaSebebi, AramaSonucu, SicilNo, CustomerNo) VALUES 
                  ( '2024-05-21', '09:09:09', '09:30:00', 'Talep', 'DevamEtmekte', 1, 1),
                  ( '2024-05-21', '10:10:10', '10:30:00', 'Ariza', 'Olmadi      ', 1, 2),
                  ( '2024-05-21', '11:11:11', '11:30:00', 'Bilgi', 'Tamamlandi  ', 2, 3),
                  ( '2024-05-21', '12:12:12', '12:30:00', 'Talep', 'DevamEtmekte', 2, 1),
                  ( '2024-05-21', '13:13:13', '13:30:00', 'Ariza', 'Olmadi      ', 2, 2);

