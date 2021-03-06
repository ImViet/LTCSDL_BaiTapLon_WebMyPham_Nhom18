USE [master]
GO
/****** Object:  Database [QLBHMyPham]    Script Date: 1/29/2022 9:47:42 AM ******/
CREATE DATABASE [QLBHMyPham]
GO
ALTER DATABASE [QLBHMyPham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBHMyPham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBHMyPham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBHMyPham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBHMyPham] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBHMyPham] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBHMyPham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBHMyPham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBHMyPham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBHMyPham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBHMyPham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBHMyPham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBHMyPham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBHMyPham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBHMyPham] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBHMyPham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBHMyPham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBHMyPham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBHMyPham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBHMyPham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBHMyPham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBHMyPham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBHMyPham] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBHMyPham] SET  MULTI_USER 
GO
ALTER DATABASE [QLBHMyPham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBHMyPham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBHMyPham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBHMyPham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [QLBHMyPham]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 1/29/2022 9:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [varchar](8) NOT NULL,
	[SoLuong] [smallint] NULL,
	[DonGiaBan] [real] NULL,
	[GiamGia] [real] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 1/29/2022 9:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[MaNV] [varchar](8) NULL,
	[NgayLapHD] [datetime] NOT NULL,
	[NgayGiao] [datetime] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/29/2022 9:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[Ho] [nvarchar](20) NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 1/29/2022 9:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [varchar](8) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 1/29/2022 9:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](8) NOT NULL,
	[Ho] [nvarchar](20) NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgaySinh] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[CMND] [varchar](12) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/29/2022 9:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](8) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GiaTien] [float] NULL,
	[XuatXu] [nvarchar](50) NULL,
	[MoTaSP] [nvarchar](max) NULL,
	[HinhSP] [nvarchar](max) NULL,
	[MaLoaiSP] [varchar](8) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [Ho], [Ten], [DiaChi], [SoDienThoai], [Email]) VALUES (1, N'Nguyễn', N'Nam', N'Phú Yên', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [Ho], [Ten], [DiaChi], [SoDienThoai], [Email]) VALUES (2, N'Trần', N'Văn Bảy', N'Nam Định', N'0325412321', N'baytv@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [Ho], [Ten], [DiaChi], [SoDienThoai], [Email]) VALUES (3, N'Văn', N'Thị Mỹ Phẩm', N'Thành phố Hồ Chí Minh', N'0363212524', N'phamxinh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [Ho], [Ten], [DiaChi], [SoDienThoai], [Email]) VALUES (4, N'Nguyễn', N'Thị Nữ', N'Kiên Giang', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [Ho], [Ten], [DiaChi], [SoDienThoai], [Email]) VALUES (5, N'Nguyễn Thị', N'Như Quỳnh', N'Quảng Ngãi', N'0348457968', N'quynhtran@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [Ho], [Ten], [DiaChi], [SoDienThoai], [Email]) VALUES (6, N'Nguyễn ', N'Tường Vy', N'Bình Định', N'0984564214', N'vynt@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'RM', N'Rửa mặt')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'TDM1', N'Trang điểm môi')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'TDMat', N'Trang điểm mắt')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'TDN', N'Trang điểm nền')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'TT', N'Tẩy trang')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [DiaChi], [NgaySinh], [SoDienThoai], [CMND]) VALUES (N'NV01', N'Đinh', N'Quốc Việt', N'211 đường số 6, phường 7, quận Gò Vấp, TP. Hồ Chí Minh', N'31/08/2001', N'0348717129', N'215535631')
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [DiaChi], [NgaySinh], [SoDienThoai], [CMND]) VALUES (N'NV02', N'Nguyễn', N'Thị Như Quỳnh', N'32 Nguyễn Kiệm, phường 3, quận Gò Vấp, TP. Hồ Chí Minh', N'15/06/2001', N'0368947556', N'2133620894')
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [DiaChi], [NgaySinh], [SoDienThoai], [CMND]) VALUES (N'NV03', N'Phạm ', N'Thụy', N'10 Trường Sơn, phường 2, quận Tân Bình, TP. Hồ Chí Minh', N'13/12/2001', N'0335123215', N'2147236214')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'RM01', N'Sữa rửa mặt Seoul Rose Skincare Centella Cleansing Foam Rosa 120ml', N'Chai', 220000, N'Hàn Quốc', N'Việc lựa chọn đúng và sử dụng một loại sữa rửa mặt tốt nên là bước đầu tiên của quá trình chăm sóc da của bất cứ ai. Một loại sữa rửa mặt cơ bản sẽ hoàn thành được những nhiệm vụ sau đây: làm sạch bụi bẩn, giúp loại bỏ makeup hay kem chống nắng ở trên da, giúp da thông thoáng, sạch sẽ và giúp các bước dưỡng và đặc trị sau đó thẩm thấu hoạt động tốt hơn. Sữa Rửa Mặt Seoul Rose Rosa Skincure Centella Cleansing Foam là một trong những loại sữa rửa mặt đang rất được ưa chuộng ở Hàn Quốc.
- Sữa Rửa Mặt Seoul Rose Rosa Skincure Centella Cleansing Foam với thành phần chiết xuất từ cây rau má (Centella) – thành phần được Rosa đưa lên làm thành phần nổi trội và cũng chính là tên của sản phẩm. Để chúng phát huy hiệu quả khả năng tăng độ ẩm trên da, làm giảm các vết thâm, đỏ, ngăn tác nhân gây ra mụn và thậm chí có thể mờ cả nám da nữa. Với thành phần thiên nhiên này, các bạn có làn da mẫn cảm hay mụn, khô nẻ.
- Ngoài ra, Sữa Rửa Mặt Seoul Rose Rosa Skincure Centella Cleansing Foam còn chứa thành phần chiết xuất từ cây rau sam. Khá giống với cả mask Rosa các bạn nhỉ. Lần này trong sữa rửa mặt, cây rau sam vẫn cho người dùng thấy rõ khả năng cấp ẩm vượt trội nhờ tính “mọng nước” của cây và hàm lượng cao vitamin A – chất duy trì độ nhờn cần thiết cho da.
Công dụng chính:
- Chữa lành các vết thương nhanh chóng.
- Giúp cân bằng và làm dịu tất cả các loại da, cải thiện sẹo.
- Chống lão hoá da, tăng độ đàn hồi cho da.
- Cung cấp dưỡng chất và ngăn ngừa tổn thương cho da.
- Giảm kích ứng và tăng độ đàn hồi cho da, cải thiện vết thâm trên da.
- Chống viêm, cải thiện các vấn đề về da, cung cấp nước, dưỡng chất cho da từ sâu bên trong và làm dịu da.
Hướng dẫn sử dụng:
- Sử dụng sữa rửa mặt sau khi đã tẩy trang sạch sẽ.
- Sau đó lấy 1 lượng sữa rửa mặt vừa đủ.
- Sau đó massage theo chiều chuyển động tròn để chất bẩn dễ sàng cuốn ra ngoài cũng như các mạch máu được lưu thông.
- Chừng 20-30 giây thì rửa lại thật sạch và lấy khăn bông mềm thấm.', N'suaruamatSeoulrose.png', N'RM')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'RM02', N'Sữa rửa mặt dưỡng ẩm Histolab Water-max Foam Cleanser Aqua Sicence 200ml', N'Chai', 730000, N'Hàn Quốc', N'Sữa rửa mặt dạng gel tạo bọt, với tinh chất độc quyền SRGF H1 Complex của Histolab giúp làm sạch da tuyệt đối, cân bằng độ pH, dưỡng ẩm, phục hồi và làm sáng da.
Sản phẩm thích hợp cho mọi loại da, đặc biệt là da khô, nhạy cảm, kích ứng sau peel da, laser.
Thành phần chính:
- Natri Hyaluronate - Dưỡng ẩm
- Chiết xuất rau sam - Portulaca Oleracea - Chống viêm
- Tinh chất SRGF H1 ComplexTM - Giúp làm dịu, giữ ẩm & tái tạo da
- Chiết xuất từ hoa Thủy xương bồ (Iris Ensata) - Làm sáng da
 Hướng dẫn sử dụng:
