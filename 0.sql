--Personel Prim Takip ve İtiraz Sistemi--PPTvIS

-- Personel TakımLiderine--TakımLiderleri GrupYöneticileri 
/*
Personel:SicilNo,Adı Soyadı ,
Müşeri :Adı Soyadı
AramaSebebi,AramaSonucu,BaslangıçTarihi,BitişTarihi
Görüşme konusu:Arıza Tale Bilgi
Görüşme Durumları:Tamam Takipte Olmadı
*/
/*--gereksinimler
10 tablo
4 stored prosedür
en az fonsiyon
raporlama listeleme için 2 view
1 Trigger*/
/*GUİ 3 Modul
1. Müşteri çağrı listesi menüsü=Calls tablosu
2. Sistemde aktif olan asistana ait aylık prim listesi menüsü=Prim Tablosu
3. Asistanların primlerine yaptıkları itirazlar listesi menüsü=İtirazlar tablosu

1 Tüm çağrılar=,yeni çağrı butonu =basınca pop up olup 
 görüşme detaylarını yazılacak :müşterino görüşmekonu sonucu tarihi 
kaydet tıklayınca Müşteri Çağrı listesinde en üstte olmalı
*order by date*
2 aylık prim listesi
son aya ait prim için İTİRAZ et butonu
tıklayınca pop up ,itiraz açıklaması 
Gönder butonu takım liderine email yollamalı

3 İtirazlasrım mmenüsü listede 
itiraz açıklaması itieaz cevabı ,itiraz durumuı,tarihi 

TAKIM LİDERİ için Modul:kendisine bağlı personellerin itirazlerının listesi 
listede personelNo açıklama hangiAyiçin
İTİRAZI CEVAPLA pop ıp
açıklama ve onayla veya reddet
GÖNDER butonu 
birde grup yöneticine eposta 

MinPrim 5bin 100den aşağı ise Bonus yok

100-200 arası  5bin+ (küçük çağrı sayısı)*1.25

200+ *2


/* ektra gerekneler
çağrı süresini hesaplama
5dk dan az olanları tespit etmek
sonra prim hesaplayıcı ile çarpmak

-- admin ,asistan paneli,grup lider panelleri,
asistanda:1 Calls listeleme
2 yeni ekleme 
3 Prim listeme
4 itiraz ekleme 

