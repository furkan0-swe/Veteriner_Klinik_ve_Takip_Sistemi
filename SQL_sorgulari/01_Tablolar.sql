CREATE DATABASE VeterinerDB;
GO
USE VeterinerDB;
GO
CREATE TABLE Turler (
    TurID INT IDENTITY(1,1) PRIMARY KEY,
    TurAdi NVARCHAR(40) NOT NULL
);


CREATE TABLE Irklar (
    IrkID INT IDENTITY(1,1) PRIMARY KEY,
    TurID INT NOT NULL,
    IrkAdi NVARCHAR(50) NOT NULL,
    CONSTRAINT FK_Irklar_Turler FOREIGN KEY (TurID) REFERENCES Turler(TurID)
);


CREATE TABLE Musteriler (
    MusteriID INT IDENTITY(1,1) PRIMARY KEY,
    Ad NVARCHAR(30) NOT NULL,
    Soyad NVARCHAR(30) NOT NULL,
    Telefon VARCHAR(15) NOT NULL,
    Eposta NVARCHAR(30) NOT NULL,
    Adres NVARCHAR(250) NOT NULL,
    KayitTarihi DATE DEFAULT GETDATE()
);


CREATE TABLE Veterinerler (
    VeterinerID INT IDENTITY(1,1) PRIMARY KEY,
    Ad NVARCHAR(30) NOT NULL,
    Soyad NVARCHAR(30) NOT NULL,
    Uzmanlik NVARCHAR(70) NOT NULL,
    Telefon VARCHAR(11) NOT NULL,
    Eposta NVARCHAR(70) NOT NULL
);


CREATE TABLE Ilaclar (
    IlacID INT IDENTITY(1,1) PRIMARY KEY,
    IlacAdi NVARCHAR(75) NOT NULL,
    Kategori NVARCHAR(50),
    StokMiktari INT NOT NULL CHECK (StokMiktari >= 0),
    BirimFiyat DECIMAL(10, 2) NOT NULL
);


CREATE TABLE Hayvanlar (
    HayvanID INT IDENTITY(1,1) PRIMARY KEY,
    CipNo VARCHAR(30) UNIQUE,
    Ad NVARCHAR(30),
    TurID INT NOT NULL,
    IrkID INT NOT NULL,
    MusteriID INT NOT NULL,
    Cinsiyet CHAR(1) CHECK (Cinsiyet IN ('E', 'D')),
    DogumTarihi DATE,
    CONSTRAINT FK_Hayvanlar_Turler FOREIGN KEY (TurID) REFERENCES Turler(TurID),
    CONSTRAINT FK_Hayvanlar_Irklar FOREIGN KEY (IrkID) REFERENCES Irklar(IrkID),
    CONSTRAINT FK_Hayvanlar_Musteriler FOREIGN KEY (MusteriID) REFERENCES Musteriler(MusteriID)
);


CREATE TABLE Muayeneler (
    MuayeneID INT IDENTITY(1,1) PRIMARY KEY,
    HayvanId INT NOT NULL,
    VeterinerID INT NOT NULL,
    MuayeneTarihi DATETIME DEFAULT GETDATE(),
    Sikayet NVARCHAR(500),
    Teshis NVARCHAR(500),
    Ucret DECIMAL(10, 2),
    CONSTRAINT FK_Muayeneler_Hayvanlar FOREIGN KEY (HayvanId) REFERENCES Hayvanlar(HayvanID),
    CONSTRAINT FK_Muayeneler_Veterinerler FOREIGN KEY (VeterinerID) REFERENCES Veterinerler(VeterinerID)
);


CREATE TABLE TedaviDetay (
    DetayID INT IDENTITY(1,1) PRIMARY KEY,
    MuayeneID INT NOT NULL,
    IlacID INT NOT NULL,
    Adet INT DEFAULT 1 CHECK (Adet > 0),
    UygulamaNotu NVARCHAR(250),
    CONSTRAINT FK_TedaviDetay_Muayeneler FOREIGN KEY (MuayeneID) REFERENCES Muayeneler(MuayeneID),
    CONSTRAINT FK_TedaviDetay_Ilaclar FOREIGN KEY (IlacID) REFERENCES Ilaclar(IlacID)
);


CREATE TABLE Randevular (
    RandevuID INT IDENTITY(1,1) PRIMARY KEY,
    HayvanID INT NOT NULL,
    VeterinerID INT NOT NULL,
    RandevuTarihi DATETIME NOT NULL,
    RandevuNedeni NVARCHAR(150),
    Durum NVARCHAR(20) DEFAULT N'Bekliyor' CHECK (Durum IN (N'Bekliyor', N'Tamamlandı', N'İptal')),
    CONSTRAINT FK_Randevular_Hayvanlar FOREIGN KEY (HayvanID) REFERENCES Hayvanlar(HayvanID),
    CONSTRAINT FK_Randevular_Veterinerler FOREIGN KEY (VeterinerID) REFERENCES Veterinerler(VeterinerID)
);
GO