- Sử dụng vào sáng và tối theo yêu cầu.
- Lấy một giọt cho vào lòng bàn tay đã thấm ướt, tạo bọt rồi mát xa lên mặt sau đó rửa sạch hoàn toàn bằng nước ấm.
Thông tin thương hiệu:
Histolab thương hiệu dược mỹ phẩm được phân phối tại các phòng khám da liễu. Histolab đã được nghiên cứu để cải thiện làn da nhanh chóng bằng cách tận dụng sự phát triển của tế bào gốc thực vật (Callus) cùng sự tư vấn của đội ngũ bác sỹ danh tiếng để có được công thức hiệu quả nhất.
Hiện nay các sản phẩm của Histolab được yêu thích tại hầu hết 8.500 phòng khám da liễu & thẩm mỹ tại Hàn Quốc, các sản phẩm của Histolab đã trở nên nổi tiếng nhờ tác dụng tuyệt vời trong lĩnh vực điều trị da chuyên nghiệp cũng như các bước chăm sóc da cơ bản như cải thiện nếp nhăn, tàn nhang, trẻ hóa da, làm trắng da…
Histolab luôn tự hào phát triển thương hiệu sản phẩm không ngừng dựa trên nền tảng khoa học đáng tin cậy cùng kỹ sư tiên tiến và đội ngũ chuyên viên nghiên cứu giỏi luôn đưa ra những dòng sản phẩm tốt nhất đặc trị hiệu quả cho từng loại da với thành phần và hàm lượng phù hợp nhất
Histolab đã có mặt tại hơn 20 Quốc Gia trên Thế Giới : Mỹ, Đức, Pháp, Ý, Canada, Nhật Bản, Nga, Úc, Mexico, Colombia, Brazil, Thổ Nhĩ Kỳ, Hungary, Singapore, Iran, Philippines,  Cộng Hòa Séc, Trung Quốc, Hồng Kông, Malaysia, Campuchia, Đài Loan, Litva.', N'suaruamatHistolab.png', N'RM')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'RM03', N'Sữa rửa mặt nâng tông da OHUI Miracle Moisture Cleansing Foam 80ml', N'Chai', 250000, N'Hàn Quốc', N'O Hui Miracle Moisture Cleansing Foam – sữa rửa mặt với công nghệ Chiffon-Ceramide, thành phần chiết xuất từ thiên nhiên (chiết xuất Mẫu đơn…) có tác dụng làm sạch bã nhờn và bụi bẩn, loại bỏ lớp sừng già, cấp ẩm tức thì, tăng cường sức đề kháng cho da, tăng cường độ săn chắc, phục hồi những vùng da bị hư tổn, chống mất nước làm khô da, ngăn ngừa lão hóa, dưỡng da trắng sáng và mịn màng.
Sản phẩm thuộc dòng sản phẩm Miracle Moisture chuyên cấp ẩm đến từng nếp da, cho làn da ẩm mượt đầy sức sống, với 3 tác dụng chính: bổ sung ẩm đậm đặc, tạo làn da trong mượt, dịu nhẹ không gây kích ứng.
Thiết kế độc quyền của O Hui, dạng tuýp trông đơn giản nhưng không kém phần sang trọng và tinh tế, với màu hồng phấn làm chủ đạo, đường vân nắp lấp lánh, cầm chắc và mát tay. Nắp vặn, miệng tuýp nhỏ, tiện lợi trong việc lấy sản phẩm khi sử dụng.
Dạng bọt mịn, khả năng tạo bọt nhanh và nhiều, tạo cảm giác thoải mái khi massage lên mặt, tan nhẹ khi rửa lại với nước.
Chất sữa rửa mặt màu hồng phấn như vỏ hộp, mùi thơm dịu nhẹ.
Thích hợp dùng cho mọi loại da, kể cả da nhạy cảm.
Công dụng:
- Khả năng làm sạch sâu, loại bỏ mọi bụi bẩn, bã nhờn và da chết ở chân lông.
- Cấp nước dưỡng ẩm, ngăn ngừa da khô, hư tổn, bong tróc…
- Làm se khít lỗ chân lông.
- Công nghệ Chiffon-Ceramide giúp tăng cường hàng rào bảo vệ da.
- Bổ sung dưỡng chất, chống lão hóa, phục hồi làn da hư tổn, tăng cường sức đề kháng và độ đàn hồi.
- Làm dịu làn da nhạy cảm.
Thành phần chính:
Chiffon Ceramide (nguồn gốc thiên nhiên): tăng cường độ ẩm, tăng cường hàng rào bảo vệ da, tái tạo sự mạnh mẽ của các Ceramide trong da, lưu giữ độ ẩm không bị bay hơi làm cho làn da luôn ẩm mịn.
Chiết xuất từ Mẫu đơn: giúp bổ sung ẩm, làm dịu da.
Mẫu đơn (peony) là loài hoa có khả năng cung cấp độ ẩm liên tục nhằm duy trì những cánh hoa to và rực rỡ màu sắc, mang một mùi hương dịu ngọt.
Hướng dẫn sử dụng:
- Làm ướt mặt.
- Lấy một lượng nhỏ sữa rửa mặt O Hui, cỡ hạt đậu, cho vào lòng bàn tay, tạo bọt với một ít nước.
- Thoa đều lên toàn bộ mặt và massage khoảng 30 giây, sau đó rửa sạch lại với nước.
- Dùng 2 lần mỗi ngày, sáng và tối để làm sạch da.', N'suaruamatOHUI.png', N'RM')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'RM04', N'Sữa rửa mặt La Roche-Posay Effaclar Gel 400ml', N'Chai', 510000, N'Pháp', N'La Roche-Posay Effaclar gel sản phẩm gel rửa mặt phù hợp với cả những làn da “khó chiều” nhất: tình trạng da dầu, da mẩn đỏ hay nổi mụn nhiều.
Gel rửa mặt tạo bọt làm sạch & giảm nhờn cho da dầu nhạy cảm La Roche-Posay Effaclar Purifying Foaming Gel sẽ giúp ngăn ngừa và hỗ trợ điều trị mụn tối đa với kết cấu dạng gel trong, dễ dàng tạo bọt cùng công thức không chứa dầu, không cồn, an toàn cho làn da.
Sản phẩm nhẹ nhàng làm sạch da từ sâu trong lỗ chân lông, loại bỏ bụi bẩn cùng dầu thừa, đồng thời giữ độ pH luôn ở mức cân bằng 5.5 nên sau khi rửa mặt xong, da không hề khô rít, căng rát, mà vẫn mềm mịn, sạch thoáng và đầy sức sống.
Thành phần:
- Nước khoáng La Roche Posay: thành phần giúp làm dịu da và giảm kích ứng cho da nhạy cảm.
- Kẽm PCA: thành phần giúp làm sạch da, loại bỏ và giảm lượng dầu nhờn dư thừa, và sát khuẩn cho da mụn. từ đó giúp da mụn khỏe lên.
- Citric Acid: Thành phần thường có trong hoa quả giúp điều trị mụn trứng cá nhẹ, cải thiện sắc tốt da như sạm, nám,…
- Thành phần còn lại gồm: Aqua, chất tạo bọt Sodium Laureth Sulfate, Hexylene Glycol, PEG-8, chất nhũ hoá Coco-Betaine, PEG-120 Methyl Glucose Dioleate, chất điều chỉnh độ pH Sodium Hydroxide, chất bảo quản Sodium Benzoate,…
Như vậy qua bảng thành phần có thể thấy sản phẩm không chứa xà phòng, không dầu, không cồn phù hợp sử dụng cho làn da nhạy cảm và dễ kích ứng.
Công dụng:
- Sữa rửa mặt giúp làm sạch da nhẹ nhàng không làm thay đổi pH của da, không gây khô căng da sau khi sử dụng.
- Giúp loại bỏ dầu thừa nhẹ nhàng, cân bằng lượng dầu trên da.
- Trị mụn, điều trị làn da nhạy cảm, giảm kích ứng cho da.
Hướng dẫn sử dụng:
- Sau khi thực hiện bước tẩy trang, lấy một lượng dung dịch vừa đủ sữa rửa mặt La Roche-Posay khoảng một hạt đỗ ra lòng bàn tay.
- Massge sữa rửa mặt với ít nước trong lòng bàn tay để tạo bọt.
- Sau đó, massge sữa rửa mặt thu được nhẹ nhàng trên da trong vòng 1 phút theo chiều từ trên xuống dưới, từ trong ra ngoài, tránh massge vào vùng mắt và môi.
- Rửa mặt lại với nước sạch và thực hiện các bước dưỡng da sau đó.
Lưu ý:
Bạn chỉ nên để sữa rửa mặt trên da trong vòng 3 phút tránh gây khô da, mất nước sau khi sử dụng.
Thông tin thương hiệu:
La Roche-Posay là nhãn hiệu dược mỹ phẩm hàng đầu của Pháp được thành lập từ năm 1995.
Đây là nhãn hiệu dược mỹ phẩm được nghiên cứu, phát triển và điều trị dành riêng cho làn da nhạy cảm với thành phần được công nhận bởi hơn 25.000 bác sĩ, chuyên gia da liễu trên toàn thế giới.
Các sản phẩm của hãng được kiểm nghiệm nghiêm ngặt và thử nghiệm trên chính những làn da nhạy cảm. Tới nay, La Roche-Posay đã cho ra nhiều sản phẩm đặc trị dành cho những làn da khó tính nhất: Da dầu, mụn, nhạy cảm, dễ kích ứng, da tổn thương,…', N'suaruamatLaRochePosay.png', N'RM')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'RM05', N'Sữa rửa mặt Living Nature Sensitive Cleanser 100ml (Dành cho da nhạy cảm/khô/dịu da)', N'Chai', 750000, N'New Zealand', N'“Nếu không làm sạch da đúng cách, tốt nhất đừng sử dụng bất cứ loại mỹ phẩm nào khác”. Nhận định này có vẻ sẽ làm nhiều người bất ngờ, tuy nhiên đây là sự thật. Việc làm sạch da với sữa rửa mặt là một trong những bước chăm sóc da vô cùng quan trọng nếu muốn sở hữu làn da đẹp. Với phái đẹp có sở thích trang điểm, bước chăm sóc da này càng trở nên quan trọng gấp bội. Việc rửa mặt bằng sữa rửa mặt giúp làm sạch lớp mỹ phẩm, các chất nhờn, bụi bẩn còn trên da và ngăn hiện tượng bài tiết lớp mỡ nhờn trên da khiến các lỗ chân lông không bị bít kín. Các chuyên gia da liễu khuyên các bạn nên thường xuyên rửa mặt và chăm sóc da sau khi trang điểm và ít nhất nên rửa mặt hai lần một ngày vào buổi sáng và tối.
Living Nature Sensitive Cleanser – Sữa rửa mặt dành cho da nhạy cảm
Làm sạch là phần quan trọng nhất của một quy trình chăm sóc da tốt, tuy nhiên nếu bạn có làn da nhạy cảm, một số chất tẩy rửa có thể gây khó chịu cho da, khô sần, nổi mụn và khiến nó nhạy cảm hơn. Sữa rửa mặt Living Nature Sensitive Cleanser có tác dụng tẩy rửa nhẹ nhàng mà không xảy ra các kích ứng da, ngay cả trên làn da khô và nhạy cảm, đồng thời phát huy tác dụng giữ ẩm và kháng khuẩn cho da. Sữa rửa mặt dành cho da nhạy cảm từ Living Nature có dạng kem, dịu nhẹ và thực sự nhẹ nhàng khi sử dụng.
Sữa rửa mặt cho da nhạy cảm Living Nature Sensitive Cleanser thuộc dòng sản phẩm chăm sóc da nhạy cảm được chứng nhận tự nhiên của Living Nature có chứa các thành phần có độ pH cân bằng, không chứa xà phòng và nước hoa nên có khả năng làm sạch da nhẹ nhàng nhưng không gây bào mòn da. Với thành phần chiết xuất từ harakeke và dầu dừa nguyên chất, sản phẩm giúp cung cấp nguồn dưỡng chất giữ ẩm và kháng khuẩn cho da, nhẹ nhàng loại bỏ lớp trang điểm và da chết mà không làm xuất hiện kích ứng da, ngay cả trên làn da rất khô hoặc nhạy cảm.
Sử dụng Living Nature Sensitive Cleanser mỗi ngày là bước chăm sóc hoàn hảo cho chế độ làm đẹp vì không chỉ đảm bảo da sạch khỏe mà còn góp phần cải thiện độ săn chắc tự nhiên của da, giữ cho làn da luôn được ngậm nước. Đây là sản phẩm được khuyến khích sử dụng cho làn da nhạy cảm, khô hoặc kích thích; đồng thời nên sử dụng ít trên làn da hỗn hợp.
Thành phần
Aqua, glycerin (rau glycerin), dầu cocos nucifera, cera alba (sáp ong), galactoarabinan (chiết xuất thảo cây), sucrose cocoate, gum xanthan, cetyl palmitate, phormium tenax leaf juice (nz gel lanh), decyl glucoside, sorbitan palmitate, sorbitan olivate, coco glucoside, glyceryl oleate, chiết xuất trái cây citrus grandis (grapefruit), natri levulinate, natri anisat, phytate natri.
Công dụng
- Cân bằng độ pH tự nhiên giúp da khỏe mạnh.
- Loại bỏ sạch các tế bào già cỗi, lớp dầu nhờn thừa, lớp trang điểm…
- Không gây khô da sau khi sử dụng, tạo cảm giác mềm mại cho da.
- Dưỡng ẩm, thúc đẩy quá trình trao đổi chất và tái tạo da.
- Làm dịu, kháng khuẩn tự nhiên cho da, giảm viêm và kích ứng.
- Thành phần hữu cơ lành tính phù hợp với mọi loại da, đặc biệt da nhạy cảm, da mụn.
Hướng dẫn sử dụng
Sử dụng sữa rửa mặt vào mỗi buổi sáng và tối. Lấy lượng sữa vừa đủ, thoa nhẹ nhàng và massage trên da đã làm ướt theo hình tròn. Rửa mặt bằng nước ấm và vỗ nhẹ.
Lưu ý: Tác dụng có thể khác nhau tuỳ cơ địa của người dùng.', N'suaruamatLivingNature.jpg', N'RM')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'RM06', N'Sữa Rửa Mặt SHO Hydrating B5 Cleansing Foam 120ml', N'Chai', 370000, N'Hàn Quốc', N'SHO hydrating B5 CLEANSING FOAM là sữa rửa mặt dạng bọt - rất thích hợp cho làn da bị khô ráp và sạm.
Các bong bóng bọt mềm, mịn giúp giảm thiểu kết cấu da của bạn.  Hydrating B5 Cleansing Foam làm sạch da mặt của bạn một cách hoàn hảo và nhẹ nhàng. Bạn sẽ cảm nhận được sức mạnh dưỡng ẩm ngay sau khi rửa mặt, da bạn sẽ được mịn mượt hơn vì nó cung cấp vitamin B5 và collagen thủy phân. Sản phẩm sữa rửa mặt SHO tạo bọt nhẹ nhàng, giúp làm dịu da ngay cả làn da nhạy cảm.
Thành phần:
- Chamaecyparis Obtusa Water: Làm dịu và thanh lọc da vượt trội
- Thành phần Vitamin B5: Tăng cường hàng rào bảo vệ da.
- Hydrat: Dưỡng ẩm. Nó giúp hydrat hóa và giữ ẩm cho hàng rào bảo vệ da yếu và làm cho làn da của bạn khỏe mạnh và săn chắc hơn.
- Chamaecyparis Obtusa Water Hydrate: Làm dịu, giữ nước cho da và làm dịu làn da xỉn màu, kiệt sức do tác động của môi trường bên ngoài.
- Collagen thủy phân: Làm săn chắc, chống lão hóa, giúp hàng rào bảo vệ da săn chắc và khỏe mạnh hơn.
- Natri Hyaluronate: Dưỡng ẩm - Cấp nước cho làn da khô của bạn và giúp duy trì độ ẩm Ceramide.
Hướng dẫn sử dụng: Dùng một lượng sữa rửa mặt cỡ một đồng xu và thoa bằng tay ướt. Nhẹ nhàng massage mặt và rửa mặt thật sạch bằng nước ấm sau khi rửa mặt.
Lưu ý:
- Bạn nên ngừng bôi và nói chuyện với bác sĩ da liễu ngay lập tức nếu bạn đang bị phát ban, sưng tấy, ngứa ngáy.
- Không sử dụng sản phẩm trên vùng da bị thương.', N'suaruamatSHO.png', N'RM')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'RM07', N'GEL Rửa Mặt Không Xà Phòng, Làm Sạch Và Loại Bỏ Tế Bào Chết SVR SebiaClear Gel Moussant 200ml', N'Chai', 380000, N'Pháp', N'SVR Sebiaclear Gel Moussant – gel rửa mặt ứng dụng công thức mới, giàu hoạt chất da liễu nồng độ cao: Gluconolactone, Niacinamide, Mat SR (2%),… giúp làm sạch nhẹ nhàng, loại bỏ hoàn toàn tạp chất (bã nhờn, bụi bẩn, lớp sừng già,…), điều hòa lượng bã nhờn dư thừa, cân bằng độ pH và độ ẩm tự nhiên của da, giữ thông thoáng lỗ chân lông, thanh lọc da, kích thích tuần hoàn máu, cải thiện khả năng hấp thụ dưỡng chất, ức chế quá trình lão hóa, hạn chế tắc nghẽn lỗ chân lông, ngăn ngừa mụn và viêm nang lông, kháng viêm, chống khuẩn, giảm kích ứng, hỗ trợ điều trị các đốm mụn, thúc đẩy quá trình tái tạo tế bào mới, dưỡng da sáng hồng và trẻ hóa,…
Dạng gel trong suốt tạo bọt mịn, cực kỳ dịu nhẹ, không gây cảm giác châm chít hoặc ngứa rát. Hương táo xanh nhẹ rất dễ chịu.
Sản phẩm phù hợp với mọi loại da: da hỗn hợp, da dầu, da mụn, da nhạy cảm,…
Điểm nổi bật:
- Sản phẩm thuộc dòng SEBIACLEAR - dòng sản phẩm cải tiến, chuyên về chăm sóc làn da dầu nhờn và dễ bị mụn của SVR, giúp xử lý các đốm mụn mủ, mụn đầu đen và bóng nhờn, mang lại hiệu quả tuyệt vời, độ dung nạp tối ưu và vô cùng thoải mái khi sử dụng. Hiệu quả được chứng minh sau 7 ngày sử dụng trên mụn trứng cá.
- Sản phẩm chứa các thành phần được nghiên cứu và điều chế riêng trong phòng thí nghiệm SVR với sự phối hợp độc đáo giữa các hoạt chất da liễu nồng độ cao, có tác dụng hỗ trợ cải thiện tình trạng mụn trên tất cả mọi loại da.
- Công thức mới của SEBIACLEAR chứa 2 hoạt chất giảm mụn trứng cá rất hiệu quả:
- GLUCONOLACTONE với tác động giảm viêm và tiêu sừng, hiệu quả tương tự như AHAs với độ dung nạp tốt hơn.
- NIACINAMIDE có tác dụng giảm khuẩn và điều tiết bã nhờn, nồng độ tối ưu hoạt động trên tất cả các loại mụn mà không làm ảnh hưởng đến da.
- Thành phần chiết xuất từ dược, lành tính và an toàn cho làn da, không chứa xà phòng, không chứa cồn, không chứa chất tạo màu, không chứa paraben, không gây dị ứng.
Công dụng:
1)Làm sạch sâu lỗ chân lông, loại bỏ hoàn toàn tạp chất (bã nhờn, bụi bẩn, lớp sừng già,…), hạn chế da bí tắc dẫn đến sinh mụn và viêm nang lông.
2)Kiểm soát dầu nhờn, cân bằng độ pH và độ ẩm tự nhiên của da, củng cố hàng rào bảo vệ da trước các tác nhân gây hại từ môi trường xung quanh.
3)Giảm mụn, giảm kích ứng, làm dịu, giảm sưng tấy, ngăn ngừa mụn phát triển.
4)Kháng viêm, chống khuẩn, ức chế sự sinh sôi của vi khuẩn trên bề mặt da.
5)Chống oxy hóa và các gốc tự do, làm chậm quá trình lão hóa, giảm thiểu hình thành nếp nhăn và các vết chân chim.
6)Tăng cường sức đề kháng, kích thích tuần hoàn máu dưới da, thúc đẩy tái tạo và phục hồi tế bào da.
7)Thanh lọc, cải thiện quá trình hấp thụ dưỡng chất, làm mờ thâm sạm, dưỡng đều màu da, trả lại làn da sạch đẹp, sáng khỏe và căng tràn sức sống.', N'suaruamatSebiaclear.png', N'RM')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'RM08', N'Sữa Rửa Mặt Làm Sạch Và Thanh Khiết Làn Da URIAGE DEPIDERM MOUSSE BRIGHTENING CLEANSING FOAM 100ml', N'Chai', 380000, N'Pháp', N'Thành phần chính & công dụng:
- Sửa rửa mặt giúp làm sạch và thanh khiết làn da với thành phần nước khoáng EAU giúp giữ ẩm tối ưu, làm dịu nhẹ tổn thương, phục hồi hiệu ứng rào cản của da và hạn chế mất nước.
- Phức hợp ACTIWHITE có tác dụng làm giảm mờ vết nhăn do nhiều nguyên nhân khác nhau.
- Vitamin C giúp làm tăng độ ẩm trên da, thúc đẩy quá trình tổng hợp collagen, chống gốc tự do, giúp da trắng sáng tự nhiên.
- Hương thơm dịu nhẹ mang đến cảm giác thư giản, thoải mái.
Hướng dẫn sử dụng:
- Lấy một giọt sản phẩm ra lòng bàn tay, tạo bọt.
- Thoa sản phẩm lên bề mặt da ẩm hoặc dùng bàn chải rửa mặt.
- Rửa sạch lại với nước.
- Dùng cho sáng và/hoặc tối.', N'suaruamatUriageDepiderm.png', N'RM')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'RM09', N'Máy Rửa Mặt Honest Beauty Cleansing Rejuvenation Device', N'Cái', 490000, N'Trung Quốc ', N'Ô nhiễm môi trường là nguyên nhân hàng đầu gây tổn thương làn da. Dù bạn có rửa mặt hai ngày/ lần thì vẫn không thể cuốn trôi hết bụi bẩn. Vì thế, máy rửa mặt ra đời như một cứu tinh, giúp làn da được làm sạch sâu. Ngoài ra, bạn có biết rằng máy rửa mặt hiệu quả hơn gấp 10 lần so với rửa mặt bình thường không?
Máy rửa mặt 4 trong 1 Honest Beauty Cleansing Rejuvenation Device - sản phẩm hot của năm 2021 vừa mới ra mắt thị trường.
Bạn có biết bên cạnh khả năng massage thư giãn làn da hiệu quả sau ngày dài mệt mỏi thì máy rửa mặt còn có những “bí thuật” massage tuyệt vời cho làn da:

- Thu gọn mặt: tạo hình khuôn mặt gọn gàng hơn, nâng cơ săn chắc đàn hồi.

