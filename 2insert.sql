-- Kimlik tablosuna veri ekleyelim
INSERT INTO Kimlik (KimlikNo, adi, soyadi) VALUES (90000001, 'Adam', 'Driver');
INSERT INTO Kimlik (KimlikNo, adi, soyadi) VALUES (90000002, 'Barry', 'Alan');
INSERT INTO Kimlik (KimlikNo, adi, soyadi) VALUES (10000003, 'Mehmet', 'Demir');
INSERT INTO Kimlik (KimlikNo, adi, soyadi) VALUES (10000004, 'Fatma', 'Sahin');
INSERT INTO Kimlik (KimlikNo, adi, soyadi) VALUES (10000005, 'Hasan', 'Kilic');

INSERT INTO Kimlik (KimlikNo, adi, soyadi) VALUES 
                   (90000001, 'Adam', 'Driver'),
                   (90000002, 'Barry', 'Alan'),
                   (10000003, 'Mehmet', 'Demir'),
                   (10000004, 'Fatma', 'Sahin'),
                   (10000005, 'Hasan', 'Kilic');

-- Personel tablosuna veri ekleyelim
INSERT INTO Personel (KimlikNo, SicilNo, Prim, CallsIds) VALUES 
                     (90000001, 200001, 5000.00, 'C000001'),
                     (90000002, 200002, 4500.00, 'C000002');

-- Customer tablosuna veri ekleyelim
INSERT INTO Customer (KimlikNo, CustomerNo, CallsIds) VALUES 
                     (10000003, 300001, 'C000003'),
                     (10000004, 300002, 'C000004'),
                     (10000005, 300003, 'C000005');

/* eski insert ler
-- Calls tablosuna veri ekleyelim
INSERT INTO Calls (CallsIds, BaslamaTarihi, BitisTarihi, AramaSebebi, SicilNo, CustomerNo) VALUES ('C000001', '2024-05-21 09:00:00', '2024-05-21 09:30:00', 'Talep', 200001, NULL);
INSERT INTO Calls (CallsIds, BaslamaTarihi, BitisTarihi, AramaSebebi, SicilNo, CustomerNo) VALUES ('C000002', '2024-05-21 10:00:00', '2024-05-21 10:30:00', 'Ariza', 200002, NULL);
INSERT INTO Calls (CallsIds, BaslamaTarihi, BitisTarihi, AramaSebebi, SicilNo, CustomerNo) VALUES ('C000003', '2024-05-21 11:00:00', '2024-05-21 11:30:00', 'Bilgi', NULL, 300001);
INSERT INTO Calls (CallsIds, BaslamaTarihi, BitisTarihi, AramaSebebi, SicilNo, CustomerNo) VALUES ('C000004', '2024-05-21 12:00:00', '2024-05-21 12:30:00', 'Talep', NULL, 300002);
INSERT INTO Calls (CallsIds, BaslamaTarihi, BitisTarihi, AramaSebebi, SicilNo, CustomerNo) VALUES ('C000005', '2024-05-21 13:00:00', '2024-05-21 13:30:00', 'Ariza', NULL, 300003);
-- Calls kısmına AramaSonucu ekledikten sonra
INSERT INTO Calls (CallsIds, BaslamaTarihi, BitisTarihi, AramaSebebi, AramaSonucu, SicilNo, CustomerNo) 
VALUES 
('C000001', '2024-05-21 09:00:00', '2024-05-21 09:30:00', 'Talep', 'DevamEtmekte', 200001, 300001),
('C000002', '2024-05-21 10:00:00', '2024-05-21 10:30:00', 'Ariza', 'Olmadi', 200001, 300002),
('C000003', '2024-05-21 11:00:00', '2024-05-21 11:30:00', 'Bilgi', 'Tamamlandi', 200002, 300003),
('C000004', '2024-05-21 12:00:00', '2024-05-21 12:30:00', 'Talep', 'DevamEtmekte', 200002, 300001),
('C000005', '2024-05-21 13:00:00', '2024-05-21 13:30:00', 'Ariza', 'Olmadi', 200002, 300002);
*/
/*
INSERT INTO Calls (CallsIds, Tarih, BaslamaZamani, BitisZamani, AramaSebebi, AramaSonucu, SicilNo, CustomerNo) VALUES 
                  ('C000001', '2024-05-21', '09:09:09', '09:30:00', 'Talep', 'DevamEtmekte', 200001, 300001),
                  ('C000002', '2024-05-21', '10:10:10', '10:30:00', 'Ariza', 'Olmadi      ', 200001, 300002),
                  ('C000003', '2024-05-21', '11:11:11', '11:30:00', 'Bilgi', 'Tamamlandi  ', 200002, 300003),
                  ('C000004', '2024-05-21', '12:12:12', '12:30:00', 'Talep', 'DevamEtmekte', 200002, 300001),
                  ('C000005', '2024-05-21', '13:13:13', '13:30:00', 'Ariza', 'Olmadi      ', 200002, 300002);
*/
-- ID kısmı insert te yok artık. O her yeni data da otomatik ekleniyor bir fazla 1 2 3 ...
INSERT INTO Calls (Tarih, BaslamaZamani, BitisZamani, AramaSebebi, AramaSonucu, SicilNo, CustomerNo) VALUES 
                  ( '2024-05-21', '09:09:09', '09:30:00', 'Talep', 'DevamEtmekte', 200001, 300001),
                  ( '2024-05-21', '10:10:10', '10:30:00', 'Ariza', 'Olmadi      ', 200001, 300002),
                  ( '2024-05-21', '11:11:11', '11:30:00', 'Bilgi', 'Tamamlandi  ', 200002, 300003),
                  ( '2024-05-21', '12:12:12', '12:30:00', 'Talep', 'DevamEtmekte', 200002, 300001),
                  ( '2024-05-21', '13:13:13', '13:30:00', 'Ariza', 'Olmadi      ', 200002, 300002);

