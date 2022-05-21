USE QuanLyHocSinh
GO

CREATE TRIGGER ThemNguoiDung ON NguoiDung AFTER INSERT, UPDATE
AS
BEGIN
	UPDATE NguoiDung SET MatKhau = HASHBYTES('SHA2_512', I.TenDangNhap + '@!?#?' + I.MatKhau)
	FROM NguoiDung ND INNER JOIN Inserted I ON I.MaNguoiDung = ND.MaNguoiDung
END
GO

INSERT INTO NGUOIDUNG VALUES('ND0001', 'LND001', N'18520339-Quân', 'admin', '123456')
INSERT INTO NGUOIDUNG VALUES('ND0002', 'LND002', N'18520597-Diễm', '18520597', '123456')
INSERT INTO NGUOIDUNG VALUES('ND0003', 'LND003', N'18520262-Đạt', '18520262', '123456')
INSERT INTO NGUOIDUNG VALUES('ND0004', 'LND002', N'18520424-Ân', '18520424', '123456')
INSERT INTO NGUOIDUNG VALUES('ND0005', 'LND003', N'18521398-Thắng', '18521398', '123456')
INSERT INTO NGUOIDUNG VALUES('ND0006', 'LND002', N'18520381-Toại', '18520381', '123456')