- Thư giãn cơ mặt: thúc đẩy tuần hoàn máu, giúp da mặt hồng hào sáng khỏe.

- Thẩm thấu tinh chất: chế độ massage giúp tinh chất đi sâu vào tầng da, phát huy tối đa công dụng dưỡng da.

Honest Beauty Cleansing Rejuvenation Device là thiết bị làm sạch sâu, tái tạo phục hồi da, với nhiều chức năng trong 1 như ion dương và ion âm + dòng điện EMS + rung vi nhiệt + liệu pháp đèn chiếu.

Máy rửa mặt sở hữu 4 liệu pháp đèn chiếu:

- Đèn xanh dương: Chống lại mụn trứng cá, cân bằng dầu và độ ẩm cho khuôn mặt.

- Đèn xanh: Cải thiện tình trạng da, mang lại làn da sáng và mịn màng.

- Đèn đỏ: Nâng và săn chắc, kích thích Collagen cho làn da tràn đầy năng lượng hơn.

- Liệu pháp quang phổ đa quang phổ: Phục hồi da khỏi mọi tổn thương, cải thiện lưu thông máu.

Cơ chế hoạt động:

- Thành phần ion hoạt tính trong các sản phẩm chăm sóc da sẽ đẩy nhanh vào các lỗ chân lông và khoảng trống tế bào giúp tinh chất xuyên qua da và thẩm thấu vào da, làm tăng gấp đôi tốc độ thẩm thấu của các sản phẩm chăm sóc da. 

- Trong đó, các ion dương được xuất ra ngoài, kết hợp với công dụng tẩy trang, đào thải bụi bẩn sâu dưới da, làm sạch da triệt để;  các ion âm được đưa vào, cùng các sản phẩm chăm sóc da được sử dụng để thâm nhập vào cơ và bảo vệ da.

- Dòng điện vi EMS: kích thích cơ và massage p thông qua dòng điện vi mô, giúp phục hồi độ đàn hồi của cơ.  Đồng thời, sự kích thích hiện tại của lớp hạ bì cũng thúc đẩy sản xuất nhiều ATP hơn, đây là chất quan trọng để sản xuất collagen.

- Sưởi ấm: Làm ấm thúc đẩy sự hấp thụ, kéo căng cấu trúc da, giúp da trở nên căng mọng. 

- Rung vi mô: sử dụng rung cơ học và kích thích điện tử để làm căng da người, tăng độ đàn hồi và tăng cường trao đổi chất của tế bào da. 

- Quang trị liệu: Blue Light (ánh sáng xanh)  sửa chữa bề mặt da thô ráp, làm cho da mịn và mịn, ngăn ngừa mụn và loại bỏ mụn trứng cá;  Red light (ánh sáng đỏ) thúc đẩy sản xuất collagen và ức chế hiệu quả nếp nhăn / thâm / sạm da, tăng đàn hồi và căng bóng da.
ĐẶC BIỆT, khác với dòng máy rửa mặt khác, Honest Beauty Cleansing Rejuvenation Device có 4 CHẾ ĐỘ SỬ DỤNG:

- Nhấn nút nguồn để chuyển chế độ, nhấn nút + và -  để điều chỉnh cường độ dòng điện hoặc độ rung.

- Chế độ xuất (ánh sáng xanh + vi dòng EMS + vi rung + nhiệt) - Chèn bông tẩy trang lên bề mặt kim loại, điều chỉnh dòng điện bằng nút cao thấp. 

- Chế độ làm sạch - Sử dụng silicone làm sạch, điều chỉnh dòng điện bằng nút cao và thấp. 

- Chế độ nhập (đèn đỏ + dòng vi sinh EMS + rung + nhiệt) --- Cho tinh chất lên bề mặt kim loại , điều chỉnh dòng điện bằng nút cao thấp. 

- Chế độ đèn chiếu (đèn chiếu + sưởi ấm) - Tiếp xúc mặt với bề mặt kim loại để chiếu đèn.

 * Lưu ý: Sử dụng chế độ xuất trước, sau đó sử dụng chế độ làm sạch.  - Đầu tiên loại bỏ các chất bẩn từ lỗ chân lông lên bề mặt da, sau đó rửa sạch bằng sữa rửa mặt. 

- Mỗi chế độ đặt thời gian sử dụng 4 phút. 

- Sau 4 phút, thiết bị sẽ chuyển sang trạng thái chờ và sẽ tự động tắt sau 1 phút không hoạt động.
Hướng dẫn sử dụng:

Chế độ xuất  dùng với bông tẩy trang

- Chuẩn bị một miếng bông tẩy trang

- Gắn bông tẩy trang vào mặt kim loại của máy

- Đổ dung dịch tẩy trang vào bông và mở máy

- Nhẹ nhàng massage theo hướng vòng tròn

Chế độ nhập, đèn kết hợp nâng cơ

- Đắp một miếng mặt nạ thư giãn

- Mở máy, chuyển sang chế độ đèn

- Giữ và ấn nhẹ máy lên vùng da cần nâng cơ, nâng theo nhiều từ dưới lên.

- Rửa lại mặt(nếu cần) hoặc massage và tiếp tục các chu trình dưỡng da kế tiếp.

Chế độ đèn trị liệu

- Thoa toner hoặc lotion lên da

- Bật chế độ đèn trị liệu

- Giữ và ấn nhẹ máy lên vùng da cần nâng cơ, nâng theo nhiều từ dưới lên.', N'mayruamatHonestBeauty.png', N'RM')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDM01', N'Son Vacci Tint Lipstik Clear Red #20', N'Thỏi', 350000, N'Hàn Quốc', N'Sản phẩm ra mắt và tạo nên cơn sốt cho cộng đồng teen-girl với chất son tint lâu trôi nhưng lại ở dạng thỏi và công nghệ LED cho môi “tỏa sáng” đúng nghĩa đen.  
Sản phẩm tập trung vào sắc màu tươi sáng, đặc biệt phù hợp với những kiểu trang điểm thường ngày của người Việt Nam.  
Màu son #220 có sắc đỏ thuần, phù hợp với mọi tông da và mọi under tone.
Công dụng
Công thức tăng cường đa dưỡng chất VITAMIN và khoáng chất từ thiên nhiên giúp dưỡng ẩm, chấm dứt tình trạng khô nứt môi, cho đôi môi căng mọng gợi cảm, quyến rũ và tràn đầy sức sống.    
Sản phẩm còn cung cấp độ ẩm và sức sống cho đôi môi thô ráp, bong tróc với dầu khoáng thiên nhiên và dưỡng chất vitamin E làm cho làn môi thêm căng mọng, tăng vẻ gợi cảm và quyến rũ.
Hướng dẫn sử dụng    
Có thể thoa trực tiếp hoặc dùng cọ, sử dụng trang điểm hằng ngày hoặc các dịp đặc biệt.
Lưu ý  
- Vì son khá sáng nên tốt nhất hãy tô từ nhạt sang đậm dần.
- Tránh xa nhiệt độ cao.
- Tránh xa tầm tay trẻ em.', N'sonVacci.png', N'TDM1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDM02', N'Son thỏi F.O.X Definitely Lipsticks', N'Thỏi', 300000, N'Đài Loan', N'Son Thỏi F.O.X Definitely Lipstick 4g có tác dụng cân bằng độ ẩm cho môi, dưỡng môi mềm mại và tạo lớp nền bảo vệ môi khỏi những tác động từ bên ngoài. Sản phẩm thích hợp để sử dụng hàng ngày hoặc dùng cho những phong cách trang điểm sang trọng quý phái, cho đôi môi cuốn hút và hấp dẫn hơn.
Đặc biệt, không chứa các thành phần kích ứng da, bảo vệ đôi môi của bạn khỏi những tác động từ bên ngoài. Với chỉ số chống nắng SPF10 sẽ giúp bảo vệ làn da nhạy cảm của môi khỏi ánh nắng mặt trời. Sản phẩm giàu tinh chất dưỡng ẩm, giúp cung cấp độ ẩm cần thiết cho môi. Màu son đa dạng phù hợp với mọi phong cách thời trang.
Hướng dẫn sử dụng & bảo quản:
- Chọn màu  ưng ý và thoa lên môi theo phong cách bạn thích (ombre, lòng môi,...). Chú ý, nên lau nhẹ lớp son dưỡng trước khi thoa son màu để son bám màu tốt hơn, lên màu chuẩn hơn.
- Bảo quản nơi khô ráo, thoáng mát.', N'sonthoiFOXH04.png', N'TDM1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDM03', N'Son Chanel Rouge Allure Velvet Luminous Matte Lip', N'Thỏi', 960000, N'Pháp', N'Không sao chép bất kỳ loài vật nào, sư tử không cần tuân theo quy tắc mà tự đặt ra luật lệ của chính mình. Sư tử để lại dấu ấn khó phai trong tâm trí và kí ức của mỗi người.
Mỗi màu trong 8 sắc độ của ROUGE ALLURE VELVET LE LION DE CHANEL phiên bản giới hạn đại diện cho một trong những đặc điểm tính cách của vị chúa sơn lâm này.
Với kết cấu mềm mịn như nhung, 8 phiên bản sáng tạo độc quyền được nhận diện bằng nút bấm mở độc đáo trên vỏ cùng biểu tượng sư tử in nổi trên đỉnh nắp. ROUGE ALLURE VELVET LE LION DE CHANEL. Một sức hút khó phai.
Thành phần:
- Hạt sắc tố siêu mịn, tinh khiết và cô đặc cao mang đến các tông màu cá tính.
- Sự kết hợp giữa các vi hạt soft-focus và bột ngọc trai siêu mịn cho lớp son lì rạng rỡ.
- Dẫn xuất dầu jojoba cho đôi môi mềm mượt
Hướng dẫn sử dụng:
- Tô trực tiếp lên môi.
- Để có một đôi môi được tạo hình hoàn hảo, kết hợp ROUGE ALLURE VELVET với dòng LE CRAYON LÈVRES cùng tông màu và tô son môi bằng đầu cọ của bút chì.', N'sonChanel.png', N'TDM1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDM04', N'Son HERA SENSUAL FRESH NUDE TINT', N'Thỏi', 590000, N'Hàn Quốc', N'Hera vừa tung ra dòng son mới Sensual Fresh Nude Tint đang rần rần khắp các trang mạng làm đẹp nội địa Hàn.

Với thiết kế vỏ son sang trọng và cực kì bắt mắt, dòng son Sensual Fresh Nude Tint toác lên sự tinh tế, ngọt ngào và tươi mát hơn hẳn, không những thế chất son và màu son cũng được cải tiến, mang đến cảm giác trải nghiệm thú vị cho các nàng mê son.

Ưu điểm sản phẩm:

- Đây là dòng son tint bóng sinh ra cho mùa hè 2021 với các gam màu vô cùng trendy

- Son Hera Sensual Fresh Nude Tint chứa phức hợp nước ép berry dưỡng ẩm và lên màu tươi tắn trên môi.

- Độ ẩm tự nhiên trên môi với kết cấu dạng nước thấm vào môi mỏng và tươi tắn.

- Phức hợp nước ép berry cung cấp cảm giác dưỡng ẩm đến tận sâu bên trong môi cũng như độ ẩm thấm vào môi ngay lập tức.

- Màu sắc và độ sáng tự nhiên bám đều trên môi mà không bị trôi. Màu sắc tươi mới tinh khiết tràn đầy sức sống tự nhiên.

Đánh son tint cả môi:

Bước 1: Bặm nhẹ môi vào khăn giấy để loại bỏ bớt phần son dưỡng thừa và tạo một lớp nền mềm mịn nhưng không quá trơn trượt để áp dụng son tint dễ dàng hơn.

Bước 2: Nhúng đầu cọ vào son tint và gạt nhẹ vào phần miệng lọ/ cây son để lấy được lượng son vừa đủ dùng. Bởi đa số son tint đều lên màu khá đậm nên chỉ cần dùng một lượng nhỏ.

Bước 3: Hới hé môi, đặt cọ vào môi dưới và tán son nhẹ nhàng từ trong ra ngoài.

Bước 4: Bặm môi lại thật nhanh (tránh để son bắt đầu khô mới bặm) vài lần để son tint lan đều ra cả môi trên và môi dưới.

Bước 5: Tiếp tục dùng đầu cọ viền theo đường môi trên và môi dưới đồng thời tán son tint đều khắp môi. Để có phần viền môi tự nhiên, bạn cũng có thể dùng tăm bông hoặc ngón tay để tán nhẹ phần son quanh đường viền.

Bước 6: Sau khi đã tán đều son và cảm thấy hài lòng bạn nên chờ một chút cho chúng khô lại. Nếu muốn làm giảm bớt độ bóng, bạn có thể chờ một lát rồi bặm nhẹ môi vào khăn giấy.

', N'sonHeraSensual.png', N'TDM1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDM05', N'Son Dưỡng Có Màu VACOSI COLOR LIP BALM 3G', N'Thỏi', 210000, N'Hàn Quốc', N'Son dưỡng Vacosi được xem là “bảo bối” của mình trong những ngày se se lạnh hoặc thời tiết hanh khô. Với một đứa dễ bị khô, bong tróc môi thì lúc nào trong các bước chăm sóc đôi môi cũng không thể thiếu son dưỡng.

Về bảng màu: Vacosi Color Lipbalm có 10 màu với 6 mã màu đầu tiên nghiêng về tone màu nhạt và 4 tone màu tiếp theo có màu đậm hơn. Sau khi bảng cập nhật thêm 4 màu với tone màu đậm hơn thì  son dưỡng môi Vacosi trở nên đa dạng màu hơn bản trước kia. Giờ đây Vacosi phù hợp cho cả các cô nàng yêu phong cách nhẹ nhàng, ngọt ngào và cũng có thể thích hợp cho các cô gái theo phong cách chững chạc hơn hay dùng Vacosi trong môi trường công sở. Về thiết kế: Thiết kế của son dưỡng Vacosi Color Lip balm trông như bộ son luxury nhà Dior hay Secret Key. Tổng thể khoác lên chiếc áo màu hồng nhạt, nổi bật lên viên đá đính ở đuôi son càng tạo lên nét lung linh của chiếc son dưỡng môi Vacosi. Lớp vỏ ngoài là một chiếc áo nhựa màu hồng công chúa, nhưng bên trong là thân kim loại chắc chắn, sáng lấp lánh.

Về mùi hương: Với Vacosi Color Lipbalm có mùi hương nhưng lại nhẹ nhàng và ngọt ngào, mình cảm nhận đây không phải kiểu nồng mùi hóa học đâu, đánh lên môi là mùi hương bay đi mất. Mỗi lần sử dụng son dưỡng môi Vacosi mình có cảm giác thư thoa một lớp kẹo ngọt lên môi vậy. Công dụng:

- Chứa công thức giàu chất dưỡng ẩm, bảo vệ môi trong suốt nhiều giờ.

- Độ dưỡng ẩm cao của son mang đến cho bạn gái làn môi căng mọng.

- Bạn có thể dùng Lip Blam làm lớp lót trước khi tô son màu hoặc đánh đè lên lớp son màu để bảo vệ môi và tạo độ mọng cho môi.

- Mùi hương ngọt ngào của Color Lip Balm đến từ mùi trái đào quyện với hương vani, thư giãn.

Hướng dẫn sử dụng:

- Thoa nhẹ một lớp ở lòng môi sau đó ngậm 2 bờ môi để son tự lan đều khắp bề mặt.

- Bạn có thể dùng Son Dưỡng Môi Color Lip Balm VACOSI làm lớp lót trước khi tô son màu hoặc đánh đè lên lớp son màu để bảo vệ môi và tạo độ mọng cho môi.', N'sonduongVacosi.png', N'TDM1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDM06', N'Son Dưỡng LAMER THE LIP VOLUMIZER', N'Thỏi', 1650000, N'Canada', N'Thông tin sản phẩm:

