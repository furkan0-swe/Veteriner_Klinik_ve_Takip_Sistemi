# Veteriner Klinik ve Evcil Hayvan Takip Sistemi

Bu proje, **Veri Tabanı Yönetimi** dersi kapsamında geliştirilmektedir. Sistemin amacı; veteriner kliniklerinin hasta, muayene, aşı takibi ve stok operasyonlarını ilişkisel veritabanı kurallarına uygun olarak yönetmesini sağlamaktır.

## Proje Kapsamı ve Hedeflenen Tablo Yapısı
Proje, 3. Normal Form (3NF) kurallarına uygun olarak tasarlanmış en az 8 ilişkisel tablo içermektedir:

1. **Musteriler (Hasta Sahipleri):** Sahip kimlik, iletişim ve adres bilgileri.
2. **Turler (Tür Bilgisi):** Kedi, köpek, kuş vb. temel kategori tanımları.
3. **Irklar (Irk Bilgisi):** Türlere bağlı ırk tanımları (Van Kedisi, Golden vb.).
4. **Hayvanlar (Hastalar):** Çip no, ad, doğum tarihi, cinsiyet ve sahip/ırk ilişkileri.
5. **Veterinerler (Personel):** Klinik hekimlerinin uzmanlık ve iletişim bilgileri.
6. **Muayeneler:** Muayene tarihi, hekim teşhisi, şikayet ve genel durum bilgisi.
7. **Ilaclar (Aşı & İlaç Stoğu):** İlaç adları, stok miktarı, birim fiyatı ve son kullanma tarihleri.
8. **TedaviDetay (Muayene - İlaç İlişkisi):** Çoka-çok ilişkiyi çözen köprü tablo; uygulanan ilaç/aşı, doz ve kullanım notları.
9. **Randevular:** İleri tarihli kontrol ve aşı randevu takvimi.

## Kullanılacak Teknolojiler ve Yöntemler
- **Veritabanı:** MS SQL Server
- **Programatik Nesneler:** 
  - *Views:* Hasta geçmişi ve aşı takip raporlamaları.
  - *Stored Procedures:* Muayene kaydı oluşturma ve randevu tamamlama süreçleri.
  - *Triggers:* Tedavi uygulandığında ilaç stoğunun otomatik düşürülmesi.
- **Arayüz:** ASP.NET Core MVC (Web tabanlı CRUD ve raporlama ekranları)
