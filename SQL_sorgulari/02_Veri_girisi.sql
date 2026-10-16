USE VeterinerDB
GO

INSERT INTO Turler (TurAdi) VALUES 
(N'Kedi'), (N'Köpek'), (N'Kuş'), (N'Tavşan'), (N'Kemirgen');

INSERT INTO Irklar(TurID,IrkAdi) VALUES
(1, N'Tekir') , (1, N'Van Kedisi') , (1, N'British Shorthair') , (1, N'Scottish Fold') , (1, N'İran Kedisi'),
(2, N'Golden Retriever') , (2, N'Alman Çoban Köpeği') , (2, N'Kangal'), (2, N'Pug') , (2, N'Fransız Bulldog'),
(3, N'Muhabbet Kuşu') , (3, N'Sultan Papağanı'), (3, N'Jako Papağanı') , (3, N'Kanarya'),
(4, N'Hollanda Lop Tavşanı') , (4, N'Ankara Tavşanı') , (4 , N'Hollanda Cücesi') , (4, N'Aslanbaş Tavşan'),
(5, N'Hamster');

INSERT INTO Musteriler (Ad, Soyad , Telefon , Eposta , Adres) VALUES 
(N'Ahmet', N'Yılmaz' , '05352221133' , 'ahmet.yilmazz@gmail.com' , N'MELİKGAZİ/KAYSERİ'),
(N'Mehmet', N'Türkoğlu' , '05352223344' , 'mehmetturkoglu38@hotmail.com' , N'HACILAR/KAYSERİ'),
(N'Ayşe' , N'Türkekul' , '05524184545' , 'ayseturkekul0@gmail.com' , N'TALAS/KAYSERİ'),
(N'Selin' , N'Öztürk' , '05612596637' , 'selinozturk3838@gmail.com' , N'KOCASİNAN/KAYSERİ'),
(N'Ali' , N'Göktürk' , '05384381338' , 'gokturkali25@hotmail.com' , N'İNCESU/KAYSERİ'),
(N'Zeynep' , N'Arıtürk' , '05214158865' , 'zeynepariturk00@gmail.com' , N'MELİKGAZİ/KAYSERİ'),
(N'Furkan' , N'Türk' , '05516253838' , 'furkanturkk67@gmail.com' , N'ERKİLET/KAYSERİ'),
(N'Fatma' , N'Demir' , '05741569854' , 'demirfatma03@hotmail.com' , N'KOCASİNAN/KAYSERİ');
INSERT INTO Musteriler (Ad, Soyad , Telefon , Eposta , Adres) VALUES 
(N'Osman' , N'Şentürk' , '05382695813' , 'osmanaga001@gmail.com' , N'PINARBAŞI/KAYSERİ');

INSERT INTO Hayvanlar(CipNo , Ad , TurID , IrkID , MusteriID , Cinsiyet , DogumTarihi) VALUES
('990000012345671' , N'Pera' , 1, 1 ,1 ,'E', '2023-09-27'),
('990000012345672' , N'Pamuk' , 1 , 5 , 2 , 'D' , '2025-02-12'),
('990000012345673' , N'Karabaş' ,2 , 8 , 3 , 'E' , '2020-01-01'),
('990000012345674' , N'Karamel' , 2 , 6 , 4 , 'D' , '2016-11-15'),
('990000012345675' , N'Paşa' , 3 , 12 , 5 , 'E' , '2010-08-30'),
('990000012345676' , N'Limon' , 3 , 14 , 6 , 'E' , '2026-07-04'),
('990000012345677' , N'Lokum' , 4 , 16 , 7 , 'D' , '2024-12-17'),
('990000012345678' , N'Kömür' , 4 , 17 , 8 , 'D' , '2025-06-09'),
('990000012345679' , N'Hamilton' , 5 , 19 , 9 , 'E' , '2026-01-11');

INSERT INTO Veterinerler(Ad , Soyad , Uzmanlik , Telefon , Eposta) VALUES
(N'Furkan' , N'Bozan' , N'Cerrahi ve Ortopedi' , '05522699913' , 'vet.furkanbozan@klinik.com'),
(N'Elif' , N'Güneş' , N'Dahiliye' , '05341234567' , 'vet.guneseliif00@klinik.com'),
(N'Mustafa Kemal' , N'Aksoy' , 'Egzotik Hayvanlar' , '05526547825' , 'vet.mustafakemal1881@klinik.com');