Son dưỡng là vật dụng cực kỳ cần thiết mà con gái ai cũng nên có. Son dưỡng không chỉ đơn thuần là dưỡng ẩm, mà còn giúp bảo vệ môi trước các tác nhân gây hại: môi trường, hóa chất,... khiến môi bị thâm, lão hóa, nhăn nheo.

- Nếu như môi của bạn đang:

- Gặp vấn đề khô nứt nẻ, nếp nhăn, xỉn màu,

- Đã từng thử nhiều loại son dưỡng mà chưa có hiệu quả ưng ý

Thì hãy thử đầu tư một em “La Mer The Lip Volumizer” của Pháp. Hiệu quả mà La Mer mang lại sẽ khiến bạn phải bất ngờ.

Nhắc đến La Mer là nhắc đến thương hiệu mỹ phẩm high-end bậc nhất hiện nay và sản phẩm Son Dưỡng La Mer The Lip Volumizer cũng không ngoại lệ cũng có giá cao ngất ngưởng, nhưng chất lượng thì "xứng đáng đến từng xu một".

Với Son La Mer Lip Volumizer, chỉ với 1 đường lướt nhẹ giúp môi bạn căng mọng, quyến rũ ngay tức thì. Son Dưỡng La Mer The Lip Volumizer được sử dụng công nghệ điều trị Miracle Broth™, công thức được truyền cảm hứng từ serum đặc trị & ngăn ngừa tuyệt đối các tác nhân gây hại, ngay lập tức làm đầy, căng mọng môi, làm mềm dịu và tạo đường nét cho đôi môi của bạn. Đồng thời, môi được bảo vệ & nuôi dưỡng nhờ các hoạt chất chống Oxy hoá và Hydrat hoá giúp loại trừ những dấu hiệu lão hoá: khô nhăn, nếp gấp, thâm xỉn, thiếu sức sống… Nói chung là ngoài những tác dụng thường thấy ở 1 thỏi son dưỡng chất lượng: giảm thâm, làm mềm mịn, căng đầy, cải thiện sắc tố môi… thì LAMER The Lip Volumizer còn giúp bảo vệ môi khỏi những tác nhân gây hại đến từ môi trường, chống oxi hoá & hydrat hoá (nôm na là ngừa lão hoá & chữa trị những nhược điểm đang có, sẽ có, chuẩn bị có…)…

Sự óng ánh rực rỡ cùng cảm giác không thể cưỡng lại. Ngấm đầy tinh chất Miracle Broth, tinh chất đặc trị môi này ngay lập tức mang đến làn môi đầy căng mọng, bảo vệ và làm mềm mịn các nếp nhăn môi một cách rõ rệt. Đôi môi sẽ được bảo vệ với các chất chống oxi hoá, được nuôi dưỡng với sự dưỡng ẩm với sức mạnh chữa lành, chỉ với một lần lướt qua đôi môi với lớp son bóng rực rỡ này và bạn sẽ nhận ra tại sao không gì sánh bằng được việc LaMer sẽ làm.', N'sonduongLamer.png', N'TDM1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDM07', N'Son Lì Dạng Kem BOURJOIS ROUGE EDITION VELVET', N'Thỏi', 260000, N'Pháp', N'Bourjois Rouge Edition Velvet là dòng son được các blogger nổi tiếng trên thế giới hết lời ca ngợi như một loại son dạng lỏng đỉnh của đỉnh – son kem tốt nhất – "The Best Liquid Lipstick".

Chất son lì, kết cấu nhẹ nhàng và mướt vô cùng, giúp môi mềm mịn, matte, hoàn toàn không khô môi. Độ bám màu thuộc dạng tốt, nếu đánh xong đi ăn sáng thì màu chỉ trôi đi tầm 10% là cùng, ít dính ra cốc chén vì sau khi đánh tầm 5 phút son khô hẳn tiệp vào môi, cảm nhận thấy son ít dính cốc chén. Bảng màu sống động, long lanh thoải mái cho lựa chọn của mọi màu da, tâm trạng và mọi hoàn cảnh. Mặc dù có hơi hướng của son sheer nhưng màu sắc của Son Bourjois Velvet rất chân thực, sống động, thực sự rạng rỡ trên đôi môi. Son Velvet có tất cả 15 màu son, đa dạng tinh tế thoải mái cho bạn lựa chọn với màu da, hoàn cảnh và cá tính riêng biệt. Thành phần:

Dimethicone/Vinyl DimethiconeCrosspolymer, Butyl Acrylate/HydroxypropylDimethicone Acrylate Copolymer, Trimethylsiloxysilicate, Silica, Parfum (Fragrance), Limolene. [+/- (May Contain) : CI 45410 (Red 28 Lake), CI 15850 (Red 7 Lake), Mica, CI 73360 (Red 30 Lake), CI 19140 (Yellow 5 Lake), CI 12085 (Red 36), CI 15850 (Red 6), CI 77891 (Titanium Dioxide), CI 15985 (Yellow 6 Lake), CI 17200 (Red 33 Lake), CI 42090 (Blue 1 Lake), CI 45380 (Red 22 Lake), CI 77491, CI 77492, CI 77499 (Iron Oxides), CI 75470 (Carmine), CI 77163 (Bismuth Oxychloride), CI 77742 (Manganese Violet)]. 13BML001-1

Hướng dẫn sử dụng:

Dùng cọ lấy son thoa trực tiếp lên môi, bắt đầu từ giữa môi tô ra hai bên. Tô trong đường viền môi hoặc theo ý thích để đạt hiệu quả trang điểm mong muốn.', N'sonmoiBourjois.png', N'TDM1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDM08', N'Son Dưỡng LADYKIN ONE TOUCH BLING GLOW LIPSTICK', N'Thỏi', 290000, N'Hàn Quốc', N'Ladykin One Touch Bling Glow Lipstick – son dưỡng có màu nhẹ, thuộc dòng son đến từ Hàn Quốc, có thành phần chiết xuất từ thiên nhiên giàu dưỡng chất, giúp môi mềm mịn và căng mướt, dưỡng hồng tự nhiên, hỗ trợ son trang điểm lên màu chuẩn đẹp và lâu trôi hơn , ngăn ngừa và cải thiện làn môi nứt nẻ, thâm sạm, bong tróc vảy,…

Thiết kế son dưỡng cực kỳ nữ tính, hình chiếc nơ xanh đính hột lấp lánh kiêu sa.

Chất son mềm mượt và không gây khô môi, có độ bóng nhẹ. Có thể chồng nhiều lớp son mà không bị nặng môi. Công dụng:
- Ngăn ngừa và cải thiện tình trạng môi khô, nứt nẻ, thâm sạm, bong tróc vảy.
- Dưỡng môi mềm mịn, hồng hào tự nhiên.
- Có khả năng biến đổi màu linh hoạt tùy thuộc vào độ pH của môi.
- Không bí rít, gây nhờn, cũng không quá dày như son màu.
- Mùi thơm nhẹ nhàng, dễ chịu.
- Có thể: giữ ẩm vùng da ở cánh mũi, giữ nếp cho tóc, làm mềm lông mày, lông mi, dưỡng da vùng đầu móng tay,….
- Dùng trước son màu (son trang điểm): ngăn ngừa khô môi, bảo vệ môi trước các chất hóa học độc hại, chì,… đặc biệt còn giúp cho son lâu trôi hơn và giữ màu đẹp.', N'sonduongLadykin.png', N'TDM1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDM09', N'Son KANEBO INTENSE CRAYON ROUGE', N'Thỏi', 710000, N'Nhật Bản', N'Son lì Kanebo Intense Crayon Rouge 1.8g là một trong những dòng son thỏi lì nổi tiếng đến từ thương hiệu Kanebo. Với chất son cực mịn mướt nhờ dưỡng chất chứa trong son. Giúp son lên màu đúng chuẩn mà không hề gây khô hay nứt nẻ môi. Bảng màu gồm 6 tông từ nhẹ nhàng tinh tế đến cá tính mạnh mẽ. Son lì Kanebo Intense Crayon Rouge – Đôi môi rạng rỡ, cuốn hút

Điểm nổi bật của son lì Kanebo Intense Crayon Rouge:

Thiết kế sang trọng, đẹp mắt

Son lì Kanebo Intense Crayon Rouge được thiết kế tròn dài với phần vỏ bên ngoài màu đen sang trọng. Chỉ với cái nhìn đầu tiên thôi là đã cảm nhận ngay sự tinh tế, ngọt ngào và không kém phần sang chảnh.

Son lì nhưng không khô môi

Nhiều người thường nghĩ son lì có độ bám cao nên dễ gây ra tình trạng khô môi. Tuy nhiên, với son lì Kanebo Intense Crayon Rouge – chất son nhẹ tênh hoàn toàn không có cảm giác nặng môi. Hơn nữa, các dưỡng chất trong thỏi son còn bổ sung độ ẩm, cho đôi môi thêm căng mọng, quyến rũ và rạng rỡ suốt ngày dài.

Đa dạng tông màu để lựa chọn

Bảng màu của son lì Kanebo Intense Crayon Rouge với 6 tông màu từ nhẹ nhàng đến rực rỡ. Mặc dù số lượng màu sắc khiêm tốn hơn những dòng son khác, nhưng vẫn đủ các lựa chọn cho nhiều phong cách trang điểm đa dạng, đi từ ngọt ngào dịu nhẹ đến sắc trầm quyến rũ. Rất dễ dàng để phái đẹp lựa chọn được màu ưng ý.

Chất son nhẹ, lướt mịn trên môi

Son có tính chất nhẹ nhàng, thoa lên môi rất mịn, hoàn toàn không gây ra cảm giác nặng nề, kể cả khi thoa nhiều lớp chồng lên nhau. Điều này giúp xóa tan nỗi lo về việc bong tróc môi khi dùng son lì của nhiều phụ nữ.

Công dụng và bảng màu của son lì Kanebo Intense Crayon Rouge:

