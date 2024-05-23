SELECT Calls.CallsIds,
       Kimlik.adi AS PersonelAdi,
       Kimlik.soyadi AS PersonelSoyadi,
       Personel.SicilNo,
       Kimlik_1.adi AS CustomerAdi,
       Kimlik_1.soyadi AS CustomerSoyadi,
       Customer.CustomerNo
FROM Calls
INNER JOIN Personel ON Calls.SicilNo = Personel.SicilNo
INNER JOIN Kimlik ON Personel.KimlikNo = Kimlik.KimlikNo
INNER JOIN Customer ON Calls.CustomerNo = Customer.CustomerNo
INNER JOIN Kimlik AS Kimlik_1 ON Customer.KimlikNo = Kimlik_1.KimlikNo;
-- ilki çalışmamış çünkü NULL değerler veri kaybı yapıyormuş

SELECT Calls.CallsIds,
       Kimlik.adi AS PersonelAdi,
       Kimlik.soyadi AS PersonelSoyadi,
       Personel.SicilNo,
       Kimlik_1.adi AS CustomerAdi,
       Kimlik_1.soyadi AS CustomerSoyadi,
       Customer.CustomerNo
FROM Calls
LEFT JOIN Personel ON Calls.SicilNo = Personel.SicilNo
LEFT JOIN Kimlik ON Personel.KimlikNo = Kimlik.KimlikNo
LEFT JOIN Customer ON Calls.CustomerNo = Customer.CustomerNo
LEFT JOIN Kimlik AS Kimlik_1 ON Customer.KimlikNo = Kimlik_1.KimlikNo;


SELECT Calls.CallsIds,
       Calls.BaslamaTarihi,
       Calls.BitisTarihi,
       Calls.AramaSebebi,
       Kimlik.adi AS PersonelAdi,
       Kimlik.soyadi AS PersonelSoyadi,
       Personel.SicilNo,
       Kimlik_1.adi AS CustomerAdi,
       Kimlik_1.soyadi AS CustomerSoyadi,
       Customer.CustomerNo
FROM Calls
LEFT JOIN Personel ON Calls.SicilNo = Personel.SicilNo
LEFT JOIN Kimlik ON Personel.KimlikNo = Kimlik.KimlikNo
LEFT JOIN Customer ON Calls.CustomerNo = Customer.CustomerNo
LEFT JOIN Kimlik AS Kimlik_1 ON Customer.KimlikNo = Kimlik_1.KimlikNo;


--Tarih ve Zamanı ayırdıktan sonra

SELECT Calls.CallsID,
       Calls.Tarih AS Tarih,
       Calls.BaslamaZamani AS BaslamaZamani,
	   Calls.BitisZamani AS BitisZamani,
       Calls.AramaSebebi,
       Kimlik.adi AS PersonelAdi,
       Kimlik.soyadi AS PersonelSoyadi,
       Personel.SicilNo,
       Kimlik_1.adi AS CustomerAdi,
       Kimlik_1.soyadi AS CustomerSoyadi,
       Customer.CustomerNo
FROM Calls
LEFT JOIN Personel ON Calls.SicilNo = Personel.SicilNo
LEFT JOIN Kimlik ON Personel.KimlikNo = Kimlik.KimlikNo
LEFT JOIN Customer ON Calls.CustomerNo = Customer.CustomerNo
LEFT JOIN Kimlik AS Kimlik_1 ON Customer.KimlikNo = Kimlik_1.KimlikNo;