INSERT INTO Ilaclar(IlacAdi , Kategori , StokMiktari , BirimFiyat) VALUES 
(N'Kuduz Aşısı (Rabisin)' , N'Aşı' , 120 , 1200.00),
(N'Karma Aşı (Nobivac DHPPİ)' , N'Aşı' , 100 , 1750.00),
(N'Lösemi Aşısı (Purevax FeVL)' , N'Aşı' , 30 , 1900.00),
(N'İç Parazit Tableti (Tenikur)' , N'Paraziter' , 500 , 350.00),
(N'Dış Parazit Damlası (Frontline)' , N'Paraziter' , 450 , 650.00),
(N'Synulox Antibiyotik Enjeksiyon' , N'Antibiyotik' , 20 , 3500.00),
(N'Meloxidyl Ağrı Kesici Süspansiyon' , N'Antienflamatuar' , 15 , 1350.00),
(N'B-Kompleks Vitamin Takviyesi' , N'V,tamin' , 145 , 650.00),
(N'Katarakt Göz Damlası' , N'Göz/Kulak' , 10 ,2000.00),
(N'Mantar Karşıtı Solüsyon' , N'Dermatoloji' , 20 , 400.00);
GO

INSERT INTO Muayeneler(HayvanId , VeterinerID , MuayeneTarihi , Sikayet , Teshis , Ucret) VALUES 
(1 , 2 , '2026-09-04 10:30' , N'Halsizlik ve iştahsızlık' , N'Üst solunum yolu enfeksiyonu' , 3500.00),
(2 , 2 , '2026-09-07 11:20' , N'Rutin aşı kontrolü' , 'Sağlıklı,periyodik aşıları uygulandı' , 2950.00),
(3 , 1 , '2026-09-12 14:05' , N'Arka sol bacakta topallama' , N'Hafif kas incinmesi' , 850.00),
(4 , 2 , '2026-09-13 18:45' , N'Sürekli kulak kaşıma' , N'Kulak paraziti' , 350.00),
(5 , 1 , '2026-09-18 17:25' , N'Kilo kaybı ve kusma' , N'Mide irritasonu' , 1500.00),
(6 , 3 , '2026-09-24 15:00' , N'Tüy dökülmesi ve kaşıntı' , N'Mantar başlangıcı' , 400.00),
(7 , 2 , '2026-09-30 12:10' , N'Yıllık kuduz aşısı' , N'Rutin genel sağlık muayenesi' , 1200.00),
(8 , 3 , '2026-10-01 19:15' , N'Hareketsizlik ve yem yememe' , N'Sindirim yavaşlaması' , 750.00 ),
(9 , 1 , '2026-10-08 10:40' , N'Hapşırma ve burun akıntısı' , N'Mevsimsel alerji' , 1400.00);

INSERT INTO TedaviDetay(MuayeneID , IlacID , Adet , UygulamaNotu) VALUES 
(1 , 6 , 1 , N'Günde 1 kez kas içi enjeksiyon'),
(1 , 8 , 1 , N'Destekleyici vitamin verildi'),
(2 , 1 , 1 , N'Yıllık kuduz aşısı deri altına uygulandı'),
(3 , 7 , 1 , N'5 gün sabah-akşam tok karnına ağızdan verilecek'),
(4 , 5 , 1 , N'Ense damlası uygulandı , kulak temizlendi'),
(5 , 6 , 1 , N'Antibiyotik tedavisi başlatıldı'),
(6 , 10 , 1 , N'Bölgesel solüsyon günde 2 kez sürülecek'),
(7 , 1 , 1 , N'Deri altı tek doz uygulandı'),
(8 , 8 , 1 , N'Sulu yem ve vitamin takviyesi'),
(9 , 7 , 1 , N'Semptomlar geçene kadar verilecek');

INSERT INTO Randevular(HayvanID , VeterinerID , RandevuTarihi , RandevuNedeni , Durum) VALUES 
(1 , 2 , '2026-11-04 10:00' , N'Enfeksiyon kontrol muayenesi' , N'Bekliyor'),
(3 , 1 , '2026-11-07 14:00' , N'Ortopedi kontrol ve röntgen değerlendirme' , N'Bekliyor'),
(4 , 2 , '2026-11-12 11:00' , N'Kulak paraziti 2.doz kontrolü' , N'Bekliyor'),
(6 , 3 , '2026-11-13 15:00' , N'Tüy ve mantar lezyonu kontrolü' , N'Bekliyor'),
(8 , 3 , '2026-11-24 12:00' , N'Beslenme ve kilo takibi' , N'Bekliyor'),
(2 , 2 , '2026-09-07 10:00' , N'Rutin aşı' , N'Tamamlandı'),
(5 , 1 , '2026-10-18 18:00' , N'Acil mide şikayeti' , N'Tamamlandı'),
(7 , 2 , '2026-09-30 12:30' , N'Aşı uygulaması' , N'Tamamlandı'),
(9 , 1 , '2026-11-08 16:00' , N'Alerji takip muayenesi' , N'Bekliyor');