- Mang đến một đôi môi với màu sắc rạng ngời, phù hợp với phong cách trang điểm. Lên màu đúng chuẩn từ lần thoa đầu tiên, bền màu cực kỳ với độ bám khá lâu, cho gương mặt tươi tắn suốt nhiều giờ.', N'sonKaneboIntense.png', N'TDM1')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDMat01', N'Mascara Rene Mascara Fiber 4D Waterproof Very Black ', N'Cây', 575000, N'Mỹ', N'MASCARA BIẾN HÌNH 4D – LÀN MI SIÊU DÀI 24H
Rene Mascara Fiber 4D là mascara giúp tạo nên làn mi siêu dài, lập tức làm dài, dày và cong mi tự nhiên mà không cần phải gắn lông mi giả, hiệu quả kéo dài suốt 24 giờ. Được thiết kế bởi công nghệ 4D với các sợi Fiber siêu mịn và tinh chất dưỡng mi từ trà xanh, giúp mang đến đôi mi hoàn hảo.
Ưu điểm vượt trội của Rene Mascara Fiber 4D
- 	Duy trì 24 giờ
- 	Đẹp ngay sau khi chuốt
- 	Siêu nhẹ
- 	Lông mi dày hơn, dài hơn và cong ngay lập tức
- 	Khả nặng chịu nước cao
- 	Không gây dị ứng
- 	Không có thành phần Paraben
- 	Được các Bác sĩ da liễu tin dùng.
Thành phần Gel (8g): Acrylates copolymer, Aqua, Cera alba, Propylene glycol, Dimethicone, Iron oxide black, Copernicia cerifera cera, Stearic acid, Magnesium aluminum silicate, Polysorbate 80, Phenoxyethanol.
Thành phần Sợi Fiber (3g): Nylon 6, chiết xuất sợi lá Trà Xanh Camellia Sinensis Leaf Extract (Green Tea Fibers).
Hướng dẫn sử dụng:
- 	Trước khi chuốt mascara, đảm bảo rằng mi mắt đã được làm sạch và không còn lớp mascara cũ. Có thể bấm cong mi trước khi chuốt nếu muốn.
- 	Tiếp theo, chuốt gel Rene Mascara Fiber 4D từ gốc chân mi đến ngọn mi.
- 	Chuốt nhẹ một lớp sợi Rene Mascara Fiber 4D tự nhiên ở lớp trên và dưới, từ gốc đến ngọn lông mi (thực hiện lần lượt mỗi bên mắt), đảm bảo mỗi bên được phủ một lớp sợi vừa phải cho chiều dài và độ dày vừa đủ.
- 	Sau khi chuốt lớp sợi fiber xong, tiếp tục chuốt lại lớp gel Rene Mascara Fiber 4D các lớp sợi bám chắc hơn.
- 	Có thể lặp lại các bước nêu trên cho đến khi đạt được kết quả mong muốn.
Chú ý: Để xa tầm tay của trẻ em. Chỉ sử dụng ngoài mi mắt. Tránh tiếp xúc trực tiếp với mắt. Nếu mascar tiếp xúc vô mắt nên rửa mắt bằng nước sạch ngay lập tức. Nếu kích thích xảy ra hay vẫn còn đỏ, ngừng sử dụng và tham khảo ý kiến bác sĩ.
Bảo quản: Để bảo quản Rene Mascara fiber 4D tốt, sản phẩm nên sử dụng theo từng cá nhân.  Không sử dụng khi đang di chuyển. Không pha loãng mascara với nước, hoặc bất kỳ dung dịch nào khác. Đậy nắp thật chặt sau khi sử dụng. Ngưng sử dụng khi mascara có mùi lạ hoặc biến chất. Không sử dụng khi mắt đang bị tổn thương.', N'mascaraRene.png', N'TDMat')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDMat02', N'Chì kẻ mày F.O.X Triangular Eyebrow', N'Cây', 300000, N'Đài Loan', N'Thông tin sản phẩm:
Chì Kẻ Mày Đầu Tam Giác F.O.X (Kèm ngòi) Triangular Eyebrow With Mascara Brush với thiết kế đầu tam giác giúp bạn dễ dàng định hình và tạo đường nét cho lông mày dù là chân mày ngang, đuôi nhọn hay dài mảnh. Ngoài ra, bạn có thể điều chỉnh độ đậm nhạt cho lông mày tự nhiên nhất có thể. Sản phẩm dễ dàng sử dụng ngay cả với những bạn mới bắt đầu tập trang điểm.
', N'chikemayFOX.png', N'TDMat')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDMat03', N'Chuốt mi Kanebo Kate Lash Former', N'Cây', 315000, N'Nhật Bản', N'Lông mi quyết định độ sáng, độ quyến rũ của cửa sổ tâm hồn. Đa số phụ nữ đều có lông mi có xu hướng mọc xuống dưới. Khi lông mi cong lên, dày hơn thì nhiều ánh sáng được phản chiếu trên mắt khiến mắt trở lên long lanh hơn.
Về thiết kế:
- Thiết kế lông chải đặc biệt dễ dàng chải từ gốc đến ngọn giúp tách rời sợi mi, kéo dài & dày mi hơn.
- Bàn chải mascara tạo độ phồng lượng chất lỏng của chuốt mi để đạt được hàng mi cong đẹp, không bị vón cục.
- Nuôi dưỡng mi nhờ tinh chất dầu thiên nhiên dưỡng ẩm, giữ mi chắc khỏe.
- Màu bền, không lem khi gặp nước, nước mắt hay mồ hôi.
Công dụng:
- Giúp làm dài, dày và cong mi hiệu quả
- Công thức mực không trôi, không lem khi tiếp xúc với nước, bã nhờn.
- Duy trì đôi mi cong dày/ cong dài cả ngày.
Thành phần: Isododecane,Trimethylsiloxysilicate,Microcrystalline Wax,Water,Dextrin Palmitate Paraffin,Polysorbate 60,Synthetic Wax,Polyglyceryl-2 Diisostearate,Nylon-6,Phenoxyethanol,Nylon-66,Malic Acid,Sodium Naphthalenesulfonate,Triethanolamine.
Hướng dẫn sử dụng: Chuốt mi trên và mi dưới theo đường zic zac từ chân mi đến đầu sợi mi để đạt hiệu quả cao.', N'chuotmiKATE.png', N'TDMat')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDMat04', N'Chuốt mi Dior Diorshow Mascara Professional Volume Sur-Mesure 090 Pro Black', N'Cây', 870000, N'Pháp', N'Mascara Professional Volume Sur-Mesure 090 Pro Black là một trong những sản phẩm nổi bật của dòng mỹ phẩm Dior chất lượng cao. Mascara giúp các nàng có được hàng mi dài mà không quá dày, tạo cảm giác khó chịu, phô trương, tạo nên đôi mắt cuốn hút, đặc biệt hấp dẫn đối với nam giới.
Mascara Dior Diorshow 090 Pro Black là một loại mascara biểu tượng sang trọng, quý phái đậm chất Pháp. Với công thức làm giàu các sợi quang học sẽ góp phần làm dày đôi hàng mi bạn và tạo hiệu ứng như dùng lông mi giả.
Đầu cọ lớn XXL và công thức cấu tạo dạng kem Diorshow 090 Pro Black cho phép bạn chải mi để tạo nên độ dày phù hợp mà không bị vón cục hay bong tróc, không bị lem nhòe trong suốt 24h giúp mi được tự nhiên và đủ quyến rũ.
Hướng dẫn sử dụng:
- Chuốt mi từ góc ngoài của mắt tiến dần vào phía trong và tán rộng theo đường zic zac.
- Lặp lại nếu cần để có hàng mi ấn tượng.
Đôi nét về thương hiệu Dior
Thương hiệu Christian Dior có tên đầy đủ là Christian Dior S.A, được sáng lập bởi nhà thiết kế Christian Dior vào năm 1946. Christian Dior là nhà mốt xa xỉ tại Pháp, lừng danh trên khắp thế giới với phong cách Haute Couture đậm tính kiến trúc và sự quyến rũ.
Nhà mốt Christian Dior đến nay vẫn là biểu tượng bất biến của giới thời trang thượng lưu, được yêu thích bởi những nhân vật, ngôi sao nổi tiếng quốc tế, và là “niềm hạnh phúc” xa xỉ của tất cả phụ nữ trên khắp thế giới. Các dòng sản phẩm dưới tên Dior, từ trang phục đến phụ kiện túi xách, giày, nữ trang, nước hoa…đều mang đậm tinh thần quyến rũ đột phá và sâu sắc của nhà thiết kế bậc thầy Christian Dior.', N'chuotmiDior.png', N'TDMat')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDMat05', N'Kẻ mắt Tony Moly Black', N'Lọ', 130000, N'Hàn Quốc', N'Gel kẻ mắt Tony Moly có kết cấu dạng kem với kèm cây cọ vẽ chuyên dụng phía trên phần nắp của sản phẩm, thuận lợi hơn khi kẻ viền mắt. Backstage gel eyeliner gel mềm kẻ cực kì dễ mà không gây khó chịu cho mắt và mau khô, tạo ra một eyeline tự nhiên, lôi cuốn và ấn tượng.
Đây là một trong những sản phẩm best-seller của thương hiệu Tony Moly rất được yêu thích tại Hàn Quốc. Thương hiệu Tony Moly từng tiên phong cho trào lưu son xí muội, son đánh lòng môi đình đám đến tận bây giờ. Gel kẻ mặt Tony Moly Backstage Gel Eyeliner với nhưng công dụng vượt trội, giúp mắt bạn rạng ngời, tự tin hơn với lớp trang điểm hoàn hảo.
Ưu điểm lớn nhất của Backstage gel eyeliner là chống thấm nước giúp viền kẻ mắt được giữ nguyên cho cả một ngày dài. Bạn có thể dùng nước tẩy trang cho mắt và môi vào cuối ngày. Đây sẽ là công cụ trang điểm hữu ích mà bạn tìm. Đặc biệt gel kẻ mắt cũng rất dễ dàng tẩy sạch khi bạn dùng nước tẩy trang.
Về thiết kế: Thiết kế vỏ ngoài:
Gel kẻ mắt Tony Moly có thiết kế khá ngộ nghĩnh, dễ thương. Thiết kế hợp lý với đầu chổi nằm gọn trong thân lọ, dễ lấy, dễ xài, tiện lợi và rất gọn nhẹ. Đầu chổi chải không quá cứng, rũ, độ mềm dày vừa phải, rất có lợi cho những cô nàng mới tập tành kẻ mắt mèo quyến rũ.
Kết cấu bên trong:
Không bóng như kẻ mắt nước, không dày như đầu chì kẻ mắt thông thường, chất gel của kẻ mắt Tony Moly phù hợp cho bạn trong mọi hoàn cảnh như trang điểm hằng ngày, đi chơi, đi tiệc.
Nét đậm vừa đủ nên bạn chỉ cần kẻ một đường, không cần chuốt lại sẽ tránh được tình trạng lệch, xéo đường kẻ trước.
Sản phẩm có khá nhiều màu để bạn lựa chọn, thông dụng nhất là đen và nâu đen
Độ bám của gel cực lâu, có thể lên đến 12 tiếng.
Hướng dẫn sử dụng:
- Dùng eyeliner chấm từ từ ở giữa chân mi mắt.
- Từ từ nối những chấm đó lại thành đường theo hướng từ hốc mắt ra ngoài.
- Điều chỉnh độ mỏng dày tùy vào sở thích.
Lưu ý và bảo quản:
- Bảo quản nơi khô ráo thoáng mát, tránh ánh nắng trực tiếp.
- Tránh xa tầm tay trẻ em.
- Đậy nắp sau khi sử dụng.
- Khi sử dụng mặt nạ nếu bạn có các chịu chứng khích ứng da như nổi nhiều mụn đỏ hay ngứa da thì bạn nên ngưng sử dụng sản phẩm ngay nhé! vì có thể làn da của bạn không phù hợp với các chiết xuất có trong sản phẩm.', N'kematTonymoly.png', N'TDMat')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDMat06', N'Kẻ mắt nước Passion Cat Ez-Cone 2X WaterProof Liner', N'Cây', 270000, N'Hàn Quốc', N'Trang điểm không chỉ đánh phấn cho lớp nền xinh đẹp là đủ mà còn cả đôi mắt. Việc kẻ mắt dễ dàng nhưng đôi khi lại khiến cho nhiều nàng tốn rất nhiều thời gian. Đặc biệt là những cô nàng mới tập tành kẻ mắt. Một bút kẻ mắt với kiểu dáng hoàn toàn mới lần đầu tiên được xuất hiện tại Việt Nam giúp các nàng kẻ mắt dễ dàng hơn. Đó chính là Kẻ mắt nước Passion Cat EZ-Cone 2X Waterproof Liner. So với loại bút kẻ truyền thống với nét kẻ mảnh, nhẹ và đàn hồi có phần hơi khó khăn trong việc tạo viền mắt thì kẻ mắt nước Passion Cat EZ-Cone 2X Waterproof Liner  mang đến cho bạn sự trải nghiệm tuyệt vời về độ bám và thấm nhanh hoàn hảo, đầu bút chắc chắn, nét kẻ siêu mướt giúp hoàn thành vành mắt rõ ràng và hoàn hảo chỉ với một lần kẻ.

Với kiểu dáng mới và công nghệ mới này, Waterproof Eyeliner mang đến cho bạn một sự trải nghiệm đổi mới đôi mắt với sự hoàn hảo trên từng milimet!

Ưu điểm sản phẩm:

- Dễ dàng để sử dụng cho người mới bắt đầu.

- Không có đường đứt khúc, đường kẻ dài, sạch, không nhòe, không lem và khô ráo ngay tức khắc.

- Không thấm nước & chống thấm nước, có thể bám lâu trong suốt ngày dài.

Với kiểu dáng mới và công nghệ mới này, bút kẻ mắt nước Passioncat mang đến cho bạn một sự trải nghiệm đổi mới đôi mắt với sự hoàn hảo trên từng milimet!​

Đầu bút kẻ với hình dạng hoa tulip độc đáo và là sự kết hợp giữa nét tinh tế cùng sự mạnh mẽ, cho phép bạn tạo ra những hình ảnh cá tính nhưng không kém phần duyên dáng gợi cảm của riêng mình.

Hiện Kẻ mắt nước Passion Cat EZ-Cone 2X Waterproof Liner có 2 màu: nâu và đen

Công dụng:

- Vẽ mí mắt thật nhanh và dễ dàng.

- Đường vẽ thật sạch và sắc nét.

Hướng dẫn sử dụng & bảo quản:

- Trước khi sử dụng, lắc 2 ~ 3 lần để đường vẽ mịn hơn.

- Đậy nắp kĩ sau khi sử dụng.', N'kematnuocPassionCat.jpg', N'TDMat')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDMat07', N'Phấn Mắt 4 Màu F.O.X EYESHADOW PALETTE', N'Hộp', 380000, N'Đài Loan', N'Eyeshadow Palette là sản phẩm phấn mắt từ hãng mỹ phẩm F.O.X của Đài Loan,  giúp trang điểm đôi mắt trông tự nhiên và nhìn đầy cuốn hút. Mỗi hộp có 4  màu khác nhau các màu sắc đều là những màu dễ dùng, không kén da và có thể dùng hàng ngày. Eyeshadow Palette có chất phấn rất mịn, đặc biệt bám da rõ rệt nên khi bạn tán dầy mỏng sẽ cho hiệu quả khác nhau. Các thành phần của phấn mắt lành tính, thích hợp dùng cho mọi loại da.

Thiết kế của sản phẩm đáng yêu mà nhỏ gọn, dễ dàng mang theo người, để trong túi xách hay balo đều vừa xinh.

Eyeshadow Palette có 4 hộp tone màu khác nhau để các nàng tha hồ lựa chọn theo sở thích và cá tính riêng. Hướng dẫn sử dụng:

- Sau khi đánh kem lót và kem nền thì dùng cây đánh mắt đi kèm trong hộp đánh phấn lên bầu mắt.

- Kết hợp từng màu theo ý thích của bạn.', N'phanmat4mauFOX.png', N'TDMat')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDMat08', N'Mascara Thông Minh F.O.X MULTI FUNCTION MASCARA MA01', N'Cây', 300000, N'Đài Loan', N'Mascara Thông Minh 2 Công Dụng F.O.X có đầu cọ tiện lợi với công dụng làm dày và dài mi, giữ cho mi không bị lem, giữ cho đôi mắt bạn trông thật hoàn hảo. Công thức đặc biệt giúp đôi mắt bạn luôn thật sắc nét và tự nhiên trong thời gian dài. 

Sản phẩm chứa các thành phần tự nhiên, hoàn toàn không gây hại cho mắt. Thành phần:

Thành phần trong sản phẩm giúp bạn nuôi dưỡng mi cong, dày, dài hơn và bảo vệ cho mi khỏi các tác động ngoại cảnh.

Công dụng

Với thiết kế 2 trong 1, mascara đa chức năng được trang bị hai đầu cọ để làm tốt cả hai công dụng:

Đầu cọ ngắn: tạo hiệu quả lông mi nhiều và dày cuốn hút.
Đầu cọ dài: giúp lông mi dài và cong tự nhiên rõ ràg tự nhiên,nhẹ nhàng, thuần khiết. Cọ mascara độc đáo với nhiều lược nhỏ giúp chải đều cả sợi mi nhỏ nhất, cho mi dày đều mà không gây vón cục.
Có khả năng chống thấm, không lem trong nước nhưng có thể dể dàng rửa sạch với nước.
Nhanh khô và lâu phai trong thời gian dài, không cần trang điểm lại nhiều lần.
Sự kết hợp linh động rất nhiều tính năng trong cùng một sản phẩm. Đầu chuốt có thể biến đổi linh hoạt để phù hợp với từng phong cách từng sở thích chỉ trong một sản phẩm.
Với khả năng chống thấm nước mạnh mẽ đánh bật tất cả những dòng Mascara ngoài thị trường
Hướng dẫn sử dụng

Sau khi trang điểm mắt và bấm mi, sử dụng một trong hai đầu cọ (hoặc cả hai) để tạo hiệu ứng mi đẹp tùy theo ý muốn. Bảo quản

Nơi khô ráo, thoáng mát, nhiệt độ không quá 35 độ C
Tránh ánh nắng trực tiếp
Không nên đặt ở nơi ẩm ướt cao nhằm tránh sản phẩm biến chất
Đậy kín nắp sau khi sử dụng
Thông tin thương hiệu

F.O.X là thương hiệu mỹ phẩm cao cấp đến từ Đài Loan, là lựa chọn đầu tiên của các chuyên gia trang điểm trên thế giới và luôn đồng hành trong việc chăm sóc vẻ đẹp cho mọi phụ nữ. ', N'mascaraFOX.png', N'TDMat')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDMat09', N'Kẻ Viền Mắt Dạng GEL F.O.X LONG-WEAR GEL EYELINER EG01', N'Hộp', 300000, N'Đài Loan', N'Kẻ Viền Mắt Dạng Gel Lâu Trôi F.O.X sẽ mang đến cho đôi mắt bạn vẻ đẹp sắc nét và long lanh. Với thiết kế dạng gel, bạn sẽ dễ dàng tạo được viền mắt sắc sảo với độ chính xác cao, dễ sử dụng.

Sản phẩm kèm theo cọ vẽ chuyên dụng phía trên phần nắp, giúp bạn dễ dàng tạo những đường viền mắt theo ý thích. 

 Công dụng

Gel kẻ mắt không thấm nước, không lem dù bạn hoạt động suốt một ngày dài với độ bám có thể lên đến 12 tiếng.

Kẻ Viền Mắt Dạng Gel Lâu Trôi F.O.X đi kèm với cọ kẻ mắt chuyên nghiệp cho bạn thoải mái sáng tạo phong cách, từ mảnh sắc sảo đến dày ấn tượng.

Với kết cấu dạng gel, bạn có thể sử dụng dễ dàng như chì kẻ viền và không sợ lem khi chệch tay. Đi kèm với cọ mắt chuyên nghiệp cho đường kẻ mắt chính xác hơn với độ sắc nét cao.  Hướng dẫn sử dụng

Xác định phong cách trang điểm để định hình đường kẻ mắt, sau đó sử dụng cọ kẻ viền mắt chuyên dụng của sản phẩm để kẻ đường eyeliner hoàn chỉnh. Chú ý nên điều chỉnh lượng gel phù hợp để đường kẻ mắt không quá đậm, cũng không quá nhạt tránh làm mất tự nhiên cho đôi mắt của bạn.

**Lưu ý: Nên giãn cách thời gian sử dụng giữa các bước với nhau để đảm bảo khả năng bám vào da hoàn toàn của sản phẩm.

 Bảo quản

Nơi khô ráo, thoáng mát
Tránh ánh nắng trực tiếp
Không nên đặt ở nơi ẩm ướt cao nhằm tránh sản phẩm biến chất
Đậy kín nắp sau khi sử dụng
Thông tin thương hiệu

