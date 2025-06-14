USE [DDFACE]
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [SDT], [Email]) VALUES (1, N'Nguyễn Văn A', N'0123456789', N'nva@example.com')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [SDT], [Email]) VALUES (2, N'Lê Thị B', N'0987654321', N'ltb@example.com')
GO
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaGV]) VALUES (1, N'CTK42A', 1)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaGV]) VALUES (2, N'CTK42B', 2)
GO
INSERT [dbo].[MonHoc] ([MaMon], [TenMon]) VALUES (1, N'Toán cao cấp')
INSERT [dbo].[MonHoc] ([MaMon], [TenMon]) VALUES (2, N'Cơ sở dữ liệu')
GO
INSERT [dbo].[LichHoc] ([ID_lich], [MaLop], [MaMon], [MaGV], [Thu], [GioBD], [GioKT]) VALUES (1, 1, 1, 1, 2, CAST(N'07:00:00' AS Time), CAST(N'09:00:00' AS Time))
INSERT [dbo].[LichHoc] ([ID_lich], [MaLop], [MaMon], [MaGV], [Thu], [GioBD], [GioKT]) VALUES (2, 2, 2, 2, 4, CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time))
GO
INSERT [dbo].[PhuHuynh] ([MaPH], [HoTen], [SDT], [Email]) VALUES (1, N'Trần Văn C', N'0909123456', N'tvc@example.com')
INSERT [dbo].[PhuHuynh] ([MaPH], [HoTen], [SDT], [Email]) VALUES (2, N'Phạm Thị D', N'0911123456', N'ptd@example.com')
GO
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [NgaySinh], [GioiTinh], [MaLop], [MaPH], [Email], [SoLanVang]) VALUES (101, N'Ngô Minh E', CAST(N'2003-05-10' AS Date), N'Nam', 1, 1, N'nme@example.com', 2)
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [NgaySinh], [GioiTinh], [MaLop], [MaPH], [Email], [SoLanVang]) VALUES (102, N'Hồ Thị F', CAST(N'2003-07-20' AS Date), N'Nữ', 2, 2, N'htf@example.com', 1)
GO
INSERT [dbo].[DiemDanh] ([ID_DiemDanh], [MSSV], [ID_lich], [NgayTG], [GioVaoLop], [TrangThai]) VALUES (1, 101, 1, CAST(N'2025-04-22' AS Date), CAST(N'07:05:00' AS Time), N'Trễ')
INSERT [dbo].[DiemDanh] ([ID_DiemDanh], [MSSV], [ID_lich], [NgayTG], [GioVaoLop], [TrangThai]) VALUES (2, 102, 2, CAST(N'2025-04-23' AS Date), CAST(N'10:15:00' AS Time), N'Vắng')
INSERT [dbo].[DiemDanh] ([ID_DiemDanh], [MSSV], [ID_lich], [NgayTG], [GioVaoLop], [TrangThai]) VALUES (3, 101, 1, CAST(N'2025-04-25' AS Date), CAST(N'07:15:00' AS Time), N'Vắng')
INSERT [dbo].[DiemDanh] ([ID_DiemDanh], [MSSV], [ID_lich], [NgayTG], [GioVaoLop], [TrangThai]) VALUES (4, 101, 2, CAST(N'2025-04-25' AS Date), CAST(N'10:15:00' AS Time), N'Vắng')
GO
INSERT [dbo].[LichSuDiemDanh] ([ID_LichSu], [ID_DiemDanh], [TGDiemDanh], [KetQua], [PhuongThuc], [GhiChu]) VALUES (1, 1, CAST(N'2025-04-22T07:05:00.000' AS DateTime), N'Thành công', N'Nhận diện khuôn mặt', NULL)
INSERT [dbo].[LichSuDiemDanh] ([ID_LichSu], [ID_DiemDanh], [TGDiemDanh], [KetQua], [PhuongThuc], [GhiChu]) VALUES (2, 2, CAST(N'2025-04-23T10:15:00.000' AS DateTime), N'Thất bại', N'Thủ công', N'Không rõ mặt')
GO
INSERT [dbo].[ThongBao] ([ID_ThongBao], [ID_DiemDanh], [NgayGui], [NoiDung], [TrangThaiGui]) VALUES (1, 1, CAST(N'2025-04-22' AS Date), N'Sinh viên Ngô Minh E đã điểm danh.', N'Đã gửi')
INSERT [dbo].[ThongBao] ([ID_ThongBao], [ID_DiemDanh], [NgayGui], [NoiDung], [TrangThaiGui]) VALUES (2, 2, CAST(N'2025-04-23' AS Date), N'Sinh viên Hồ Thị F đến lớp trễ.', N'Đã gửi')
GO
INSERT [dbo].[LichThucTe] ([ID_lichTT], [ID_lich], [NgayHoc]) VALUES (1, 1, CAST(N'2025-04-22' AS Date))
INSERT [dbo].[LichThucTe] ([ID_lichTT], [ID_lich], [NgayHoc]) VALUES (2, 2, CAST(N'2025-04-23' AS Date))
GO
INSERT [dbo].[FaceData] ([FaceID], [MSSV], [imagepath]) VALUES (1, 101, N'/faces/101.jpg')
INSERT [dbo].[FaceData] ([FaceID], [MSSV], [imagepath]) VALUES (2, 102, N'/faces/102.jpg')
GO
INSERT [dbo].[NguoiDung] ([ID_NguoiDung], [HoTen], [MatKhau], [VaiTro], [Email], [LKToi]) VALUES (1, N'admin', N'admin123', N'Admin', N'admin@example.com', 0)
INSERT [dbo].[NguoiDung] ([ID_NguoiDung], [HoTen], [MatKhau], [VaiTro], [Email], [LKToi]) VALUES (2, N'Ngô Minh E', N'sv123', N'SinhVien', N'nme@example.com', 101)
GO