F.O.X là thương hiệu mỹ phẩm cao cấp đến từ Đài Loan, là lựa chọn đầu tiên của các chuyên gia trang điểm trên thế giới và luôn đồng hành trong việc chăm sóc vẻ đẹp cho mọi phụ nữ.', N'kevienmatdanggelFOX.png', N'TDMat')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDN01', N'Phấn má hồng F.O.X Luxuriant Impression Blush', N'Hộp', 320000, N'Đài Loan', N'Phấn Má Hồng 2 Màu Sang Trọng F.O.X Luxuriant Impression Blush được hãng chọn những tông màu tươi tắn để mang đến cho bạn một đôi gò má luôn ửng hồng và rạng rỡ. Sản phẩm thích hợp để trang điểm cho mọi dịp, từ đi chơi, đi làm cho đến đi tiệc.
Hộp phấn được thiết kế nhỏ gọn, tiện dụng, dễ dàng cất vào túi xách khi mang theo.  
Thành phần:
** Xem trên bao bì sản phẩm
Công dụng
- Giúp đôi má thêm hồng hào khi trang điểm, tạo điểm nhấn cho gương mặt, giúp cho gương mặt luôn tươi tắn và tự nhiên hơn.
- Chất phấn cực mịn, đều màu và đặc biệt không gây bí da.
- Thiết kế 2 màu cho bạn dễ dàng lựa chọn màu sắc thích hợp
- Có thể sử dụng thay cho phấn mắt khi cần.
- Phấn lên màu rất tự nhiên và bám màu cao trong thời gian dài.
- Thích hợp cho nhiều loại da, kể cả da nhạy cảm.
Hướng dẫn sử dụng
- Sau bước đánh phấn phủ hoặc phấn nền, lấy một lượng vừa đủ Fox Luxuriant Impression Blush đánh lên má tùy theo phong cách trang điểm bạn thích.
Bảo quản
- Tránh nhiệt độ cao và rơi vỡ.
- Tránh xa tầm tay trẻ em.
Thông tin thương hiệu
F.O.X là thương hiệu mỹ phẩm cao cấp đến từ Đài Loan, là lựa chọn đầu tiên của các chuyên gia trang điểm trên thế giới và luôn đồng hành trong việc chăm sóc vẻ đẹp cho mọi phụ nữ.', N'phanmaFOX.png', N'TDN')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDN02', N'Phấn nước siêu mịn F.O.X Shinning Cushion Foudation SPF50 BF001', N'Hộp', 520000, N'Đài Loan', N'Phấn Nước Siêu Mịn F.O.X - SPF50*** với công thức đặc biệt 5 trong 1: Trắng da, chống nắng hiệu quả, giữ ẩm cho da, tạo lớp nền hoàn hảo cho lớp trang điểm, kiềm dầu, giúp bạn có được lớp trang điểm căng bóng, mỏsng mịn và trong suốt, tự nhiên.
Sản phẩm có tone màu da cơ bản, phù hợp với màu da da tự nhiên của phụ nữ Á Đông và chất phấn phù hợp với mọi loại da.  
Thành phần:
** Xem trên bao bì sản phẩm
 Công dụng
Tông màu tự nhiên, phù hợp nhiều phong cách trang điểm khác nhau.
Thiết kế tinh tế, kiểu dáng thời trang.
Tăng cường khả năng kiểm soát dầu nhờn trên da giúp điều chỉnh màu sắc làn da, che phủ những khuyết điểm trên phủ mặt hiệu quả, duy trì lớp trang điểm của bạn không bị đổ dầu, hiệu quả lên đến 12 tiếng đồng hồ.
Kết cấu dạng lỏng, che khuyết điểm tốt, kiểm soát dầu nhờn và không gây bí da.
Chống lão hóa da, chứa thành phần chống nắng vật lý an toàn cho da với chỉ số chống nắng SPF 50+ PA+++. - Sản phẩm có công thức dịu nhẹ, phù hợp với mọi loại da.
Đặc biệt, sản phẩm không gây ra hiện tượng lớp trang điểm dày và không đều lên khi dậm thêm mà còn tăng cường hiệu quả chống nắng và dưỡng ẩm cho da trong thời tiết nóng bức.
Hướng dẫn sử dụng
Sau khi dưỡng da và thoa kem chống nắng, dùng bông phấn ấn nhẹ lên lớp Cushion, dặm đều lên mặt đến khi cảm thấy lớp nền mỏng, mịn và đều màu, sau đó vỗ đều khắp mặt và cổ.
Dặm lại những vị trí nhạt màu để tạo ra một lớp nền hoàn hảo.
Bảo quản
- Bảo quản ở nhiệt độ thấp hơn 35°C (nơi thoáng mát), tránh tiếp xúc trực tiếp với ánh mặt trời.
- Tránh xa tầm tay trẻ em
Thông tin thương hiệu
F.O.X là thương hiệu mỹ phẩm cao cấp đến từ Đài Loan, là lựa chọn đầu tiên của các chuyên gia trang điểm trên thế giới và luôn đồng hành trong việc chăm sóc vẻ đẹp cho mọi phụ nữ.', N'phannuocFOX.png', N'TDN')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDN03', N'Kem nền trang điểm, kiềm dầu KATE THE BASE ZERO WHIPPED MATTE COVER BB', N'Chai', 400000, N'Nhật Bản', N'Kate The Base Zero Whipped Matte Cover BB – kem nền trang điểm dòng Zero, nâng cấp từ dòng BB Mineral phiên bản trước, chứa thành phần khoáng chất và giữ ẩm tự nhiên: dầu oliu, dầu jojoba, dầu hạnh nhân,… có độ che phủ hoàn hảo (da hay bị các đốm đỏ, thâm do mụn hoặc tàn nhang, nám…), giúp kiểm soát dầu nhờn, bảo vệ da trước các tác nhân gây hại từ môi trường và ánh mặt trời, cân bằng độ ẩm tự nhiên của da, tạo lớp trang điểm tươi sáng và tự nhiên, hiệu chỉnh màu da, bổ sung dưỡng chất giúp da trẻ hóa và đầy sức sống,…
Kết cấu mỏng nhẹ, mềm mượt, tạo cảm giác thoáng mát, độ bám tốt, không lo da bị đổ dầu, không bị xuống tông ngay cả khi không dùng thêm phấn phủ, càng không lo vón cục hay làm “nặng” mặt.
Thích hợp với mọi loại da, đặc biệt là da dễ kích ứng, da mụn, da có đốm đỏ, tàn nhang, nám,…
Màu sắc đa dạng, sang trọng, tự nhiên và bao phủ tốt:
- Medium Beige: phù hợp với làn da trung bình sáng, trung bình hay hơi ngăm.
- Light Beige: phù hợp với làn da sáng, hoặc trung bình sáng muốn da nâng tone.
Công dụng:
- Tạo lớp nền trang điểm hoàn hảo và tự nhiên nhất.
- Bổ sung dưỡng chất giúp nuôi dưỡng làn da căng mịn, đều màu và trẻ hóa.
- Độ bám tốt giúp lớp trang điểm bền đẹp suốt nhiều giờ liền.
- Độ che phủ hoàn hảo giúp che phủ hầu hết các khuyết điểm trên da (vết mụn, vết nám, tàn nhang, vết thâm, mẩn đỏ…).
- Kiểm soát dầu nhờn, cân bằng độ pH và độ ẩm tự nhiên của da, hỗ trợ thu nhỏ lỗ chân lông.
- Bảo vệ da trước tác hại của ánh mặt trời và môi trường xung quanh.
Thành phần:
Water, Methyl Trimethicone, Titanium Dioxide, Dimethicone, Cyclopentasiloxane, Dimethicone/Vinyl Dimethicone Crosspolymer, Talc, Phenyl Trimethicone, Ethylhexyl Methoxycinnamate, Diphenyl Dimethicone/Vinyl Diphenyl Dimethicone/Silsesquioxane Crosspolymer, Nylon-12, Butylene Glycol, Tribehenin, Sorbitan Isostearate, Dipropylene Glycol, PEG/PPG-19/19 Dimethicone, Maltitol, Sodium Chloride, Aluminum Hydroxide, Methylparaben, Hydrated Silica, Benzoic Acid, BHT, Tocopherol, Ethylparaben, Cl 77492, Cl 77491, Cl 77499, Cl 77947
Hướng dẫn sử dụng:
Bước 1: thực hiện các bước dưỡng da hàng ngày và dùng kem lót (nếu có).
Bước 2: lấy lượng Kate The Base Zero Whipped Matte Cover BB vừa đủ ra tay, chấm lên mặt rồi dùng đầu ngón tay hoặc bông trang điểm tán nhẹ nhàng giúp lớp kem đều và mỏng, tạo độ che phủ hoàn hảo.
Bước 3: thực hiện các lớp trang điểm tiếp theo (nếu có).
Lưu ý:
- Nếu thường xuyên ra ngoài và tiếp xúc nhiều với ánh nắng, trước khi sử dụng Kate The Base Zero Whipped Matte Cover BB hãy thoa thêm kem chống nắng hoặc kem lót để nâng cao khả năng chống nắng của làn da.
- Bảo quản sản phẩm nơi thoáng mát, tránh tiếp xúc trực tiếp với ánh nắng mặt trời.
- Để xa tầm tay trẻ em.', N'kemnenKATE.png', N'TDN')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDN04', N'Phấn Nước SULWHASOO PERFECTING CUSHION EX COUSSIN DE TEINT', N'Hộp', 950000, N'Hàn Quốc', N'Sulwhasoo Perfecting Cushion EX Coussin De Teint thuộc phiên bản phấn nước Sulwhasoo Perfecting Cushion EX Spring 2020, với họa tiết hoa đào và bươm bướm ngũ sắc, thêu tỉ mỉ trên nền vải Tweed, truyền thống, dịu dàng nhưng không kém phần sang trọng, mang thông điệp của mùa xuân đầy sức sống và hạnh phúc.

 Công thức độc quyền Slim Fit High Coverage được cấp bằng sáng chế của Sulwhasoo, thành phần chiết xuất giàu dưỡng chất (nấm Schizophyllum,…),… tạo độ sáng cho lớp nền mỏng mịn và bóng khỏe, tăng khả năng che khuyết điểm (lỗ chân lông, thâm mụn, nếp nhăn,…), làm đều màu da, bổ sung và củng cố hàng rào ẩm bảo vệ da, chăm sóc và cải thiện các dấu hiệu lão hóa da, kiểm soát dầu nhờn, làm dịu và dưỡng da sáng hồng, chống nắng và bảo vệ da trước các tác nhân có hại từ môi trường, chống oxy hóa, giảm nếp nhăn, giảm lượng bã nhờn dư thừa trên da giúp cho lớp nền không bị xuống tông suốt cả ngày dài.

Phù hợp với da dầu, da hỗn hợp thiên dầu, da thường, da khô, da hỗn hợp thiên khô. Điểm nổi bật:
- Bao phủ làn da với công thức độc quyền từ Sulwhasoo Slim Fit High Coverage, kết cấu mỏng nhẹ phân tán đều trên da giữ cho lớp nền mịn màng lâu trôi suốt ngày dài.
- Dưỡng ẩm đặc biệt chiết xuất từ nấm Schizophyllum giữ cho làn da ẩm mượt, nhẹ nhàng và vô cùng thoải mái với lớp trang điểm, cho một vẻ ngoài căng mượt rạng rỡ.
- Với hệ tông màu mới, Perfecting Cushion EX mang lại vẻ ngoài rạng rỡ tự nhiên hoàn hảo cho mọi tông màu da.
- Mang lại hiệu ứng trong suốt mỏng nhẹ, hạn chế tiết dầu, có dưỡng trắng và chống nắng tự nhiên cho da, không xuống tone sau nhiều giờ sử dụng.', N'phannuocSulwhasoo.png', N'TDN')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDN05', N'Kem Dưỡng Ẩm, Chống Lão Hóa OHUI MIRACLE MOISTURE CREAM SPECIAL EDITION', N'Hộp', 1600000, N'Hàn Quốc', N'Ohui Miracle Moisture Cream Special Edition – kem dưỡng ẩm chống lão hóa thế hệ mới với thành phần Chiffon Ceramide™ độc quyền của Ohui, kết hợp cùng thành phần chiết xuất từ hoa mẫu đơn, cúc dại, oải hương,… có tác dụng cấp ẩm tối ưu, chống lão hóa, củng cố hàng rào ẩm bảo vệ da, kiểm soát dầu nhờn, se khít lỗ chân lông, cải thiện vùng da xỉn màu, làm dịu kích ứng, ngăn ngừa hư tổn (sạm nám, tàn nhang, khô sần,…), tăng cường sức đề kháng và độ đàn hồi, kích thích tuần hoàn máu dưới da, thúc đẩy quá trình tái tạo tế bào mới, làm mờ nếp nhăn, bổ sung dưỡng chất giúp da căng mịn và trẻ trung,…

Kết cấu “kem tươi” mềm mượt, mát mịn, giàu dưỡng chất và độ ẩm, khả năng hấp thụ mạnh mẽ và không gây bóng nhờn. Hương thơm đặc trưng của hoa mẫu đơn, thoang thoảng mùi sâm đất Hàn Quốc.

Thích hợp với mọi loại da, kể cả da nhạy cảm, dễ kích ứng (mẩn ngứa,…). Công dụng:
- Cấp ẩm chuyên sâu, tái tạo hàng rào ẩm bảo vệ da, làm dịu kích ứng, ngăn ngừa tình trạng da thiếu nước dẫn đến xỉn màu, khô ráp, sần sùi, bong tróc, hay có dấu hiệu mốc khi trang điểm,…
- Kiểm soát dầu nhờn, se khít lỗ chân lông, kích thích tuần hoàn máu dưới da, thúc đẩy tái tạo tế bào mới.
- Chống oxy hóa và lão hóa da, tăng sinh collagen, làm mờ nếp nhăn và chảy xệ, làm đầy các rãnh nhăn, tăng cường độ đàn hồi, tăng sức đề kháng cho da.
- Bổ sung dưỡng chất, cải thiện làn da không đều màu, ngăn ngừa hư tổn (sạm nám, tàn nhang,…).
- Dưỡng trắng, hỗ trợ lớp trang điểm mềm mượt và tự nhiên. Hướng dẫn sử dụng:

Bước 1: làm sạch và cân bằng da với nước hoa hồng, tinh chất.

Bước 2: lấy một lượng kem dưỡng vừa đủ thoa đều lên mặt và cổ, thoa đều và vỗ nhẹ để cho dưỡng chất có thể thẩm thấu vào bên trong da một cách tốt nhất.

Thông tin thương hiệu:

Thương hiệu mỹ phẩm Ohui là một trong những thương hiệu mỹ phẩm hàng đầu tại Hàn Quốc với nhiều dòng sản phẩm về chăm sóc da, trang điểm, chống nắng, làm sạch và chăm sóc cơ thể. Thương Hiệu OHUI được thành lập bởi tập đoàn LG và trực thuộc sự quản lý của LG HOUSEHOLD & HEATH CARE. Với các sản phẩm chăm sóc, dưỡng da và trang điểm, OHUI đã có mặt tại nhiều quốc gia trên toàn thế giới.', N'kemduongamOHUI.png', N'TDN')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDN06', N'Kem Điều Chỉnh Sắc Tố Da F.O.X color correcting Primer', N'Cây', 580000, N'Đài Loan', N'Kem điều chỉnh sắc tố da F.O.X color correcting Primer là sản phẩm trang điểm nổi bật của thương hiệu F.O.X. Kem lót sử dụng ở bước đầu tiên trong lớp trang điểm, giúp nâng tông và che đi các khiểm khuyết li ti trên khuôn mặt. Điểm đặc biệt của dòng kem lót của F.O.X này không chỉ giúp bạn che đi khuyết điểm trên da, làm sáng da, mà nó còn giúp điều chỉnh cho màu da trên khuôn mặt được đều màu hơn, đồng thời điều chỉnh sắc tố da vô cùng hiệu quả. Với khả năng che phủ kỳ diệu, dòng kem lót F.O.X này còn có thể che đi các vết ửng đỏ trên khuôn mặt một cách nhanh chóng.

Ưu điểm sản phẩm:

- Công thức đặc biệt của Kem Lót Điều Chỉnh Sắc Tố Da F.O.X giúp làm đều màu da nhanh chóng và tạo cảm giác trang điểm 3D tự nhiên chỉ trong tích tắc.

- Thành phần dưỡng da tự nhiên giúp dưỡng ẩm và cho da luôn căng mướt. Đặc biệt an toàn và không gây kích ứng da, không gây bít lỗ chân lông, cho da luôn được "thở" dù bạn vẫn duy trì lớp trang điểm cả ngày.

- Kiểm soát bã nhờn và dầu cao, thích hợp với nhiều loại da, đặc biệt là da dầu.

- Che khuyết điểm tối ưu, nâng tông da hoàn hảo, cho làn da sáng mịn nhanh chóng đồng thời giữ lớp trang điểm hoàn hảo như lúc đầu. Hướng dẫn sử dụng:

- Sản phẩm là kem lót trang điểm, dùng sau giai đoạn bôi serum/kem dưỡng/kem chống nắng, hoặc trong giai đoạn cuối cùng của việc chăm sóc da cơ bản, dùng một lượng nhỏ thích hợp thoa đều trên khuôn mặt. Sau đó vỗ nhẹ từ từ cho đến khi sản phẩm được hấp thụ hoàn toàn.

- Tiếp tục trang điểm với kem nền, phấn nén, phấn phủ,...

- Bảo quản nơi khô ráo, thoáng mát.', N'kemdieuchinhsactodaFOX.png', N'TDN')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDN07', N'Kem Che Khuyết điểm Đa Năng F.O.X Refresh BB Cream SBF15', N'Chai', 580000, N'Đài Loan', N'Kem che khuyết điểm đa năng F.O.X Refresh BB Cream SBF15 sở hữu chất kem dạng lỏng mịn, có độ bám tốt nhưng không dầy cộp, không gây vết hằn trên da.

Kem Che Khuyết Điểm Đa Năng F.O.X - SPF 15 không những có độ bám tốt, giúp lớp trang điểm bền đẹp suốt nhiều giờ liền mà còn có độ che phủ hoàn hảo, che phủ hầu hết các khuyết điểm trên da (vết mụn, vết nám, tàn nhang, vết thâm, mẩn đỏ…) mang đến lớp trang điểm tự nhiên, tinh tế cho bạn trong thời gian dài. Ưu điểm:

Phù hợp cho cả làn da dầu hay da có mụn.
Độ che phủ hoàn hảo các khuyết điểm: vết mụn, vết nám, tàn nhang, vết thâm, mẫn đỏ,...
Phù hợp với sắc màu làn da của phụ nữ Châu Á. Thành phần chính: Octyl Methoxycinnamate 0.04, Water, Cyclopentasiloxane, Isononyl Isononanoate, Titanium Dioxide 0.08, Dimethicone, Butylene Glycol, Peg-10 Dimethicone, Polyglyceryl-2 Diisostearate, Morus Alba Root Extract, Glycerin, …

Công dụng:

Công thức 5 trong 1 (Kem nền, kem lót, dưỡng ẩm, chống nắng, che khuyết điểm), kết cấu kem mỏng, nhẹ, thích hợp với nhiều loại da.
Kem Che Khuyết Điểm Đa Năng F.O.X - SPF 15 có thiết kế dạng tuýp nhỏ gọn, có thể mang theo bất kì nơi đâu và bất cứ lúc nào.
Hướng dẫn sử dụng:

Sau các bước dưỡng da hàng ngày và sử dụng kem lót. Dùng tay chấm lên những vùng da có khuyết điểm cần che phủ. Tán nhẹ nhàng để hiệu quả che phủ được tối ưu.
Nếu bạn thường xuyên ra ngoài và tiếp xúc nhiều với ánh nắng, trước khi sử dụng hãy thoa thêm kem chống nắng hoặc kem lót để có thể nâng cao khả năng chống nắng của làn da', N'kemchekhuyetdiemFOX.png', N'TDN')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDN08', N'Kem Nền Dưỡng Ẩm Làm Sáng Da F.O.X STUNNING LIQUID FOUNDATION', N'Cây', 580000, N'Đài Loan', N'Kem nền dưỡng ẩm làm sáng da F.O.X stunning liquid foundation SPF30 có tác dụng làm sáng da, giúp da đều màu, tự nhiên. Với thành phần dưỡng da tự nhiên trong sản phẩm sẽ giúp nuôi dưỡng và giữ ẩm cho da bạn từ sâu bên trong.

Kem nền dưỡng ẩm làm sáng da F.O.X chứa thành phần làm sáng da, nâng tone và giúp da đều màu nhanh chóng.  - Bảo vệ da bạn khỏi tác hại từ tia UV và các tác động khác của môi trường.

- Giữ ẩm hiệu quả cho da, không nhờn dính lỗ chân lông, thích hợp với nhiều loại da.

- Chất kem mềm mịn không thấm nước, giúp bạn che khuyết điểm hoàn hảo.

- Thành phần gồm tinh chất bơ hạt mỡ, BOTOX tươi (loại protein được sử dụng trong ngành thẩm mỹ) giúp bảo vệ da hiệu quả.

- Sản phẩm tích hợp kem nền, kem che khuyết điểm, bổ sung tính năng dưỡng ẩm và chống nắng hiệu quả cho làn da, giúp bạn tiết kiệm thời gian trang điểm tối ưu. Hướng dẫn các bước trang điểm với kem nền F.O.X:

Bước 1: Làm sạch và dưỡng da.

Bước 2: Thoa sản phẩm chống nắng để bảo vệ da. Gợi ý cho bạn dòng sản phẩm Sữa Chống Nắng Bảo Vệ Da Hoàn Hảo F.O.X - SPF30 giúp bảo vệ da khỏi tia UV và các tác động xấu từ môi trường.

Bước 3: Chọn loại kem lót phù hợp với làn da của bạn, gợi ý cho bạn một trong các dòng kem lót của F.O.X Cosmetics:

- Kem Lót Hiệu Chỉnh Màu Da F.O.X - SPF30

- Kem Lót Điều Chỉnh Sắc Tố Da F.O.X

- Kem Lót Baby Face Căng Mịn F.O.X

- Kem Lót Làm Sáng Và Mịn Da F.O.X

Bước 4: Lựa chọn màu Kem Nền Dưỡng Ẩm Và Làm Sáng F.O.X phù hợp với tình trạng hiện tại của làn da.

- Bright White: thích hợp với da trắng sáng, cho da bật tone, che phủ khuyết điểm nhỏ.

- Nude Skin: thích hợp với làn da nâu, hơi ngăm.

- Light Skin: phù hợp cho phong cách trang điểm tự nhiên, trong suốt.

Bước 5: Sử dụng kem che khuyết điểm để che phủ các khuyết điểm còn sót lại trên da, hoàn thành bước trang điểm nền cơ bản.

Lưu ý: Nên giãn cách thời gian sử dụng giữa các bước với nhau để đảm bảo khả năng thấm/bám vào da hoàn toàn của sản phẩm.

Bảo quản:

- Nơi khô ráo, thoáng mát

- Tránh ánh nắng trực tiếp

- Không nên đặt ở nơi ẩm ướt cao nhằm tránh sản phẩm biến chất

- Đậy kín nắp sau khi sử dụng', N'kemnenduongamFOX.png', N'TDN')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TDN09', N'Phấn Nền Trang Điểm Dạng Nước GUERLAIN PARIS PARURE GOLD FOUNDATION CUSHION SPF25/PA++', N'Hộp', 1800000, N'Pháp', N'Guerlain Paris Parure Gold Foundation Cushion SPF 25/PA++ - kem nền trang điểm chứa thành phần chiết xuất từ thiên nhiên, tạo lớp nền mỏng mịn tự nhiên, tăng cường khả năng che khuyết điểm (lỗ chân lông, vùng da xỉn màu, mụn, thâm sạm,…), làm đều màu da, bổ sung và củng cố hàng rào ẩm, cải thiện các dấu hiệu lão hóa, kích thích tuần hoàn máu, kiểm soát dầu nhờn, dưỡng da sáng hồng, chống nắng, chống oxy hóa và các gốc tự do, bảo vệ da hoàn hảo trước các tác nhân có hại từ môi trường, chống thấm nước, làm mờ nếp nhăn,... Công dụng:

Cấp ẩm và bổ sung dưỡng chất sâu tế bào da, giúp da căng sáng và đầy sức sống.
Củng cố hàng rào ẩm, hạn chế tối đa tình trạng khô mốc, sần, loang lổ khi trang điểm.
Tạo lớp nền bền màu, tự nhiên và lâu xuống tone sau nhiều giờ.  Chỉ số chống nắng khá cao SPF25/PA++, bảo vệ da trước các tác nhân có hại từ môi trường, ngăn ngừa hình thành hắc sắc tố (sạm nám, tàn nhang,…).
Chống oxy hóa và lão hóa da, tăng sinh collagen, giúp da săn chắc và đàn hồi, giảm hình thành nếp nhăn, chảy xệ,…
Mang lại hiệu ứng trong suốt, mỏng nhẹ, căng mọng cho làn da.
Kiểm soát dầu thừa, tăng cường khả năng che khuyết điểm. Hướng dẫn sử dụng:

Sau các bước làm sạch và dưỡng da, dùng bông trang điểm (có sẵn) nhấn nhẹ vào lõi để lấy lượng phấn nước vừa đủ, dặm đều lên toàn bộ khuôn mặt và cổ.

Có thể dặm thêm 2 – 3 lớp để che vùng da có khuyết điểm.

Lưu ý: 

Không miết bông phấn, mà chỉ dặm nhẹ để tạo độ mịn và bám phấn tốt.
Bảo quản sản phẩm nơi khô thoáng, tránh tiếp xúc trực tiếp với ánh nắng mặt trời
Để xa tầm tay trẻ em.', N'phannendangnuocGuerlain.png', N'TDN')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TT01', N'Nước tẩy trang Dr.Jart+ Dermaclear Micro Water ', N'Chai', 625000, N'Hàn Quốc', N'Nước tẩy trang Dr.Jart+ Dermaclear Micro Water giúp loại bỏ đi lớp trang điểm và tạp chất bụi bẩn trên da mà vẫn giữ cho làn săn chắc và làm sáng hơn. Sản phẩm đã được thử nghiệm bởi bác sĩ da liễu và chứng minh không gây kích ứng cho da.
Ưu điểm sản phẩm:
- Nước tẩy trang Dermaclear Micro Water được sản xuất với 85% nước khoáng Hydro hoạt tính thay vì nước tinh khiết và được chế tạo với 90% thành phần tự nhiên, cấu trúc nhỏ nhưng hoạt động mạnh mẽ chính bởi công thức độc đáo này cho phép loại bỏ tất cả các tạp chất, trang điểm và thậm chí cả mascara mà không gây kích ứng.
- Độ PH của nước tẩy trang tương tự trên da nên sản phẩm làm sạch da nhưng không hề gây dị ứng kể cả da nhạy cảm.
- Nước tẩy trang chứa nhiều khoáng chất cung cấp dưỡng chất và dưỡng ẩm cao cấp, thích hợp cho da nhạy cảm.
- Công thức Derma Toning Complex tạo một cảm giác tươi mới trên da, đồng thời làm săn chắc và sáng da.
- Thành phần dưỡng ẩm tự nhiên chiết xuất từ nước dừa giúp giữ ẩm cho da. Đặc biệt, không chứa: Parabens, Sulfat. Cũng không có các thành phần gây hại khác: không màu, không cồn, không mùi nhân tạo, không cồn,…
Thành phần: Từ nước khoáng Hydro, nước cốt dừa và 90% thành phần tự nhiên.
Hướng dẫn sử dụng và bảo quản:
- Làm ướt bông cotton bằng nước tẩy trang Dr Jart+, sau đó nhẹ nhàng lau toàn bộ lớp trang điểm trên khuôn mặt.
- Bảo quản nơi khô ráo, thoáng mát.', N'nuoctaytrangDrJart.png', N'TT')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TT02', N'Nước tẩy trang Celderma Micellar Cleansing Water 500ml', N'Chai', 350000, N'Hàn Quốc', N'Nếu bạn nghĩ tẩy trang chỉ dành cho những cô nàng hay trang điểm thì hãy quên ngay ý nghĩ này đi nhé. Ngày nay, các loại nước tẩy trang lành tính, không cồn như Micellar Cleansing Water đang là sản phẩm được sử dụng để làm sạch sâu da hàng ngày, là sản phẩm gây nghiện của các beauty blogger và rất nhiều phụ nữ Hàn Quốc dù trang điểm hay không
Đây là một loại tẩy trang nước dưới hình thức các tinh thể Mixen cực nhỏ. Chúng đóng vai trò như thỏi nam châm hình cầu, bao gồm 2 đầu: Một đầu ưa nước đưa các hạt Mixen vào hòa tan và cuốn trôi mọi tạp chất, đồng thời đóng vai trò như một hàng rào cấp ẩm trên bề mặt da. Đầu còn lại ưa dầu hút hút sạch dư lượng trang điểm và hấp thụ bã nhờn. Chính vì đặc điểm này mà tẩy trang Micellar làm sạch sâu mà vẫn không làm khô da, không thay đổi cấu trúc da và không làm tổn thương da.
Ưu điểm:
- Thành phần hoàn toàn từ thiên nhiên, không chứa cồn, an toàn cho da.
- Không chứa các chất tạo bọt, nên không làm da khô căng như một số sữa rửa mặt thông thường.
- Được EWG chứng nhận cấp độ xanh lá về độ lành tính, phù hợp mọi loại da kể cả da nhạy cảm nhất.
- Có thể dùng tẩy trang để thay đổi màu son nhiều lần, những đường eyeliner bị lem hoặc tẩy trang để thoa lớp kem chống nắng mới.Không cần rửa lại với sữa rửa mặt nên rất tiện lợi khi đi làm, hoặc đi du lịch.
- Dung tích lớn, giá cả hợp lý.
- Một trong những ưu điểm vượt trội của sản phẩm chính là chiết xuất từ những thành phần hoàn toàn từ thiên nhiên, vô cùng lành tính cho da
Thành phần chính:
Nước dừa: nguồn kali và khoáng chất trong nước dừa cao gấp đôi lượng kali trong chuối để làm mềm da khô
Suối nước nóng tại Bỉ: nổi tiếng là nguồn nước sạch và đã được bảo vệ kỹ lưỡng khỏi ô nhiễm.
Nước hoa hồng Provence đắt tiền: làm sạch sâu và loại bỏ lớp bụi bẩn, bã nhờn trên daHoàn toàn không chứa cồn (chất gây khô da)
Công dụng:
- Sở hữu bảng thành phần thiên nhiên cùng công nghệ Micellar, nước tẩy trang Celderma Micellar Cleansing Water mang đến công dụng cho làn da:
- Giúp loại bỏ các chất lạ có hại từ da, làm dịu da có vấn đề và cải thiện khả năng miễn dịch, làm cho da khỏe mạnh
- Điều chỉnh độ pH của da, làm sạch kết cấu da thô ráp, tông màu da sáng và trong suốt hơn.
- Chứa lượng lớn khoáng chất giữ ẩm cho da và giúp giữ sạch da bằng cách loại bỏ bụi bẩn từ lỗ chân lông.
- An toàn tẩy trang cho cả vùng mắt và môiPhù hợp với mọi loại da, kể cả da nhạy cảm.
Hướng dẫn sử dụng:
- Làm ẩm miếng bông bằng nước tẩy trang.
- Nhẹ nhàng lau toàn bộ khuôn mặt. Không cần rửa lại với nước.
- Sử dụng các bước chăm sóc da tiếp theo nếu có (sữa rửa mặt, toner, serum, kem dưỡng)
- Sử dụng vào buổi tối để làm sạch lớp bụi bẩn và mỹ phẩm trên da.', N'nuoctaytrangCelderma.png', N'TT')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TT03', N'Nước tẩy trang Charcott For Proffesional Cleansing Water 500ml', N'Chai', 550000, N'Nhật Bản', N'Nước tẩy trang CHACOTT for Professionals của thương hiệu Chacott Nhật Bản là sản phẩm cực kỳ dịu nhẹ, giúp dễ dàng loại bỏ những lớp make up nặng đô và gan lì nhấtt nhờ chứa phân tử nước siêu vi RO- được nghiên cứu và phát triển bởi cơ quan hàng không vũ trụ Mỹ NASA.
Nước tẩy trang CHACOTT for Professionals chứa thành phần thảo mộc thiên nhiên 100%, tác dụng làm sạch bã nhờn, lớp make up, bụi bẩn và bổ sung vitamin B trực tiếp cho da, thành phần lô hội dưỡng ẩm, cấp nước.
Nước tẩy trang Chacott For Professionals Cleansing Water giúp loại bỏ hoàn toàn lớp trang điểm, bụi bẩn trên da một cách dễ dàng. Mang đến cho bạn làn da mịn màng để có thể hấp thụ được các dưỡng chất trong các bước dưỡng da tiếp theo.
Sản phẩm hoàn toàn dịu nhẹ, không làm tổn thương hay gây kích ứng cho da. Phù hợp với da nhạy cảm.
Thành phần chính:
-  Chiết xuất cây hương thảo có tác dụng kháng khuẩn và chống kích ứng da, làm dịu các vết thương do mụn gây ra. Bên cạnh đó, hương thảo còn có khả năng chống oxi hóa tuyệt vời, giúp bạn chống lại những dấu hiệu của lão hóa đó nha.
- Chiết xuất từ hoa cúc La Mã có chứa rất nhiều vitamin B giúp làm dịu da và giữ ẩm hiệu quả.
- Chiết xuất từ nha đam chiết xuất từ nha đam có tác dụng dưỡng ẩm. Hỗ trợ cho da bạn luôn mịn màng và tránh được tình trạng khô da khi tẩy trang.
Công dụng đặc trưng:
- Lấy lại mặt mộc 100% khi cần thiết.
- Làn da không còn bụi bẩn.
- Dưỡng ẩm da.
Hướng dẫn sử dụng & bảo quản:
- Thấm nước tẩy trang ra miếng bông rồi nhẹ nhàng lau sạch lớp trang điểm
- Rửa lại mặt với nước.', N'nuoctaytrangChacott.png', N'TT')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TT04', N'Dầu Tẩy Trang Hoa Anh Đào FOX Sakura Cleansing Oil 200ml', N'Chai', 640000, N'Đài Loan', N'Được nghiên cứu và phát triển bởi đội ngũ chuyên gia giàu kinh nghiệm, dầu tẩy trang hoa anh đào chính là giải pháp tẩy trang làm sạch hoàn hảo với sự kết hợp của nhiều loại dầu tự nhiên cao cấp được áp dụng kỹ thuật ép hạt lạnh tiên tiến nhằm lưu giữ lại dầu với lượng dưỡng chất dồi dào và đầy đủ các lợi ích tốt nhất.
Dầu Tẩy Trang Hoa Anh Đào F.O.X có tác dụng loại bỏ lớp trang điểm và bụi bẩn trên bề mặt da nhẹ nhàng, hạn chế tình trạng bít kín lỗ chân lông, ngăn ngừa quá trình hình thành mụn trứng cá
Đặc tính sản phẩm:
- Dầu Tẩy Trang Hoa Anh Đào F.O.X chứa các thành phần tự nhiên như tinh dầu hoa hồng, hạt nho, hạt hướng dương, lá cây anh đào, Vitamin E,…giúp nuôi dưỡng và giữ ẩm cho da
- Chiết xuất từ tinh chất hoa anh đào dịu nhẹ ngăn ngừa sự hình thành hắc sắc tố dưới da.
- Loại bỏ lớp trang điểm và bụi bẩn nhẹ nhàng mà không gây kích ứng cho da
- Bạn có thể sử dụng thay cho dầu massage để chăm sóc da, giúp phục hồi làn da tối ưu hơn
Công dụng chính:
- Loại bỏ lớp trang điểm và bụi bẩn trên da
- Thành phần tự nhiên, an toàn cho da
- Giữ ẩm hiệu quả cho da
- Ngăn ngừa những vấn đề liên quan đến mụn
- Không gây kích ứng
Hướng dẫn sử dụng:
Sản phẩm thích hợp để sử cho tẩy trang vùng mặt mà không gây kích ứng.
Bước 1: Dùng nước ấm thấm vào miếng bọt biển hoặc bông, lau nhẹ vùng mắt, môi và cả khuôn mặt để lỗ chân lông được giãn nở, giúp cho việc tẩy trang và loại sạch bụi bẩn tốt hơn.
Bước 2: Lắc đều Dầu Tẩy Trang Hoa Anh Đào F.O.X để hòa trộn các tinh chất bên trong sản phẩm. Dùng bông tẩy trang thấm đều dầu tẩy trang, sau đó lau nhẹ cả khuôn mặt, cho đến khi bông tẩy trang không còn dấu vết của mỹ phẩm nữa.
Bước 3: Dùng sản phẩm tẩy trang chuyên dụng cho mắt và môi để tẩy trang hai vùng này. Gợi ý cho bạn dòng sản phẩm Dầu tẩy trang mắt, môi hoa anh đào F.O.X dịu nhẹ và an toàn cho 2 vùng nhảy cảm này.
Bước 4: Rửa sạch mặt với nước ấm. Dùng khăn bông mềm thấm nhẹ nước trên mặt.
Bước 5: Dưỡng ẩm cho da.
Lưu ý: Nếu bạn sở hữu làn da dầu hay da tổng hợp thiên dầu, bạn nên dùng Nước tẩy trang trà xanh F.O.X hoặc Kem tẩy trang hoa Citron F.O.X để tránh tình trạng gây ra các vấn đề về mụn trên da.', N'dautaytrangFOX.png', N'TT')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TT05', N'Dầu Tẩy Trang Shu Uemura Skin Purifier 150ml', N'Chai', 800000, N'Nhật Bản', N'Shu Uemura là hãng mỹ phẩm Châu Á thành công nhất, có sức ảnh hưởng mạnh mẽ nhất đến khu vực Châu Âu-Châu Mỹ đặc biệt là nước Mỹ trong những năm gần đây mặc dù nó là hãng mỹ phẩm tiếp cận khu vực này sau Shiseido Kanebo Kose… Đặc biệt nhắc đến Shu là nhắc đến sản phẩm tẩy trang, son Shu và các loại dụng cụ trang điểm chuyên nghiệp như bấm mi, cọ…

Dầu Tẩy trang Shu Uemura Skin Purifier Nhật Bản là sản phẩm đình đám làm nên tên tuổi và khẳng định vị trí của hãng mỹ phẩm SHU UEMURA – sản phẩm được phụ nữ khắp nơi trên thế giới tin dùng. Theo thống kê khảo sát số lượng tiêu thụ mỹ phẩm thì cứ 5s là sẽ có 1 chai dầu tẩy trang Shu Uemura được bán ra trên toàn cầu...
Dầu Tẩy trang Shu Uemura Skin Purifier là sản phẩm tẩy trang hàng đầu bán chạy nhất tại Nhật hiện nay với nhiều dòng đa dạng cho những nhu cầu sử dụng khác nhau.
Thành phần & công dụng chính:
- Thành phần từ hoa trà Nhật: giúp làm da mềm mịn sau khi tẩy trang.
- Chiết xuất từ lá hoa anh đào: có khả năng lấy sạch bụi bẩn, còn kháng viêm và trị các vấn đề đốm đỏ trên da do mụn, giúp da đều màu hơn.
- Dẫn xuất salicylic acid: giúp tẩy da chết nhẹ nhàng nhưng sạch sâu.
- Chiết xuất cherry có chứa AHA phù hợp cho da có lỗ chân lông to và đổ dầu nhiều.
- Dầu jojoba, dầu hạt macca và glycerin: có tác dụng giữ độ ẩm làm da mềm mịn.
- Chiết xuất bạch quả giúp chống lại tác nhân oxy hóa
Hướng dẫn sử dụng & bảo quản:                                               
- Ấn xịt 2 - 3 lần dầu tẩy trang vào lòng bàn tay khô ráo.   
- Thoa và massage nhẹ nhàng đều khắp bề mặt da.           
- Thêm một ít nước âm ấm hoặc nước lạnh vào lòng bàn tay và massge đều cho đến khi dầu chuyển thành dạng sữa.    
 - Rửa sạch bằng nước ấm hoặc nước lạnh và lau khô.   
 - Đừng quên rửa mặt lại với sữa rửa mặt chuyên dụng hằng ngày.                                                                            
- Bảo quản nơi khô ráo, thoáng mát.', N'dautaytrangShuUemura.png', N'TT')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaTien], [XuatXu], [MoTaSP], [HinhSP], [MaLoaiSP]) VALUES (N'TT06', N'Nước tẩy trang cho da dầu mụn SVR Sebiaclear Purifying Cleansing Water 400ml', N'Chai', 500000, N'Pháp', N'SVR Sebiaclear Purifying Cleansing Water – nước tẩy trang dành cho da dầu mụn, giàu hoạt chất Gluconolactone, Micelles, Niacinamide,… giúp làm sạch sâu, loại bỏ hoàn toàn bã nhờn và cặn trang điểm, giữ thông thoáng lỗ chân lông, giảm mụn, dưỡng sáng hồng da từ bên trong, cân bằng độ ẩm và độ pH tự nhiên, kháng viêm, chống khuẩn, điều tiết bã nhờn, hỗ trợ se khít lỗ chân lông, ngăn ngừa hình thành mụn và viêm nang lông, kích thích quá trình hấp thụ dưỡng chất, phục hồi sinh khí, làm dịu, thúc đẩy tái tạo kết cấu da,…

Sản phẩm hoàn toàn dịu nhẹ, tạo cảm giác thoáng mát và sảng khoái cho làn da, hoàn toàn không xà phòng, không cồn, không gây khô rát.

Phù hợp cho hầu hết các loại da từ da hỗn hợp đến da dầu, da mụn (mụn đầu đen, mụn trứng cá, mụn bọc), da nhạy cảm, da thâm sạm, da sẹo mụn, da có lỗ chân lông to, nhiều tế bào chết…
Công dụng:

- Làm sạch và giữ thông thoáng lỗ chân lông, loại bỏ hoàn toàn tạp chất và cặn trang điểm, thậm chí là với lớp trang điểm không thấm nước.
- Kháng viêm, chống khuẩn, ngăn ngừa bí tắc lỗ chân lông gây mụn và viêm nang lông.
- Điều tiết dầu nhờn, cân bằng độ ẩm và độ pH tự nhiên của da, củng cố hàng rào bảo vệ.
- Kích thích tuần hoàn máu dưới da, cải thiện quá trình hấp thụ dưỡng chất, phục hồi sinh khí.
- Dưỡng da sáng hồng từ bên trong, giảm sưng tấy, se khít lỗ chân lông, làm đều màu da.
- Ức chế quá trình lão hóa, giảm thiểu nếp nhăn và vết chân chim, chống oxy hóa và các gốc tự do, thúc đẩy tái tạo kết cấu tế bào mới.
Thành phần:

Aqua (Purified Water), Poloxamer 184, Peg-7 Glyceryl Cocoate, Pentylene Glycol, Propanediol, Gluconolactone, 1,2-Hexanediol, Citric Acid, Sodium Hydroxide, Cetrimonium Bromide

Hướng dẫn sử dụng:

Bước 1: thấm một ít nước tẩy trang lên bông tẩy trang và nhẹ nhàng thoa lên vùng mặt, mắt và môi. Lau sạch theo chiều cấu tạo da cho đến khi không còn cặn bám trên bông tẩy trang.

Bước 2: rửa sạch da với sữa rửa mặt và thực hiện các bước chăm sóc da tiếp theo.

Dùng 2 lần/ngày, sáng và tối.
Lưu ý:

Bảo quản sản phẩm nơi thoáng mát, tránh tiếp xúc trực tiếp với ánh nắng mặt trời.
Để xa tầm tay trẻ em.
Thông tin thương hiệu:

SVR là thương hiệu dược mỹ phẩm Pháp an toàn cho da nhạy cảm với 7 dòng sản phẩm chuyên biệt: làm sạch, dưỡng ẩm, trị mụn, chống lão hóa, xóa mờ thâm nám, giảm nếp nhăn và dưỡng thể.

Thương hiệu SVR được thành lập năm 1962 tại Pháp bởi một cặp vợ chồng dược sĩ tên là Simone và Robert Véret với mục tiêu: đánh thức nét đẹp của mọi làn da – “beautiful skin”. Trải qua 56 năm phát triển mạnh mẽ và có mặt trên 45 quốc gia, SVR đã trở thành sản phẩm được các bác sĩ tin dùng.

Hiện nay, SVR thực sự là một ngôi sao sáng trong lĩnh vực sản phẩm chăm sóc da thuộc dòng dermo-cosmetics (dược mỹ phẩm) với nồng độ hoạt chất cao nhất cho độ dung nạp tối ưu nhất, 100% được thử nghiệm trên làn da nhạy cảm.
Năm 1962 - Cặp vợ chồng dược sĩ có tầm nhìn xa Simone và Robert Véret thành lập SVR - phòng thí nghiệm da liễu với mục đích chính là tạo ra "LÀN DA ĐẸP". Tham vọng của họ là điều chế các hoạt chất da liễu hàng đầu ở liều lượng cao nhất có thể mà không ảnh hưởng đến sức đề kháng của làn da.

Năm 2015 - Qua nhiều năm, con trai và cháu trai của họ đã biến thương hiệu Pháp quy mô gia đình này thành một ngôi sao thực sự trong lĩnh vực dược mỹ phẩm. Được bác sĩ da liễu ở 45 quốc gia kê đơn và được trình bày tại tất cả các cuộc hội thảo lớn, SVR đã phát triển về quy mô mà vẫn luôn giữ đúng các giá trị như ngày đầu.

Sự chân thành, trung thực kết hợp với độ tin cậy và chất lượng vượt trội đã cho phép thương hiệu này mang lại các sản phẩm chăm sóc da hàng đầu thị trường dành cho tất cả các loại da, kể cả làn da nhạy cảm nhất.

Nhờ chuyên môn của mình, SVR đã điều chế ra những hoạt chất hàng đầu với nồng độ cao nhất. Việc tối đa hóa hiệu suất và đảm bảo khả năng dung nạp là những thiên tài đằng sau SVR đã biến đổi tất cả các loại da thành làn da đẹp.

SVR - thương hiệu da liễu có nồng độ hoạt chất cao nhất. 100% được thử nghiệm trên làn da nhạy cảm.', N'nuoctaytrangSVR.png', N'TT')
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTHD_HD]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTHD_SP]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HD_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HD_KH]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HD_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HD_NV]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SP_MaLSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SP_MaLSP]
GO
USE [master]
GO
ALTER DATABASE [QLBHMyPham] SET  READ_WRITE 
GO
