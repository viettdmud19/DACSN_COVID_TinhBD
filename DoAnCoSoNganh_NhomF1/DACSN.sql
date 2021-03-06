USE [master]
GO
/****** Object:  Database [DuLieuYTeBD]    Script Date: 05/11/2021 12:07:28 AM ******/
--CREATE DATABASE [DuLieuYTeBD]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'DuLieuYTeBD', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DuLieuYTeBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'DuLieuYTeBD_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DuLieuYTeBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
-- WITH CATALOG_COLLATION = DATABASE_DEFAULT
--GO
--ALTER DATABASE [DuLieuYTeBD] SET COMPATIBILITY_LEVEL = 150
--GO
--IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
--begin
--EXEC [DuLieuYTeBD].[dbo].[sp_fulltext_database] @action = 'enable'
--end
--GO
--ALTER DATABASE [DuLieuYTeBD] SET ANSI_NULL_DEFAULT OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET ANSI_NULLS OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET ANSI_PADDING OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET ANSI_WARNINGS OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET ARITHABORT OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET AUTO_CLOSE OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET AUTO_SHRINK OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET AUTO_UPDATE_STATISTICS ON 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET CURSOR_DEFAULT  GLOBAL 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET CONCAT_NULL_YIELDS_NULL OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET NUMERIC_ROUNDABORT OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET QUOTED_IDENTIFIER OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET RECURSIVE_TRIGGERS OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET  ENABLE_BROKER 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET TRUSTWORTHY OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET PARAMETERIZATION SIMPLE 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET READ_COMMITTED_SNAPSHOT OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET HONOR_BROKER_PRIORITY OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET RECOVERY FULL 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET  MULTI_USER 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET PAGE_VERIFY CHECKSUM  
--GO
--ALTER DATABASE [DuLieuYTeBD] SET DB_CHAINING OFF 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET DELAYED_DURABILITY = DISABLED 
--GO
--ALTER DATABASE [DuLieuYTeBD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
--GO
--EXEC sys.sp_db_vardecimal_storage_format N'DuLieuYTeBD', N'ON'
--GO
--ALTER DATABASE [DuLieuYTeBD] SET QUERY_STORE = OFF
--GO
Create database [DuLieuYTeBD2]
go
USE [DuLieuYTeBD2]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 05/11/2021 12:07:29 AM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
CREATE TABLE [dbo].[BaiViet](
	[IdBV] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[TomTat] [nvarchar](max) NULL,
	[NoiDung] [ntext] NULL,
	[NgayViet] [datetime] NULL,
	[Hinh] [nvarchar](50) NULL,
	[NguoiViet] [nvarchar](100) NULL,
	[IdDM] [int] NULL,
	[Tag] [nvarchar](60) NULL,
	[LinkVideo] [nvarchar](max) NULL,
	Primary key(IdBV)
)
--PRIMARY KEY CLUSTERED 
--(
--	[IdBV] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO
--/****** Object:  Table [dbo].[CaNhiem]    Script Date: 05/11/2021 12:07:29 AM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
CREATE TABLE [dbo].[CaNhiem](
	[Stt] [int] IDENTITY(1,1) NOT NULL,
	[Tinh] [nvarchar](100) NULL,
	[Tongsoca] [int] NULL,
	[Homnay] [int] NULL,
	[Tuvong] [int] NULL,
	Primary key(Stt)
)
--PRIMARY KEY CLUSTERED 
--(
--	[Stt] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]
--GO
--/****** Object:  Table [dbo].[DanhMuc]    Script Date: 05/11/2021 12:07:29 AM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
CREATE TABLE [dbo].[DanhMuc](
	[IdDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](100) NULL,
	Primary key(IdDM)
)
--PRIMARY KEY CLUSTERED 
--(
--	[IdDM] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]
--GO
--/****** Object:  Table [dbo].[NhanVien]    Script Date: 05/11/2021 12:07:29 AM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
CREATE TABLE [dbo].[NhanVien](
	[IdNV] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[MatKhauNV] [varchar](50) NULL,
	[CodeResetPassword] [varchar](100) NULL,
	[HovaTen] [nvarchar](100) NULL,
	[DiaChi] [ntext] NULL,
	[SDT] [varchar](20) NULL,
	[NgayDangKy] [smalldatetime] NULL,
	[IsEmailVerified] [bit] NULL,
	[ActivationCode] [uniqueidentifier] NULL,
	Primary key(IdNV)
)
--PRIMARY KEY CLUSTERED 
--(
--	[IdNV] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO
--/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 05/11/2021 12:07:29 AM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
CREATE TABLE [dbo].[TaiKhoan](
	[IdTK] [int] IDENTITY(1,1) NOT NULL,
	[TenDN] [char](10) NULL,
	[MatKhau] [char](10) NULL,
	[Quyen] [nvarchar](20) NULL,
	Primary key(IdTK)
)

Create table [dbo].[DienBienDich]
(
	IDDB int Identity(1,1) primary key,
	ThoiGian datetime,
	TieuDeDB nvarchar(100),
	CauTongKetDB ntext,
	ChiTietDB ntext,
)
--PRIMARY KEY CLUSTERED 
--(
--	[IdTK] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]
--GO
SET IDENTITY_INSERT [dbo].[BaiViet] ON 

INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (13, N'Dùng thuốc hạ sốt sau tiêm vaccine COVID-19 ở người mắc bệnh nền', N'SKĐS - Đối với những người có bệnh nền khi bị sốt sau tiêm vaccine COVID-19, dùng thuốc hạ sốt như thế nào?', N'<p>C&oacute; tới 60-80% người ti&ecirc;m gặp phải c&aacute;c phản ứng&nbsp;<a class="link-inline-content" title="sốt" href="https://suckhoedoisong.vn/cach-dung-cac-dang-thuoc-ha-sot-sau-tiem-vaccine-covid-19-169210912102412651.htm" target="_blank" rel="noopener" data-rel="follow">sốt</a>,&nbsp;<a class="seo-suggest-link" title="sốt cao li&ecirc;n tục" href="https://suckhoedoisong.vn/sot-cao-lien-tuc.html" target="_blank" rel="noopener">sốt cao</a>, cơ thể mệt mỏi, đau nhức&hellip; Tuy nhi&ecirc;n, c&aacute;c phản ứng n&agrave;y thường sẽ tự khỏi trong v&ograve;ng v&agrave;i ng&agrave;y sau ti&ecirc;m. Trong trường hợp sốt cao, lạnh run c&oacute; thể d&ugrave;ng&nbsp;<a class="link-inline-content" title="thuốc hạ sốt" href="https://suckhoedoisong.vn/sau-tiem-vaccine-covid-19-dung-loai-thuoc-ha-sot-nao-169210905200945074.htm" target="_blank" rel="noopener" data-rel="follow">thuốc hạ sốt</a>&nbsp;để giảm triệu chứng kh&oacute; chịu.</p>
<h3>Nếu c&oacute; sốt sau ti&ecirc;m vaccine COVID-19, người&nbsp;<a class="seo-suggest-link" title="bệnh nh&acirc;n COVID-19 mắc bệnh nền" href="https://suckhoedoisong.vn/benh-nhan-covid-19-mac-benh-nen.html" target="_blank" rel="noopener">mắc bệnh nền</a>&nbsp;n&ecirc;n l&agrave;m g&igrave;?</h3>
<p>Cũng như người b&igrave;nh thường khỏe mạnh, người mắc bệnh nền sau khi&nbsp;<a class="seo-suggest-link" title="ti&ecirc;m vaccine covid-19 kh&aacute;c nhau" href="https://suckhoedoisong.vn/tiem-vaccine-covid-19-khac-nhau.html" target="_blank" rel="noopener">ti&ecirc;m vaccine COVID-19</a>, một số trường hợp kh&ocirc;ng gặp phản ứng g&igrave;, một số người c&oacute; thể cảm thấy mỏi mệt, kh&oacute; ngủ, nhức đầu, đau tại chỗ ti&ecirc;m&hellip; Nhưng phản ứng thường gặp nhất l&agrave; sốt.</p>
<figure class="VCSortableInPreviewMode">
<div><a class="detail-img-lightbox" title="Sau ti&ecirc;m vaccine, người mắc bệnh nền cần phải được theo d&otilde;i hạ sốt kịp thời nếu sốt cao." href="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/9/11/sot-sau-tiem-6-1631363752659956929865.jpeg" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img style="width: 750px; height: 600px; display: block; margin-left: auto; margin-right: auto;" src="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/9/11/sot-sau-tiem-6-1631363752659956929865.jpeg" /></a></div>
<figcaption class="PhotoCMS_Caption">
<p class="" style="text-align: justify;" data-placeholder="Nhập ch&uacute; th&iacute;ch ảnh"><span style="color: #e03e2d;">Sau ti&ecirc;m vaccine, người mắc bệnh nền cần phải được theo d&otilde;i hạ sốt kịp thời nếu sốt cao.</span></p>
</figcaption>
</figure>
<p>Theo hướng dẫn chung của Bộ Y tế, sau khi ti&ecirc;m ph&ograve;ng vaccine ph&ograve;ng COVID-19, cần phải thường xuy&ecirc;n đo th&acirc;n nhiệt, nếu sốt dưới 38.5 độ C th&igrave; chỉ cần mặc quần &aacute;o tho&aacute;ng m&aacute;t, uống đủ nước, kh&ocirc;ng để nhiễm lạnh.</p>
<p>Nếu sốt tr&ecirc;n 38.5 độ C, cần phải sử dụng thuốc hạ sốt theo đ&uacute;ng liều lượng m&agrave; nh&acirc;n vi&ecirc;n y tế đ&atilde; hướng dẫn.</p>
<h2>Người c&oacute; bệnh nền n&ecirc;n d&ugrave;ng thuốc hạ sốt thế n&agrave;o?</h2>
<p>Thuốc hạ sốt thường d&ugrave;ng l&agrave;&nbsp;<a class="seo-suggest-link" title="liều d&ugrave;ng thuốc paracetamol" href="https://suckhoedoisong.vn/lieu-dung-thuoc-paracetamol.html" target="_blank" rel="noopener">paracetamol</a>&nbsp;v&agrave; ibuprofen, nhưng với người c&oacute; sẵn bệnh nền, cần lựa chọn thuốc ph&ugrave; hợp.</p>
<div class="VCSortableInPreviewMode" data-layout="top-center" data-backgroundcolor="#F9F9F9" data-bordercolor="#E5E5E5" data-textcolor="#333">
<div class="icon icon-quote">&nbsp;</div>
<div class="quote-content has-author has-border">Đối với bệnh nh&acirc;n suy thận, c&oacute; chạy thận nh&acirc;n tạo chu kỳ vẫn c&oacute; thể ti&ecirc;m vaccine COVID-19. Tr&ecirc;n nh&oacute;m bệnh nh&acirc;n n&agrave;y do miễn dịch yếu n&ecirc;n &iacute;t gặp phản ứng sốt. Tuy nhi&ecirc;n, nếu bệnh nh&acirc;n sốt cao tr&ecirc;n 38.5 độ C, vẫn c&oacute; thể d&ugrave;ng thuốc hạ sốt paracetamol, nhưng với liều 250mg/4-6 giờ.</div>
<div class="quote-author-info has-avatar"><span class="q-avatar"><img style="width: 750px; height: 600px; display: block; margin-left: auto; margin-right: auto;" src="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/9/15/trinh-thi-ngoc-163170095993321275290.jpg" /></span>
<p>PGS.TS.Trịnh Thị Ngọc, nguy&ecirc;n Trưởng khoa c&aacute;c bệnh truyền nhiễm, BV Bạch Mai</p>
</div>
<figure class="VCSortableInPreviewMode">
<div><a class="detail-img-lightbox" title="Paracetamol l&agrave; thuốc hạ sốt, nhưng phải tu&acirc;n thủ liều lượng theo hướng dẫn của b&aacute;c sĩ, nhất l&agrave; người mắc bệnh nền c&agrave;ng cần thận trọng khi d&ugrave;ng thuốc." href="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/9/11/sot-sau-tiem-vaccine-2-1631363949482218832052.jpg" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img style="width: 750px; height: 600px; display: block; margin-left: auto; margin-right: auto;" src="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/9/11/sot-sau-tiem-vaccine-2-1631363949482218832052.jpg" alt="Xử tr&iacute; sốt sau ti&ecirc;m vaccine COVID-19 ở người c&oacute; sẵn bệnh nền - Ảnh 3." width="" height="" data-original="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/9/11/sot-sau-tiem-vaccine-2-1631363949482218832052.jpg" /></a></div>
<figcaption class="PhotoCMS_Caption">
<p class="" data-placeholder="Nhập ch&uacute; th&iacute;ch ảnh"><span style="color: #e03e2d;">Paracetamol l&agrave; thuốc hạ sốt, nhưng phải tu&acirc;n thủ liều lượng theo hướng dẫn của b&aacute;c sĩ, nhất l&agrave; người mắc bệnh nền c&agrave;ng cần thận trọng khi d&ugrave;ng thuốc.</span></p>
</figcaption>
</figure>
<p>Ở bệnh nh&acirc;n suy gan, nếu chức năng gan giảm, men gan tăng cao 300-400UI/ml sẽ ho&atilde;n ti&ecirc;m vaccine cho đến khi điều trị bệnh ổn mới c&acirc;n nhắc c&oacute; n&ecirc;n ti&ecirc;m vaccine hay kh&ocirc;ng. C&ograve;n những bệnh l&yacute; gan kh&aacute;c sau ti&ecirc;m sốt tr&ecirc;n 38.5 độ C, vẫn d&ugrave;ng paracetamol 500mg/lần, ng&agrave;y 2-3. Điều may mắn l&agrave; sau ti&ecirc;m vaccine COVID-19, thường chỉ sốt k&eacute;o d&agrave;i 1-2 ng&agrave;y, n&ecirc;n việc sử dụng thuốc hạ sốt paracetamol liều thấp nhất, trong thời gian ngắn, cơ bản kh&ocirc;ng l&agrave;m ảnh hưởng bệnh nh&acirc;n. PGS.TS.Ngọc cho biết.</p>
<p>Tuy nhi&ecirc;n, nếu c&oacute; sốt cao nhưng kh&ocirc;ng đ&aacute;p ứng với thuốc hạ sốt, hoặc sốt cao th&agrave;nh từng cơn li&ecirc;n tục&hellip; cần th&ocirc;ng b&aacute;o ngay với b&aacute;c sĩ để c&oacute; hướng xử tr&iacute; kịp thời. C&aacute;c trường hợp suy gan, suy thận đặc biệt kh&ocirc;ng được tăng liều thuốc hạ sốt hoặc tự &yacute; d&ugrave;ng phối hợp thuốc hạ sốt.</p>
<p>Ri&ecirc;ng với c&aacute;c trường hợp mắc th&ecirc;m bệnh nền kh&aacute;c như tim mạch, tăng huyết &aacute;p, bệnh nh&acirc;n COPD, đ&aacute;i th&aacute;o đường&hellip; th&igrave; việc sử dụng thuốc hạ sốt sau ti&ecirc;m vaccine COVID-19 c&oacute; thể d&ugrave;ng nh&oacute;m paracetamol với liều 500mg/lần, ng&agrave;y uống 2-3 lần.</p>
<div class="VCSortableInPreviewMode alignRight" data-relatednewsboxtype="type-1" data-style="align-right">
<div class="kbwscwl-relatedbox type-1">
<p><a class="kbwscwlrl-thumb link-callout" href="https://suckhoedoisong.vn/sau-tiem-vaccine-phong-covid-19-dung-thuoc-ha-sot-sao-cho-dung-169210817152839799.htm" target="_blank" rel="noopener"><img style="width: 750px; height: 600px; display: block; margin-left: auto; margin-right: auto;" src="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/8/17/nuoc-khoang-uong-thuoc-1491814538157-16291886758641962691454-0-8-339-550-crop-1629188680373670694337.jpg" /></a></p>
<h4 class="kbwscwlrl-title clearfix"><a class="title link-callout" href="https://suckhoedoisong.vn/sau-tiem-vaccine-phong-covid-19-dung-thuoc-ha-sot-sao-cho-dung-169210817152839799.htm" target="_blank" rel="noopener">Sau ti&ecirc;m vaccine ph&ograve;ng COVID-19 d&ugrave;ng thuốc hạ sốt sao cho đ&uacute;ng?</a></h4>
</div>
</div>
<p>Với nh&oacute;m bệnh nh&acirc;n c&oacute; bệnh l&yacute; vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng đ&atilde; được điều trị ổn định, được ti&ecirc;m vaccine COVID-19, nếu c&oacute; sốt sau ti&ecirc;m, th&igrave; kh&ocirc;ng n&ecirc;n d&ugrave;ng nh&oacute;m thuốc ibuprofen để hạ sốt, m&agrave; vẫn d&ugrave;ng paracetamol nhưng sau ăn no v&agrave; liều lượng 500mg/lần x2-3 lần/ng&agrave;y. PGS.Ngọc khuyến c&aacute;o.</p>
<p>Sau khi ti&ecirc;m vaccine COVID-19, mặc d&ugrave; sốt thường xảy ra nhưng th&ocirc;ng thường l&agrave; sốt kh&ocirc;ng cao, kh&ocirc;ng k&eacute;o d&agrave;i, đặc biệt l&agrave; ở người cao tuổi, hay mắc bệnh nền. C&ograve;n đối với người trẻ c&oacute; thể hay sốt hơn v&agrave; sốt cao hơn, thuốc an to&agrave;n nhất l&agrave; paracetamol đều c&oacute; thể d&ugrave;ng được ở c&aacute;c nh&oacute;m bệnh nh&acirc;n n&ecirc;u tr&ecirc;n. Nhưng chỉ d&ugrave;ng liều thấp khi nhiệt độ cơ thể tr&ecirc;n 38.5 độ C, nếu dưới nhiệt độ n&agrave;y th&igrave; kh&ocirc;ng cần d&ugrave;ng thuốc hạ sốt.</p>
<p>Trong trường hợp sốt cao, đ&atilde; d&ugrave;ng thuốc hạ sốt nhưng vẫn kh&ocirc;ng thể cắt được sốt hoặc li&ecirc;n tục c&aacute;c cơn sốt t&aacute;i lại sau 2 tiếng, cần th&ocirc;ng b&aacute;o cho nh&acirc;n vi&ecirc;n y tế v&agrave; đến cơ sở kh&aacute;m gần nhất.</p>
</div>', CAST(N'2021-09-25T19:11:38.930' AS DateTime), N'hinh1.jpeg', N'1', 2, N'Z', N'null')
INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (14, N'Bộ Y tế hướng dẫn xét nghiệm và một số biện pháp phòng chống dịch khi giãn cách, tăng cường giãn cách xã hội', N'Sáng 15/9, Bộ Y tế- cơ quan thường trực Ban Chỉ đạo Quốc gia phòng, chống dịch COVID-19 điện Ban Chỉ đạo phòng ...', N'<p>Theo đ&oacute;, tại c&ocirc;ng điện do&nbsp;<a class="link-inline-content" title="Bộ trưởng Bộ Y tế Nguyễn Thanh Long" href="https://suckhoedoisong.vn/bo-truong-nguyen-thanh-long-ket-hop-chat-che-y-te-quan-doi-cong-an-trong-thuc-hien-nhiem-vu-chuyen-mon-y-te-phong-chong-dich-covid-19-169210914214307729.htm" target="_blank" rel="noopener" data-rel="follow">Bộ trưởng Bộ Y tế Nguyễn Thanh Long</a>&nbsp;đ&atilde; k&yacute; ban h&agrave;nh cho biết, t&igrave;nh h&igrave;nh dịch COVID-19 hiện vẫn đang diễn biến phức tạp v&agrave; c&oacute; thể k&eacute;o d&agrave;i tại nhiều địa phương, đặc biệt với biến chủng Delta c&oacute; thời gian ủ bệnh ngắn, khả năng ph&aacute;t t&aacute;n mầm bệnh cao, l&acirc;y lan nhanh ch&oacute;ng (nồng độ virus trong dịch hầu họng gấp khoảng 1000 lần so với c&aacute;c chủng SARS-CoV-2 trước).&nbsp;</p>
<figure class="VCSortableInPreviewMode">
<div><a class="detail-img-lightbox" title="Bộ trưởng Bộ Y tế Nguyễn Thanh Long chứng kiến c&aacute;n bộ y tế l&agrave;m x&eacute;t nghiệm cho người d&acirc;n đến ti&ecirc;m chủng vaccine COVID-19 tại điểm ti&ecirc;m Trịnh Ho&agrave;i Đức, TP H&agrave; Nội            (Ảnh:Trần Minh)" href="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/15/dscf0249-1-16312463308871911110081-1631684336074-1631684336263608511677.jpg" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img id="img_360636041116143616" class="lightbox-content" title="Bộ Y tế: Thực hiện gi&atilde;n c&aacute;ch x&atilde; hội theo nguy&ecirc;n tắc phạm vi nhỏ, hẹp nhất; thần tốc x&eacute;t nghiệm  - Ảnh 1." src="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/15/dscf0249-1-16312463308871911110081-1631684336074-1631684336263608511677.jpg" alt="Bộ Y tế: Thực hiện gi&atilde;n c&aacute;ch x&atilde; hội theo nguy&ecirc;n tắc phạm vi nhỏ, hẹp nhất; thần tốc x&eacute;t nghiệm  - Ảnh 1." width="" height="" data-original="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/15/dscf0249-1-16312463308871911110081-1631684336074-1631684336263608511677.jpg" /></a></div>
<figcaption class="PhotoCMS_Caption">
<p class="" data-placeholder="Nhập ch&uacute; th&iacute;ch ảnh">Bộ trưởng Bộ Y tế Nguyễn Thanh Long chứng kiến c&aacute;n bộ y tế l&agrave;m x&eacute;t nghiệm cho người d&acirc;n đến ti&ecirc;m chủng vaccine COVID-19 tại điểm ti&ecirc;m Trịnh Ho&agrave;i Đức, TP H&agrave; Nội (Ảnh:Trần Minh)</p>
</figcaption>
</figure>
<p>Trong thời gian qua, 23 tỉnh, th&agrave;nh phố đ&atilde; thực hiện gi&atilde;n c&aacute;ch, tăng cường&nbsp;<a class="link-inline-content" title="gi&atilde;n c&aacute;ch x&atilde; hội" href="https://suckhoedoisong.vn/bo-y-te-lay-y-kien-huong-dan-lo-trinh-tung-buoc-tro-lai-trang-thai-binh-thuong-moi-tai-cac-dia-phuong-dang-thuc-hien-gian-cach-xa-hoi-169210914204043959.htm" target="_blank" rel="noopener" data-rel="follow">gi&atilde;n c&aacute;ch x&atilde; hội</a>&nbsp;v&agrave; đ&atilde; đạt được một số kết quả nhất định trong việc l&agrave;m chậm tốc độ l&acirc;y lan dịch bệnh.&nbsp;</p>
<p>"Tuy nhi&ecirc;n, vẫn c&ograve;n một số tồn tại như thực hiện chưa nghi&ecirc;m việc gi&atilde;n c&aacute;ch, chưa x&aacute;c định được mục ti&ecirc;u, phạm vi, thời gian, c&aacute;c giải ph&aacute;p kiểm so&aacute;t dịch nhất l&agrave; vấn đề x&eacute;t nghiệm, dẫn đến phải thực hiện gi&atilde;n c&aacute;ch k&eacute;o d&agrave;i ảnh hưởng đến cuộc sống người d&acirc;n"- Bộ trưởng Bộ Y tế cho biết.</p>
<p>Tiếp tục thực hiện &yacute; kiến chỉ đạo của Thủ tướng Ch&iacute;nh phủ, Trưởng Ban Chỉ đạo Quốc gia ph&ograve;ng, chống dịch COVID-19, tại c&ocirc;ng điện n&agrave;y Bộ Y tế (Cơ quan Thường trực Ban Chỉ đạo Quốc gia) đề nghị đồng ch&iacute; Trưởng Ban Chỉ đạo ph&ograve;ng, chống dịch COVID-19 c&aacute;c tỉnh, th&agrave;nh phố thực hiện nghi&ecirc;m t&uacute;c c&aacute;c c&ocirc;ng điện, kết luận của Thủ tướng Ch&iacute;nh phủ v&agrave; tập trung một số nội dung, cụ thể:</p>
<h2>Thực hiện gi&atilde;n c&aacute;ch x&atilde; hội theo nguy&ecirc;n tắc ở phạm vi nhỏ nhất, hẹp nhất</h2>
<p>Khi thực hiện gi&atilde;n c&aacute;ch x&atilde; hội v&agrave; tăng cường gi&atilde;n c&aacute;ch x&atilde; hội (sau đ&acirc;y gọi l&agrave; gi&atilde;n c&aacute;ch) phải x&aacute;c định được phạm vi, quy m&ocirc; gi&atilde;n c&aacute;ch theo nguy&ecirc;n tắc ở phạm vi nhỏ nhất, hẹp nhất c&oacute; thể (th&ocirc;n, x&oacute;m, tổ, ấp, khu phố&hellip;).&nbsp;</p>
<p>Mục ti&ecirc;u của thực hiện gi&atilde;n c&aacute;ch l&agrave; phải kiểm so&aacute;t dịch nhanh nhất c&oacute; thể (trong thời gian 14 ng&agrave;y).&nbsp;</p>
<p>Triển khai quyết liệt, hiệu quả c&aacute;c biện ph&aacute;p bao gồm:</p>
<p>-Thực hiện nghi&ecirc;m việc gi&atilde;n c&aacute;ch;&nbsp;</p>
<p>-Đảm bảo lương thực thực phẩm cho người d&acirc;n, kh&ocirc;ng để thiếu ăn, thiếu mặc;&nbsp;</p>
<p>-Triển khai đồng bộ, c&oacute; hiệu quả c&aacute;c biện ph&aacute;p về y tế như&nbsp;<a class="link-inline-content" title="x&eacute;t nghiệm" href="https://suckhoedoisong.vn/bo-truong-bo-y-te-de-giam-thoi-gian-gian-cach-phai-phat-hien-bang-duoc-cac-truong-hop-lay-nhiem-trong-cong-dong-16921091015564007.htm" target="_blank" rel="noopener" data-rel="follow">x&eacute;t nghiệm</a>, điều trị, ti&ecirc;m chủng, đảm bảo người d&acirc;n được tiếp cận y tế từ sớm, từ xa, ngay từ cơ sở;&nbsp;</p>
<p>- Đảm bảo an d&acirc;n, an ninh, an to&agrave;n trật tự x&atilde; hội, đồng thời tuy&ecirc;n truyền, vận động v&agrave; huy động người d&acirc;n tham gia c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch.</p>
<h3>V&ugrave;ng đỏ, v&ugrave;ng cam phải x&eacute;t nghiệm 3 lần trong 7 ng&agrave;y</h3>
<p>Thần tốc x&eacute;t nghiệm l&agrave; then chốt, quan trọng nhằm sớm kiểm so&aacute;t dịch. Đối với c&aacute;c địa b&agrave;n nguy cơ rất cao, nguy cơ cao (v&ugrave;ng đỏ, v&ugrave;ng cam) phải x&eacute;t nghiệm to&agrave;n bộ người d&acirc;n tr&ecirc;n địa b&agrave;n 3 lần trong 7 ng&agrave;y, ưu ti&ecirc;n sử dụng x&eacute;t nghiệm kh&aacute;ng nguy&ecirc;n nhanh để b&oacute;c t&aacute;ch ngay c&aacute;c trường hợp F0 nhằm c&aacute;ch ly nguồn l&acirc;y nhiễm v&agrave; điều trị kịp thời. C&oacute; thể kết hợp x&eacute;t nghiệm kh&aacute;ng nguy&ecirc;n nhanh v&agrave; x&eacute;t nghiệm Realtime RT-PCR (RT-PCR).&nbsp;</p>
<div class="VCSortableInPreviewMode alignLeft" data-style="align-left">
<div class="kbwscwl-relatedbox type-5"><span class="kbwscwlrl-title-header">ĐỌC TH&Ecirc;M</span>
<ul class="kbwscwlr-list">
<li class="kbwscwlrl" data-date="10/09/2021 16:03" data-id="16921091015564007" data-avatar="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/9/10/dscf0249-1-16312463308871911110081-0-0-625-1000-crop-1631264194344326790130.jpg" data-url="/bo-truong-bo-y-te-de-giam-thoi-gian-gian-cach-phai-phat-hien-bang-duoc-cac-truong-hop-lay-nhiem-trong-cong-dong-16921091015564007.htm" data-title="Bộ trưởng Bộ Y tế: Để giảm thời gian gi&atilde;n c&aacute;ch phải ph&aacute;t hiện bằng được c&aacute;c trường hợp l&acirc;y nhiễm trong cộng đồng"><a class="title link-callout" href="https://suckhoedoisong.vn/bo-truong-bo-y-te-de-giam-thoi-gian-gian-cach-phai-phat-hien-bang-duoc-cac-truong-hop-lay-nhiem-trong-cong-dong-16921091015564007.htm" target="_blank" rel="nofollow noopener">Bộ trưởng Bộ Y tế: Để giảm thời gian gi&atilde;n c&aacute;ch phải ph&aacute;t hiện bằng được c&aacute;c trường hợp l&acirc;y nhiễm trong cộng đồng</a></li>
<li class="kbwscwlrl" data-date="05/09/2021 16:35" data-id="169210905162513852" data-avatar="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/9/5/anh-lonng-5-16308331713081286319205-0-0-1000-1600-crop-1630833840770126708002.jpeg" data-url="/bo-truong-bo-y-te-3-nhom-dia-phuong-thuc-hien-tieu-chi-kiem-soat-dich-covid-19-169210905162513852.htm" data-title="Bộ trưởng Bộ Y tế: 3 nh&oacute;m địa phương thực hiện ti&ecirc;u ch&iacute; kiểm so&aacute;t dịch COVID-19"><a class="title link-callout" href="https://suckhoedoisong.vn/bo-truong-bo-y-te-3-nhom-dia-phuong-thuc-hien-tieu-chi-kiem-soat-dich-covid-19-169210905162513852.htm" target="_blank" rel="nofollow noopener">Bộ trưởng Bộ Y tế: 3 nh&oacute;m địa phương thực hiện ti&ecirc;u ch&iacute; kiểm so&aacute;t dịch COVID-19</a></li>
</ul>
</div>
</div>
<p>Đối với c&aacute;c địa b&agrave;n c&ograve;n lại, thực hiện x&eacute;t nghiệm từ 5-7 ng&agrave;y/lần.&nbsp;</p>
<p>Thực hiện việc gộp mẫu theo điều kiện thực tiễn, theo hộ gia đ&igrave;nh, ph&ograve;ng ở v&agrave; c&aacute;c hộ liền kề. Khi x&eacute;t nghiệm RT-PCR phải đảm bảo trả kết quả trong thời gian 12 giờ.</p>
<p>&nbsp;Thực hiện x&eacute;t nghiệm dứt điểm theo từng địa b&agrave;n. Đảm bảo kh&ocirc;ng để l&acirc;y nhiễm ch&eacute;o khi thực hiện lấy mẫu.</p>
<p>C&ocirc;ng điện của Bộ Y tế đề nghị c&aacute;c địa phương tập trung lực lượng lấy mẫu cho c&aacute;c địa b&agrave;n nguy cơ rất cao, nguy cơ cao; chia nhỏ điểm lấy mẫu, tổ chức nhiều đội lấy mẫu; việc lấy mẫu x&eacute;t nghiệm kh&aacute;ng nguy&ecirc;n nhanh c&oacute; thể được thực hiện bởi t&igrave;nh nguyện vi&ecirc;n hoặc người d&acirc;n.</p>
<p>Khẩn trương điều động lực lượng ở c&aacute;c địa b&agrave;n đang ở mức b&igrave;nh thường mới để tập trung hỗ trợ lấy mẫu cho c&aacute;c địa b&agrave;n nguy cơ rất cao, nguy cơ cao.&nbsp;</p>
<p>Trường hợp vượt qu&aacute; khả năng, kịp thời trao đổi với c&aacute;c tỉnh, th&agrave;nh phố l&acirc;n cận để được hỗ trợ hoặc b&aacute;o c&aacute;o Ban Chỉ đạo Quốc gia.</p>
<figure class="VCSortableInPreviewMode">
<div><a class="detail-img-lightbox" title="Thần tốc x&eacute;t nghiệm l&agrave; then chốt, quan trọng nhằm sớm kiểm so&aacute;t dịch COVID-19." href="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/15/lay-mau-xet-nghiem-ha-noi-16312635793321821125484-1631684337285-1631684337423477167346.jpeg" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img id="img_360708382800072704" class="lightbox-content" title="Bộ Y tế: Thực hiện gi&atilde;n c&aacute;ch x&atilde; hội theo nguy&ecirc;n tắc phạm vi nhỏ, hẹp nhất; thần tốc x&eacute;t nghiệm  - Ảnh 3." src="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/15/lay-mau-xet-nghiem-ha-noi-16312635793321821125484-1631684337285-1631684337423477167346.jpeg" alt="Bộ Y tế: Thực hiện gi&atilde;n c&aacute;ch x&atilde; hội theo nguy&ecirc;n tắc phạm vi nhỏ, hẹp nhất; thần tốc x&eacute;t nghiệm  - Ảnh 3." width="" height="" data-original="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/15/lay-mau-xet-nghiem-ha-noi-16312635793321821125484-1631684337285-1631684337423477167346.jpeg" /></a></div>
<figcaption class="PhotoCMS_Caption">
<p data-placeholder="Nhập ch&uacute; th&iacute;ch ảnh">Thần tốc x&eacute;t nghiệm l&agrave; then chốt, quan trọng nhằm sớm kiểm so&aacute;t dịch COVID-19.</p>
</figcaption>
</figure>
<h4>Triển khai ngay c&aacute;c trạm y tế lưu động tại x&atilde;, phường, thị trấn c&oacute; nguy cơ cao, nguy cơ rất cao</h4>
<p>Bộ Y tế cũng đề nghị c&aacute;c địa phương th&agrave;nh lập v&agrave; triển khai ngay c&aacute;c&nbsp;<a class="link-inline-content" title="trạm y tế lưu động" href="https://suckhoedoisong.vn/bo-truong-bo-y-te-tang-cuong-hoat-dong-cua-cac-tram-y-te-luu-dong-tai-binh-duong-169210827111055573.htm" target="_blank" rel="noopener" data-rel="follow">trạm y tế lưu động</a>&nbsp;tại x&atilde;, phường, thị trấn c&oacute; nguy cơ cao, nguy cơ rất cao; địa điểm c&oacute; thể lựa chọn tại trường học, nh&agrave; văn h&oacute;a, khu c&ocirc;ng sở... tr&ecirc;n địa b&agrave;n theo nguy&ecirc;n tắc gần d&acirc;n nhất.&nbsp;</p>
<p>Về nh&acirc;n lực, trang thiết bị, thuốc v&agrave; hoạt động thực hiện theo c&aacute;c hướng dẫn của Bộ Y tế (Quyết định số 4042/QĐ-BYT ng&agrave;y 21/8/2021; Quyết định 4038/QĐ-BYT ng&agrave;y 21/8/2021; Quyết định 4109/QĐ-BYT ng&agrave;y 26/8/2021; Quyết định 4349/QĐ-BYT ng&agrave;y 10/9/2021). Chuẩn bị sẵn s&agrave;ng về địa điểm, trang thiết bị, nh&acirc;n lực đối với c&aacute;c x&atilde;, phường, thị trấn ở mức c&oacute; nguy cơ v&agrave; b&igrave;nh thường mới để kịp thời triển khai khi n&acirc;ng mức nguy cơ.</p>
<div id="ObjectBoxContent_1631679940977" class="VCSortableInPreviewMode alignCenter" data-back="#FFFBF2" data-border="#F2D1AA" data-text-color="#333333">
<div>
<p>Tại c&ocirc;ng điện n&agrave;y, Bộ Y tế nhấn mạnh: Thực hiện li&ecirc;n tục việc đ&aacute;nh gi&aacute; nguy cơ để quyết định việc gi&atilde;n c&aacute;ch v&agrave; nới lỏng gi&atilde;n c&aacute;ch. Việc nới lỏng gi&atilde;n c&aacute;ch phải thực hiện từng bước, chắc chắn v&agrave; phải tiếp tục x&eacute;t nghiệm tầm so&aacute;t theo hướng dẫn của Bộ Y tế.</p>
<p>&nbsp;</p>
</div>
</div>
<p>Ban Chỉ đạo ph&ograve;ng, chống dịch COVID-19 c&aacute;c tỉnh, th&agrave;nh phố khẩn trương chỉ đạo, phổ biến v&agrave; tổ chức thực hiện đến tất cả c&aacute;c quận, huyện, x&atilde;, phường, thị trấn; tăng cường kiểm tra, gi&aacute;m s&aacute;t việc thực hiện.&nbsp;</p>
<p><strong>Th&aacute;i B&igrave;nh</strong></p>', CAST(N'2021-09-17T01:49:40.620' AS DateTime), N'hinh.jpeg', N'1', 2, N'Tin Tức , CoVid , Thời Sự', NULL)
INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (15, N'Ngày 15/9: Có 10.585 ca mắc COVID-19, riêng TP HCM đã 5.301 ca', N'SKĐS - Bản tin dịch COVID-19 ngày 15/9 của Bộ Y tế cho biết có 10.585 ca mắc COVID-19, riêng TP HCM đã có đến 5.301 ca. Cũng trong ngày có 14.189 ca khỏi bệnh....', N'<h2>Th&ocirc;ng tin c&aacute;c ca mắc mới COVID-19&nbsp;&nbsp;</h2>
<p>- T&iacute;nh từ 17h ng&agrave;y 14/9 đến 17h ng&agrave;y 15/9, tr&ecirc;n Hệ thống Quốc gia quản l&yacute;&nbsp;<a class="link-inline-content" title="ca mắc COVID-19" href="https://suckhoedoisong.vn/ngay-14-9-them-10508-ca-mac-covid-19-trong-do-tp-hcm-va-binh-duong-da-gan-8500-ca-169210914182008422.htm" data-rel="follow">ca mắc COVID-19</a>&nbsp;ghi nhận 10.585 ca nhiễm mới, trong đ&oacute; 02 ca nhập cảnh v&agrave; 10.583 ca ghi nhận trong nước&nbsp;<a class="link-inline-content" title="TP HCM" href="https://suckhoedoisong.vn/ngay-13-9-co-11172-ca-mac-covid-19-tp-hcm-nhieu-nhat-voi-5446-ca-169210913182924132.htm" data-rel="follow">TP HCM</a>&nbsp;(5.301),&nbsp;<a class="link-inline-content" title="B&igrave;nh Dương" href="https://suckhoedoisong.vn/ngay-12-9-them-11478-ca-mac-covid-19-rieng-tp-hcm-va-binh-duong-ghi-nhan-gan-9350-ca-169210912180815617.htm" data-rel="follow">B&igrave;nh Dương</a>&nbsp;(3.228), Đồng Nai (808), Long An (424), Ki&ecirc;n Giang (183), Tiền Giang (93), An Giang (59), Quảng B&igrave;nh (58), Cần Thơ (53), T&acirc;y Ninh (48), Đồng Th&aacute;p (45), Kh&aacute;nh H&ograve;a (33), B&igrave;nh Định (31), B&igrave;nh Phước (27), Đắk N&ocirc;ng (26), B&igrave;nh Thuận (19), B&agrave; Rịa - Vũng T&agrave;u (18), Quảng Ng&atilde;i (15), Ph&uacute; Y&ecirc;n (14), H&agrave; Nội (14), Bạc Li&ecirc;u (13), C&agrave; Mau (10), Thừa Thi&ecirc;n Huế (10), Quảng Nam (9), Đ&agrave; Nẵng (9), Bến Tre (9), Ninh Thuận (8 ), Thanh H&oacute;a (7), Vĩnh Long (3), Hưng Y&ecirc;n (3), Nghệ An (2), L&agrave;o Cai (1), Bắc Ninh (1), L&acirc;m Đồng (1) trong đ&oacute; c&oacute; 5.823 ca trong cộng đồng.&nbsp;&nbsp;</p>
<p>&nbsp; - Như vậy trong 24h giờ qua số ca nhiễm ghi nhận trong nước tăng 87 ca. Tại TP. Hồ Ch&iacute; Minh giảm 1.011 ca, B&igrave;nh Dương tăng 1.050 ca, Đồng Nai tăng 31 ca, Long An tăng 45 ca, Ki&ecirc;n Giang tăng 26 ca.</p>
<p>- Trung b&igrave;nh số ca nhiễm mới trong nước ghi nhận trong 07 ng&agrave;y qua: 11.621 ca/ng&agrave;y.</p>
<figure class="VCSortableInPreviewMode noCaption">
<div><a class="detail-img-lightbox" title="" href="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/9/15/ca-moi-toi-15-16317072839871660392253.jpeg" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img id="img_362569421180055552" class="lightbox-content" style="width: 750px; height: 600px;" src="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/9/15/ca-moi-toi-15-16317072839871660392253.jpeg" alt="Ng&agrave;y 15/9: C&oacute; 10.585 ca mắc COVID-19, ri&ecirc;ng TP HCM đ&atilde; 5.301 ca - Ảnh 2." data-original="https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/9/15/ca-moi-toi-15-16317072839871660392253.jpeg" /></a></div>
</figure>
<h2>&nbsp;T&igrave;nh h&igrave;nh dịch COVID-19 tại Việt Nam:</h2>
<p>- Kể từ đầu dịch đến nay Việt Nam c&oacute; 645.640 ca nhiễm, đứng thứ 47/222 quốc gia v&agrave; v&ugrave;ng l&atilde;nh thổ, trong khi với tỷ lệ số ca nhiễm/1 triệu d&acirc;n, Việt Nam đứng thứ 156/222 quốc gia v&agrave; v&ugrave;ng l&atilde;nh thổ (b&igrave;nh qu&acirc;n cứ 1 triệu người c&oacute; 6.562 ca nhiễm).</p>
<p>- Đợt dịch thứ 4 (từ ng&agrave;y 27/4/2021 đến nay):</p>
<p>+ Số ca nhiễm mới ghi nhận trong nước là 641.244 ca, trong đ&oacute; c&oacute; 409.876 bệnh nh&acirc;n đ&atilde; được c&ocirc;ng bố khỏi bệnh.</p>
<p>+ Có 14/62 tỉnh, th&agrave;nh phố đ&atilde; qua 14 ng&agrave;y kh&ocirc;ng ghi nhận trường hợp nhiễm mới trong nước: Bắc Kạn, Tuy&ecirc;n Quang, Lai Ch&acirc;u, Ho&agrave; B&igrave;nh, Y&ecirc;n B&aacute;i, H&agrave; Giang, Th&aacute;i Nguy&ecirc;n, Điện Bi&ecirc;n, Vĩnh Ph&uacute;c, Hải Ph&ograve;ng, Hải Dương, H&agrave; Nam, Ph&uacute; Thọ, Ninh B&igrave;nh.</p>
<p>+ C&oacute; 04 tỉnh, th&agrave;nh phố kh&ocirc;ng c&oacute; ca l&acirc;y nhiễm thứ ph&aacute;t tr&ecirc;n địa b&agrave;n trong 14 ng&agrave;y qua: Th&aacute;i B&igrave;nh, Kon Tum, Quảng Ninh, L&agrave;o Cai.</p>
<p>+ 05 tỉnh, th&agrave;nh phố ghi nhận số mắc cao l&agrave; TP. Hồ Ch&iacute; Minh (315.088), B&igrave;nh Dương (166.075), Đồng Nai (37.169), Long An (29.289), Tiền Giang (12.561).</p>
<h4>T&igrave;nh h&igrave;nh điều trị bệnh nh&acirc;n COVID-19</h4>
<p>1. Số bệnh nh&acirc;n khỏi bệnh:</p>
<p>- Bệnh nh&acirc;n được c&ocirc;ng bố khỏi bệnh trong ng&agrave;y: 14.189</p>
<p>- Tổng số ca được điều trị khỏi: 412.650</p>
<p>2. Theo thống k&ecirc; sơ bộ, số bệnh nh&acirc;n nặng đang điều trị l&agrave; 6.008 ca, trong đ&oacute;:</p>
<p>- Thở &ocirc; xy qua mặt nạ: 3.855</p>
<p>- Thở &ocirc; xy d&ograve;ng cao HFNC: 1.113</p>
<p>- Thở m&aacute;y kh&ocirc;ng x&acirc;m lấn: 127</p>
<p>- Thở m&aacute;y x&acirc;m lấn: 877</p>
<p>- ECMO: 36</p>
<p>3. Số bệnh nh&acirc;n tử vong:</p>
<p>- Trong ng&agrave;y, tổng hợp số liệu tử vong do c&aacute;c Sở Y tế c&ocirc;ng bố tr&ecirc;n cdc. kcb. vn ghi nhận 250 ca tử vong tại TP. Hồ Ch&iacute; Minh (189), B&igrave;nh Dương (42), Đồng Nai (4), Long An (4), Đồng Th&aacute;p (3), T&acirc;y Ninh (2), Ph&uacute; Y&ecirc;n (1), Tr&agrave; Vinh (1), Gia Lai (1), An Giang (1), Kh&aacute;nh H&ograve;a (1), B&agrave; Rịa - Vũng T&agrave;u (1).</p>
<p>- Trung b&igrave;nh số tử vong ghi nhận trong 07 ng&agrave;y qua: 261 ca.</p>
<p>- Tổng số ca tử vong do COVID-19 tại Việt Nam t&iacute;nh đến nay l&agrave; 16.186 ca, chiếm tỷ lệ 2,5% so với tổng số ca mắc v&agrave; cao hơn 0,4 điểm phần trăm so với tỷ lệ tử vong do COVID-19 tr&ecirc;n thế giới (2,1%).</p>
<h2><strong>T&igrave;nh h&igrave;nh x&eacute;t nghiệm</strong></h2>
<p>- Trong 24 giờ qua đ&atilde; thực hiện 240.194 x&eacute;t nghiệm cho 718.063 lượt người.</p>
<p>- Số lượng x&eacute;t nghiệm từ 27/4/2021 đến nay đ&atilde; thực hiện 15.753.091 mẫu cho 45.813.130 lượt người.</p>
<h2>T&igrave;nh h&igrave;nh ti&ecirc;m chủng vaccine COVID-19</h2>
<p>Trong ng&agrave;y 14/9 c&oacute; 866.668 liều&nbsp;<a class="link-inline-content" title="vaccine COVID-19" href="https://suckhoedoisong.vn/gan-272-trieu-lieu-vaccine-covid-19-da-duoc-tiem-chung-tai-viet-nam-169210911081940879.htm" data-rel="follow">vaccine COVID-19</a>&nbsp;được ti&ecirc;m. Như vậy, tổng số liều vaccine đ&atilde; được ti&ecirc;m l&agrave; 31.254.856 liều, trong đ&oacute; ti&ecirc;m 1 mũi l&agrave; 25.420.169 liều, ti&ecirc;m mũi 2 l&agrave; 5.834.687 liều.</p>
<div id="ObjectBoxContent_1631707405078" class="VCSortableInPreviewMode alignCenter" data-back="#FFFBF2" data-border="#F2D1AA" data-text-color="#333333">
<div class="">
<p><strong>Số ca mắc COVID-9 trên thế giới t&iacute;nh đến tối ng&agrave;y 15/9:</strong></p>
<p>- Cả thế giới có 226.773.186 ca nhiễm, trong đó 203.543.744 khỏi bệnh; 4.665.306 tử vong và 18.564.136 đang điều trị (102.087 ca diễn biến nặng).</p>
<p>- Trong ng&agrave;y số ca nhiễm của thế giới tăng 143.574 ca, tử vong tăng 3.619 ca.</p>
<p>- Ch&acirc;u &Acirc;u tăng 45.085 ca; Bắc Mỹ tăng 14.390 ca; Nam Mỹ tăng 340 ca; ch&acirc;u &Aacute; tăng 80.538 ca; ch&acirc;u Phi tăng 1.459 ca; ch&acirc;u Đại Dương tăng 1.762 ca.</p>
<p>- Tại Đông Nam Á, trong ngày ghi nhận 35.682 ca, trong đó: Indonesia tăng 3.948 ca, Th&aacute;i Lan tăng 13.798 ca, Philippines tăng 16.989 ca, Campuchia tăng 653 ca, L&agrave;o tăng 223 ca, Đ&ocirc;ng Timor tăng 71 ca.</p>
</div>
</div>', CAST(N'2021-09-25T19:22:42.937' AS DateTime), N'13.jpeg', N'1', 2, N'Thời sự', N'Trần Thanh Quang')
INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (16, N'Bộ Y tế hoả tốc yêu cầu thực hiện tiêm chủng vaccine COVID-19 theo đúng hướng dẫn', N'Gần đây, Bộ Y tế nhận được thông tin phản ánh một số cơ sở tiêm chủng có tiêm vaccine phòng COVID-19 cho trẻ em dưới 18 tuổi và kết hợp 2 loại vaccine không theo hướng dẫn của Bộ Y tế.', N'<h2>Kh&ocirc;ng ti&ecirc;m vaccine COVID-19 cho đối tượng ngo&agrave;i hướng dẫn</h2>
<p>Ng&agrave;y 16/9, Bộ Y tế đ&atilde; c&oacute; văn bản hoả tốc số 7717/BYT- DP gửi Sở Y tế c&aacute;c tỉnh, th&agrave;nh phố trong cả nước về việc thực hiện nghi&ecirc;m c&ocirc;ng t&aacute;c&nbsp;<a class="link-inline-content" title="ti&ecirc;m chủng" href="https://suckhoedoisong.vn/lam-gi-khi-da-tiem-vaccine-covid-19-nhung-khong-co-thong-tin-tren-cong-thong-tin-tiem-chung-169210912080539438.htm" target="_blank" rel="noopener" data-rel="follow">ti&ecirc;m chủng</a>.</p>
<p>Văn bản do Thứ trưởng Bộ Y tế Đỗ Xu&acirc;n Tuy&ecirc;n k&yacute; ban h&agrave;nh cho biết, thực hiện chỉ đạo của Ch&iacute;nh phủ, Thủ tướng Ch&iacute;nh phủ, Bộ Y tế, c&aacute;c tỉnh, th&agrave;nh phố đ&atilde; t&iacute;ch cực, chủ động đẩy nhanh tiến độ ti&ecirc;m chủng theo hướng dẫn của Bộ Y tế.&nbsp;</p>
<figure class="VCSortableInPreviewMode">
<div><a class="detail-img-lightbox" title="Ti&ecirc;m vaccine COVID-19 cho người d&acirc;n tại điểm ti&ecirc;m chủng 22 Đặng Tiến Đ&ocirc;ng, Quận Đống Đa, TP H&agrave; Nội. Ảnh: Th&aacute;i B&igrave;nh" href="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/16/tiem-vaccine-ha-noi-1631778893404298750879-1631784273608-16317842781061656872156.jpg" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img id="img_362869771036594176" class="lightbox-content" style="width: 750px; height: 600px;" title="   - Ảnh 1." src="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/16/tiem-vaccine-ha-noi-1631778893404298750879-1631784273608-16317842781061656872156.jpg" alt="   - Ảnh 1." data-original="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/16/tiem-vaccine-ha-noi-1631778893404298750879-1631784273608-16317842781061656872156.jpg" /></a></div>
<figcaption class="PhotoCMS_Caption">
<p data-placeholder="Nhập ch&uacute; th&iacute;ch ảnh">Ti&ecirc;m vaccine COVID-19 cho người d&acirc;n tại điểm ti&ecirc;m chủng 22 Đặng Tiến Đ&ocirc;ng, Quận Đống Đa, TP H&agrave; Nội. Ảnh: Th&aacute;i B&igrave;nh</p>
</figcaption>
</figure>
<p>Tuy nhi&ecirc;n gần đ&acirc;y, Bộ Y tế nhận được th&ocirc;ng tin phản &aacute;nh một số cơ sở ti&ecirc;m chủng c&oacute;&nbsp;<a class="link-inline-content" title="ti&ecirc;m vaccine &nbsp;ph&ograve;ng COVID-19 cho trẻ em dưới 18 tuổi" href="https://suckhoedoisong.vn/bo-truong-bo-y-te-ky-vong-den-ngay-15-9-100-nguoi-tren-18-tuoi-o-ha-noi-se-duoc-tiem-vaccine-169210910111751557.htm" target="_blank" rel="noopener" data-rel="follow">ti&ecirc;m vaccine ph&ograve;ng COVID-19 cho trẻ em dưới 18 tuổi</a>&nbsp;v&agrave;&nbsp;<a class="link-inline-content" title="kết hợp 02 loại vaccine" href="https://suckhoedoisong.vn/bo-y-te-de-nghi-cac-tinh-thanh-xem-xet-tiem-tron-vaccine-covid-19-moderna-va-pfizer-16921091019274913.htm" target="_blank" rel="noopener" data-rel="follow">kết hợp 02 loại vaccine</a>&nbsp;kh&ocirc;ng theo hướng dẫn của Bộ Y tế.&nbsp;</p>
<p>Điều n&agrave;y c&oacute; thể ảnh hưởng đến t&iacute;nh thống nhất trong việc chỉ đạo, điều h&agrave;nh v&agrave; thực hiện chiến lược ti&ecirc;m chủng của Việt Nam. Để thực hiện nghi&ecirc;m chỉ đạo của Ch&iacute;nh phủ, Thủ tướng Ch&iacute;nh phủ; Bộ Y tế đề nghị Sở Y tế tỉnh, th&agrave;nh phố trực thuộc Trung ương thực hiện c&aacute;c nội dung cụ thể sau:</p>
<p>Tiếp tục chỉ đạo c&aacute;c cơ sở ti&ecirc;m chủng tổ chức ti&ecirc;m chủng cho tất cả c&aacute;c trường hợp từ 18 tuổi trở l&ecirc;n theo quy định tại Nghị quyết số 21/NQ-CP ng&agrave;y 26/2/2021 của Ch&iacute;nh phủ về việc mua v&agrave; sử dụng vaccine ph&ograve;ng COVID-19, Quyết định số 3355/QĐ-BYT ng&agrave;y 08/7/2021 của Bộ Y tế về việc ban h&agrave;nh Kế hoạch triển khai chiến dịch ti&ecirc;m vaccine ph&ograve;ng COVID-19 năm 2021-2022.</p>
<p><em>Kh&ocirc;ng ti&ecirc;m cho lứa tuổi ngo&agrave;i hướng dẫn của Bộ Y tế,&nbsp;</em><a class="link-inline-content" title="trong trường hợp c&oacute; điều chỉnh về lứa tuổi ti&ecirc;m vaccine ph&ograve;ng COVID-19, Bộ Y tế sẽ c&oacute; hướng dẫn sau" href="https://suckhoedoisong.vn/bo-y-te-tra-loi-ve-viec-tiem-vaccine-phong-covid-19-cho-hoc-sinh-trung-hoc-pho-thong-169210906162056337.htm" target="_blank" rel="noopener" data-rel="follow">trong trường hợp c&oacute; điều chỉnh về lứa tuổi ti&ecirc;m vaccine ph&ograve;ng COVID-19, Bộ Y tế sẽ c&oacute; hướng dẫn sau</a><em>.</em></p>
<h3>Tạm dừng hoặc đ&igrave;nh chỉ c&aacute;c hoạt động ti&ecirc;m chủng vaccine COVID-19 nếu vi phạm c&aacute;c quy định chuy&ecirc;n m&ocirc;n</h3>
<p>Đồng thời Bộ Y tế y&ecirc;u cầu Sở Y tế c&aacute;c tỉnh, th&agrave;nh phố chỉ đạo, hướng dẫn cơ sở ti&ecirc;m chủng tr&ecirc;n địa b&agrave;n sử dụng kết hợp 02 liều vaccine ph&ograve;ng COVID-19 theo đ&uacute;ng hướng dẫn tại C&ocirc;ng văn số 6030/BYT-DP ng&agrave;y 27/7/2021 v&agrave; C&ocirc;ng văn số 7548/BYT-DP ng&agrave;y 10/9/2021 của Bộ Y tế về ti&ecirc;m 02 liều vaccine ph&ograve;ng COVID-19.&nbsp;</p>
<p>Nếu c&oacute; c&aacute;c c&aacute;ch kết hợp vaccine kh&aacute;c, Bộ Y tế sẽ c&oacute; hướng dẫn sau.</p>
<p>C&aacute;c địa phương cũng cần đẩy nhanh hơn nữa tiến độ ti&ecirc;m chủng, thực hiện kiểm tra c&aacute;c cơ sở ti&ecirc;m chủng, điểm ti&ecirc;m chủng tr&ecirc;n địa b&agrave;n để kịp thời hướng dẫn, chỉ đạo c&aacute;c đơn vị thực hiện nghi&ecirc;m t&uacute;c c&aacute;c quy định.</p>
<p>Tạm dừng hoặc đ&igrave;nh chỉ c&aacute;c hoạt động ti&ecirc;m chủng nếu vi phạm c&aacute;c quy định chuy&ecirc;n m&ocirc;n, xảy ra sai s&oacute;t v&agrave; xử l&yacute; theo quy định.</p>
<p>Bộ Y tế đề nghị Sở Y tế tỉnh, th&agrave;nh phố khẩn trương triển khai thực hiện.</p>
<p>Theo dữ liệu của Cổng th&ocirc;ng tin ti&ecirc;m chủng quốc gia, đến trưa 16/9, Việt Nam đ&atilde; thực hiện được 32,375,467 mũi&nbsp;<a title="vaccine COVID-19" href="https://suckhoedoisong.vn/trua-13-9-da-tiem-chung-hon-293-trieu-lieu-vaccine-covid-19-tp-hcm-yeu-cau-khong-de-nhan-vien-y-te-lam-viec-lien-tuc-thoi-gian-dai-169210913124329772.htm" target="_blank" rel="nofollow noopener">vaccine COVID-19</a>. Trước đ&oacute;, trong 5 ng&agrave;y li&ecirc;n tiếp (từ 9-13/9), mỗi ng&agrave;y đều c&oacute; hơn 1 triệu mũi ti&ecirc;m được thực hiện.</p>
<p>10 địa phương c&oacute; tỷ lệ ti&ecirc;m vaccine cao nhất (số mũi ti&ecirc;m/số vaccine được cấp theo quyết định) cập nhật đến trưa 16/9 l&agrave; Bắc Ninh, L&agrave;o Cai, Đồng Th&aacute;p, Cao Bằng, Ninh Thuận, Kon Tum, Vĩnh Long, Đắk Lắk, Ninh Thuận v&agrave; B&igrave;nh Phước.</p>
<p>10 địa phương c&oacute; tỷ lệ ti&ecirc;m vaccine thấp nhất (số mũi ti&ecirc;m/số vaccine được cấp theo quyết định) cập nhật đến trưa 16/9 l&agrave; Nghệ An, Hưng Y&ecirc;n, H&agrave; Tĩnh, Nam Định, T&acirc;y Ninh, Quảng Ng&atilde;i, Đ&agrave; Nẵng, Ph&uacute; Y&ecirc;n, Quảng Nam v&agrave; Tiền Giang.</p>
<p>Đến nay, Việt Nam đ&atilde; tiếp nhận hơn 38 triệu liều vaccine COVID-19 c&aacute;c loại kh&aacute;c nhau, trong đ&oacute; nhiều nhất l&agrave; vaccine AstraZeneca.&nbsp;</p>', CAST(N'2021-09-25T19:24:09.630' AS DateTime), N'hinh2.jpg', N'2', 1, N'Chỉ đạo chống dịch', N'null')
INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (17, N'4 người trong một gia đình cùng lúc phát hiện dương tính, Hà Nội thêm 12 ca COVID-19 mới', N'Với việc ghi nhận thêm 1 ca dương tính, ổ dịch ở Thanh Liệt, Thanh Trì đã có tổng 19 người nhiễm. 1 gia đình 4 người ở TT Cao su sao vàng Nguyễn Trãi vừa nhận kết quả mắc COVID-19.', N'<p>Sở Y tế H&agrave; Nội trưa 16/9 cho biết trong s&aacute;ng nay TP ghi nhận 12&nbsp;<a class="seo-suggest-link" title="ca covid-19" href="https://giadinh.net.vn/ca-covid-19.tag" target="_blank" rel="nofollow noopener">ca COVID-19</a>&nbsp;mới trong đ&oacute; c&oacute; 11 ca tại khu c&aacute;ch ly, 1 ca khu vực phong tỏa. Như vậy t&iacute;nh từ 18h ng&agrave;y 15/9 đến 12h ng&agrave;y 16/9 H&agrave; Nội c&oacute; 13 ca dương t&iacute;nh.</p>
<p>Trong 12 ca mới, c&oacute; 7 ca tại quận Thanh Xu&acirc;n, huyện Thường T&iacute;n, Thanh Tr&igrave;, H&agrave; Đ&ocirc;ng, Ba Đ&igrave;nh v&agrave; Ho&agrave;n Kiếm mỗi quận/huyện th&ecirc;m 1 ca.</p>
<p><strong>7 ca mới ở quận Thanh Xu&acirc;n</strong>&nbsp;đều ở phường Thanh Xu&acirc;n Trung, trong đ&oacute; c&oacute; 4 người c&ugrave;ng nh&agrave; ở Tập thể Cao su sao v&agrave;ng G1 Nguyễn Tr&atilde;i; 2 người ở ng&otilde; 330 Nguyễn Tr&atilde;i v&agrave; 1 người ở ng&otilde; 328 Nguyễn Tr&atilde;i. Họ đều được c&aacute;ch ly tập trung từ cuối th&aacute;ng 8 v&agrave; đầu th&aacute;ng 9.</p>
<p>Đến nay,&nbsp;<a class="seo-suggest-link" title="ổ dịch phường thanh xu&acirc;n trung" href="https://giadinh.net.vn/o-dich-phuong-thanh-xuan-trung.tag" target="_blank" rel="nofollow noopener">ổ dịch phường Thanh Xu&acirc;n Trung</a>&nbsp;(tập trung chủ yếu ở ng&otilde; 326, 328, 330, 332 Nguyễn Tr&atilde;i) đ&atilde; c&oacute; 579 ca mắc, t&iacute;nh từ khi ph&aacute;t hiện ca đầu ti&ecirc;n h&ocirc;m 23/8.</p>
<p><strong>Ổ dịch ở Thanh Liệt, Thanh Tr&igrave;</strong>&nbsp;tăng l&ecirc;n 19 ca, trong đ&oacute; trưa nay ph&aacute;t hiện chị T.T.T, 39 tuổi. Đ&acirc;y l&agrave; bệnh nh&acirc;n sống trong khu vục phong tỏa từ ng&agrave;y 2/9, đ&atilde; được x&eacute;t nghiệm &acirc;m t&iacute;nh. Ng&agrave;y 14/9 chị được lấy mẫu x&eacute;t nghiệm, kết quả dương t&iacute;nh.</p>
<p>Cộng dồn số mắc tại H&agrave; Nội trong đợt dịch 4 (từ ng&agrave;y 27/4 đến nay) l&agrave; 3.869 ca trong đ&oacute; số mắc ghi nhận ngo&agrave;i cộng đồng 1.596 ca, số mắc l&agrave; đối tượng đ&atilde; được c&aacute;ch ly 2.273 ca.</p>
<p><img style="width: 800px; height: 600px; display: block; margin-left: auto; margin-right: auto;" src="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/16/anh-chup-man-hinh-2021-09-14-luc-105608-1631769517993615918597-1631772945731-1631772946082458163883.png" /></p>
<p><strong>Shipper v&agrave; giấy đi đường quy định thế n&agrave;o khi 19 quận, huyện được b&aacute;n h&agrave;ng ăn uống mang về?</strong></p>
<p>S&aacute;ng 16/9, &ocirc;ng L&ecirc; Hồng Sơn, Ph&oacute; Chủ tịch Thường trực UBND H&agrave; Nội, cho biết TP đ&atilde; giao c&aacute;c sở ng&agrave;nh li&ecirc;n quan c&oacute; văn bản hướng dẫn cụ thể c&aacute;c đơn vị quản l&yacute; người giao h&agrave;ng (shipper) v&agrave; doanh nghiệp cung cấp dịch vụ chuyển h&agrave;ng tr&ecirc;n địa b&agrave;n nhằm tạo điều kiện cho shipper hoạt động khi một số dịch vụ được cho ph&eacute;p trở lại.</p>
<p>Tuy nhi&ecirc;n, shipper thuộc nh&oacute;m nguy cơ cao, n&ecirc;n vẫn phải &aacute;p dụng c&aacute;c điều kiện cụ thể để c&oacute; thể hoạt động. Theo đ&oacute;, họ phải c&oacute; 2 mũi ti&ecirc;m vaccine, được x&eacute;t nghiệm thường xuy&ecirc;n v&agrave; phải dưới sự quản l&yacute; trực tiếp của doanh nghiệp. Trước mắt l&agrave; tạo cơ chế để shipper của doanh nghiệp được hoạt động, c&ograve;n shipper tự do hoặc shipper kh&ocirc;ng c&oacute; đầu mối th&igrave; phải từng bước.</p>
<p>Cũng theo &ocirc;ng Sơn, sau khi TP quyết định nới lỏng một số hoạt động ph&ograve;ng chống dịch tr&ecirc;n địa b&agrave;n, việc kiểm tra, kiểm so&aacute;t giấy đi đường sẽ được điều chỉnh theo hướng thuận tiện hơn cho người d&acirc;n. H&agrave; Nội sẽ tạo điều kiện để đ&aacute;p ứng nhu cầu của người d&acirc;n như mua đồ online, đồ ăn, uống mang về ở một số quận, huyện được cho ph&eacute;p.</p>
<p>Trước đ&oacute;, tối 15/9, Sở Y tế H&agrave; Nội đ&atilde; c&oacute; thống k&ecirc; về danh s&aacute;ch quận, huyện kh&ocirc;ng ghi nhận ca mắc ngo&agrave;i cộng đồng từ ng&agrave;y 6/9 đến nay c&oacute; thể được mở lại một số hoạt động kinh doanh từ 12 giờ ng&agrave;y 16/9.</p>
<p>Theo đ&oacute;, 19 quận, huyện, thị x&atilde; đ&aacute;p ứng điều kiện gồm: Ba Đ&igrave;nh, Ba V&igrave;, Bắc Từ Li&ecirc;m, Cầu Giấy, Đan Phượng, Gia L&acirc;m, Ho&agrave;i Đức, Long Bi&ecirc;n, M&ecirc; Linh, Mỹ Đức, Nam Từ Li&ecirc;m, Ph&uacute;&nbsp;Xuy&ecirc;n, Ph&uacute;c Thọ, Quốc Oai, S&oacute;c Sơn, Sơn T&acirc;y, Thanh Oai, Ứng H&ograve;a v&agrave; T&acirc;y Hồ.</p>', CAST(N'2021-09-24T22:50:40.140' AS DateTime), N'hinh3.png', N'2', 2, N'Thời sự', N'null')
INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (18, N'Video chỉ dẫn dinh dưỡng cho F0, F1 tại nhà', N'Khi thực hiện cách ly và điều trị tại nhà, F0 và F1 nguy cơ cao cần có một chế độ dinh dưỡng phù hợp và khoa học để tăng sức đề kháng, nhanh chóng hồi phục sức khỏe.', N'<h2 class="detail-sapo" style="text-align: center;" data-role="sapo"><iframe src="//www.youtube.com/embed/-2ZduPnLdWE" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></h2>
<h2 class="detail-sapo" data-role="sapo">Khi thực hiện c&aacute;ch ly v&agrave; điều trị tại nh&agrave;, F0 v&agrave; F1 nguy cơ cao cần c&oacute; một chế độ dinh dưỡng ph&ugrave; hợp v&agrave; khoa học để tăng sức đề kh&aacute;ng, nhanh ch&oacute;ng hồi phục sức khỏe.</h2>
<div class="detail-content afcbc-body" data-role="content">
<p>Trong video Chỉ dẫn dinh dưỡng tại nh&agrave;, b&aacute;c sỹ Đỗ Do&atilde;n B&aacute;ch đến từ Mạng lưới Thầy thuốc Đồng h&agrave;nh đưa ra 04 chỉ dẫn dinh dưỡng:</p>
<ol class="bi6gxh9e aov4n071 fjf4s8hc gg216y78">
<ol class="bi6gxh9e aov4n071 fjf4s8hc gg216y78">1. Chế độ dinh dưỡng đảm bảo nguy&ecirc;n tắc c&acirc;n đối v&agrave; đầy đủ dinh dưỡng.</ol>
</ol>
<p>&nbsp;</p>
<p>2. Đảm bảo đa dạng thực phẩm hỗ trợ tăng cường hệ miễn dịch.</p>
<p>3. Uống đủ nước theo nhu cầu v&agrave; đ&uacute;ng c&aacute;ch.</p>
<p>4. Hạn chế thức ăn chi&ecirc;n x&agrave;o, nhiều dầu mỡ, thực phẩm chế biến sẵn như đồ hộp, mỳ t&ocirc;m.</p>
<p>&nbsp;</p>
<p>"Chỉ dẫn dinh dưỡng tại nh&agrave;" l&agrave; video thứ 2 được ph&aacute;t h&agrave;nh thuộc chuỗi video Hướng dẫn y tế d&agrave;nh cho F0 v&agrave; F1 nguy cơ cao được phối hợp thực hiện bởi Bộ Y Tế v&agrave; Mạng lưới Thầy thuốc Đồng h&agrave;nh do Hội Thầy thuốc trẻ Việt Nam v&agrave; Tổ Th&ocirc;ng tin Đ&aacute;p ứng nhanh&nbsp;Ph&ograve;ng chống COVID-19.</p>
</div>', CAST(N'2021-09-17T03:02:43.497' AS DateTime), N'hinh4.png', N'2', 3, N'Hướng dẫn', N'<iframe width="550" height="315" src="https://www.youtube.com/embed/-2ZduPnLdWE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (19, N'Theo chân Đội y tế lưu động hỗ trợ F0 điều trị tại nhà', N'Trạm y tế lưu động số 31 tại Quận 7, TP HCM chỉ có 3 thành viên chính thế nhưng quản lý đến 300 F0 điều trị tại nhà.....', N'<h2 class="detail-sapo" style="text-align: left;" data-role="sapo">Theo ch&acirc;n Đội y tế lưu động hỗ trợ F0 điều trị tại nh&agrave;</h2>
<h3 class="detail-sapo" style="text-align: center;" data-role="sapo"><iframe src="//www.youtube.com/embed/dYl7QL1MB5w" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></h3>
<h3 class="detail-sapo" data-role="sapo">Trạm y tế lưu động số 31 tại Quận 7, TP HCM chỉ c&oacute; 3 th&agrave;nh vi&ecirc;n ch&iacute;nh thế nhưng quản l&yacute; đến 300 F0 điều trị tại nh&agrave;. H&agrave;ng ng&agrave;y, ngo&agrave;i việc test nhanh cho shipper v&agrave; trực cấp cứu, c&aacute;c th&agrave;nh vi&ecirc;n trong đội phải chia nhau đi kiểm tra, tư vấn v&agrave; ph&aacute;t thuốc cho người bệnh, c&ocirc;ng việc li&ecirc;n tục từ s&aacute;ng đến đ&ecirc;m.</h3>
<div class="detail-content afcbc-body" data-role="content">
<h3 style="text-align: right;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Đức Duy - Bảo Loan (Từ TP Hồ Ch&iacute; Minh)</h3>
</div>', CAST(N'2021-09-19T20:03:37.833' AS DateTime), N'hinh6.png', N'3', 3, N'Video, Hướng dẫn', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/dYl7QL1MB5w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (21, N'Bình Dương: F0 khỏi bệnh ở lại tình nguyện chống dịch', N'Nhiều F0 sau khi khỏi bệnh tình nguyện ở lại hỗ trợ công tác phòng chống dịch...', N'<p style="text-align: center;"><iframe src="//www.youtube.com/embed/eRq73ZhaZD0" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></p>
<h3 class="detail-sapo" data-role="sapo">Nhiều F0 sau khi khỏi bệnh t&igrave;nh nguyện ở lại hỗ trợ c&ocirc;ng t&aacute;c ph&ograve;ng chống dịch.</h3>
<p>Tỉnh B&igrave;nh Dương đang đi v&agrave;o giai đoạn "nước r&uacute;t" trong c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch Covid-19, đến chiều 16/9, to&agrave;n tỉnh c&oacute; gần 128.000 bệnh nh&acirc;n được điều trị khỏi. Nhiều F0 sau khi khỏi bệnh t&igrave;nh nguyện ở lại hỗ trợ c&ocirc;ng t&aacute;c ph&ograve;ng chống dịch. Hầu hết c&aacute;c F0 l&agrave; c&aacute;n bộ vi&ecirc;n chức, chiến sĩ c&ocirc;ng an, qu&acirc;n đội... đều t&igrave;nh nguyện ở lại để hỗ trợ bệnh nh&acirc;n c&oacute; c&ugrave;ng cảnh ngộ. Chủ tịch UBND tỉnh B&igrave;nh Dương V&otilde; Văn Minh cho biết: "F0 khỏi bệnh t&igrave;nh nguyện ở lại hỗ trợ c&ocirc;ng t&aacute;c ph&ograve;ng chống dịch, vừa được chăm s&oacute;c tốt hơn về ph&ograve;ng trọ, vừa c&oacute; thu nhập 7-8 triệu đồng/th&aacute;ng&rdquo;. B&ecirc;n cạnh đ&oacute;, với những bệnh nh&acirc;n l&agrave; c&ocirc;ng nh&acirc;n lao động tự do sau khi xuất viện cũng kh&ocirc;ng thể về ph&ograve;ng trọ. &Ocirc;ng Minh cũng cho biết th&ecirc;m: &ldquo;Tỉnh lu&ocirc;n hoan ngh&ecirc;nh v&agrave; tiếp nhận tất cả F0 khỏi bệnh t&igrave;nh nguyện ở lại bệnh viện d&atilde; chiến hỗ trợ c&ocirc;ng t&aacute;c ph&ograve;ng chống dịch&rdquo;.</p>', CAST(N'2021-09-19T20:21:31.237' AS DateTime), N'dev.jpg', N'4', 3, N'Video', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/eRq73ZhaZD0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (22, N'Hội đồng Đạo đức: Chưa có dữ liệu để đánh giá trực tiếp hiệu lực bảo vệ của vaccine Nanocovax', N'Sau cuộc họp chiều 18/9, Hội đồng Đạo đức cho biết đến thời điểm hiện tại vẫn chưa có dữ liệu để đánh giá trực tiếp hiệu lực bảo vệ của ứng viên vaccine Nanocovax dựa trên số trường hợp mắc COVID-19 trong nghiên cứu.', N'<p>S&aacute;ng 19/9, Hội đồng đạo đức trong nghi&ecirc;n cứu y sinh học Quốc gia (Hội đồng đạo đức) ph&aacute;t đi th&ocirc;ng tin cho biết, chiều ng&agrave;y 18/9,&nbsp;Hội đồng Đạo đức&nbsp; đ&atilde; họp khẩn cấp để đ&aacute;nh gi&aacute; kết quả giữa kỳ thử nghiệm l&acirc;m s&agrave;ng (TNLS) giai đoạn 3 ứng vi&ecirc;n&nbsp;<a class="link-inline-content" title="vaccine Nanocovax" href="https://suckhoedoisong.vn/thu-truong-bo-y-te-noi-gi-khi-mot-so-tinh-xin-tiem-thu-nghiem-vaccine-nano-covax-so-luong-lon-cho-dan-169210803144542934.htm" target="_blank" rel="noopener" data-rel="follow">vaccine Nanocovax</a>&nbsp;với kết quả nghi&ecirc;n cứu t&iacute;nh đến ng&agrave;y 2/9/2021.&nbsp;</p>
<p>C&ugrave;ng dự họp c&oacute; th&ecirc;m chuy&ecirc;n gia của Hội đồng Tư vấn cấp giấy đăng k&yacute; lưu h&agrave;nh thuốc, nguy&ecirc;n liệu l&agrave;m thuốc (Hội đồng Tư vấn).</p>
<figure class="VCSortableInPreviewMode small-img">
<div><a class="detail-img-lightbox" title="Vaccine Nanocovax" href="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/19/nano-covax-16301327368811366128341-163195641988794101930-1632028014952-16320280157421996637929.jpeg" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img id="img_363614370308784128" class="lightbox-content" style="width: 750px; height: 600px;" title="Vaccine - Ảnh 1." src="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/19/nano-covax-16301327368811366128341-163195641988794101930-1632028014952-16320280157421996637929.jpeg" alt="Vaccine - Ảnh 1." data-original="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/19/nano-covax-16301327368811366128341-163195641988794101930-1632028014952-16320280157421996637929.jpeg" /></a></div>
<figcaption class="PhotoCMS_Caption">
<p class="" data-placeholder="Nhập ch&uacute; th&iacute;ch ảnh">Vaccine Nanocovax</p>
</figcaption>
</figure>
<h2>Cần tiếp tục thực hiện đ&aacute;nh gi&aacute; về hiệu lực bảo vệ theo đề cương được ph&ecirc; duyệt của vaccine Nanocovax</h2>
<p>Tr&ecirc;n cơ sở hồ sơ nộp ng&agrave;y 15/9/2021, cập nhật ng&agrave;y 17/9/2021, sau khi nghe b&aacute;o c&aacute;o, &yacute; kiến của c&aacute;c th&agrave;nh vi&ecirc;n, Hội đồng Đạo đức trong nghi&ecirc;n cứu y sinh học quốc gia thống nhất kết luận như sau:</p>
<p>&nbsp;&bull; Về t&iacute;nh an to&agrave;n, vaccine Nanocovax đạt y&ecirc;u cầu về t&iacute;nh an to&agrave;n trong ngắn hạn dựa tr&ecirc;n dữ liệu b&aacute;o c&aacute;o kết quả giữa kỳ thử nghiệm l&acirc;m s&agrave;ng giai đoạn 3 t&iacute;nh đến thời điểm hiện tại (kết quả theo d&otilde;i 7 ng&agrave;y sau ti&ecirc;m mũi 1 của 11430 người t&igrave;nh nguyện; kết quả theo d&otilde;i 7 ng&agrave;y sau ti&ecirc;m mũi 2 của 5785 người t&igrave;nh nguyện).</p>
<p>&nbsp;&bull; Về t&iacute;nh sinh miễn dịch, vaccine Nanocovax c&oacute; t&iacute;nh sinh miễn dịch dựa tr&ecirc;n dữ liệu b&aacute;o c&aacute;o kết quả giữa kỳ thử nghiệm l&acirc;m s&agrave;ng giai đoạn 3 t&iacute;nh đến thời điểm hiện tại (kết quả x&eacute;t nghiệm nồng độ kh&aacute;ng thể Anti-S IgG tr&ecirc;n 924 mẫu ng&agrave;y 42 sau ti&ecirc;m mũi 1; kết quả x&eacute;t nghiệm hoạt t&iacute;nh trung h&ograve;a virus tr&ecirc;n 761 mẫu ng&agrave;y 42 sau ti&ecirc;m mũi 1; kết quả trung b&igrave;nh nh&acirc;n hiệu gi&aacute; kh&aacute;ng thể trung h&ograve;a PRNT ng&agrave;y 42 sau ti&ecirc;m mũi 1 tr&ecirc;n 107 mẫu chủng Vũ H&aacute;n; 41 mẫu chủng Delta; 39 mẫu chủng Alpha).</p>
<p>&bull; Về hiệu quả bảo vệ - kết quả quan trọng nhất về chất lượng, đến thời điểm hiện tại, vẫn chưa c&oacute; dữ liệu để đ&aacute;nh gi&aacute; trực tiếp hiệu lực bảo vệ của ứng vi&ecirc;n vaccine Nanocovax dựa tr&ecirc;n số trường hợp mắc COVID-19 trong nghi&ecirc;n cứu, cần tiếp tục thực hiện đ&aacute;nh gi&aacute; về hiệu lực bảo vệ theo đề cương được ph&ecirc; duyệt.</p>
<p>Ước t&iacute;nh hiệu quả bảo vệ của ứng vi&ecirc;n vaccine Nanocovax dựa tr&ecirc;n dữ liệu về t&iacute;nh sinh miễn dịch của vắc xin nghi&ecirc;n cứu đảm bảo t&iacute;nh khoa học để chuyển hồ sơ tới Hội đồng Tư vấn cấp giấy đăng k&yacute; thuốc, nguy&ecirc;n liệu l&agrave;m thuốc xem x&eacute;t.</p>
<p>&Yacute; kiến của Hội đồng Đạo đức trong nghi&ecirc;n cứu y sinh học quốc gia về đề xuất xem x&eacute;t cấp giấy đăng k&yacute; lưu h&agrave;nh cấp b&aacute;ch c&oacute; điều kiện vaccine Nanocovax như sau:</p>
<p>- Hội đồng Đạo đức trong nghi&ecirc;n cứu y sinh học quốc gia thống nhất về việc sử dụng c&aacute;c kết quả nghi&ecirc;n cứu thử nghiệm l&acirc;m s&agrave;ng t&iacute;nh đến thời điểm đ&aacute;nh gi&aacute; kết quả giữa kỳ giai đoạn 3, gửi cho Thường trực Hội đồng Tư vấn cấp giấy đăng k&yacute; thuốc, nguy&ecirc;n liệu l&agrave;m thuốc xem x&eacute;t.</p>
<p>- Đề nghị C&ocirc;ng ty Cổ phần c&ocirc;ng nghệ sinh học Dược Nanogen v&agrave; nh&oacute;m nghi&ecirc;n cứu ho&agrave;n thiện b&aacute;o c&aacute;o theo kết luận của cuộc họp v&agrave; tiếp tục triển khai bảo đảm chất lượng, tiến độ nghi&ecirc;n cứu thử nghiệm l&acirc;m s&agrave;ng vaccine Nanocovax theo đề cương đ&atilde; được ph&ecirc; duyệt để ho&agrave;n tất nghi&ecirc;n cứu v&agrave;o th&aacute;ng 3 năm 2022. Cập nhật kịp thời kết quả nghi&ecirc;n cứu cho c&aacute;c hội đồng chuy&ecirc;n m&ocirc;n v&agrave; cơ quan quản l&yacute;.</p>
<h3>Tiến độ triển khai nghi&ecirc;n cứu thử nghiệm l&acirc;m s&agrave;ng ứng vi&ecirc;n vaccine Nanocovax</h3>
<p>Thử nghiệm l&acirc;m s&agrave;ng ứng vi&ecirc;n vaccine Nanocovax bao gồm 3 giai đoạn</p>
<p>- Giai đoạn 1:&nbsp;tr&ecirc;n 60 người t&igrave;nh nguyện từ 18 đến 50 tuổi, gồm 3 mức liều 25mcg; 50mcg v&agrave; 75mcg, mỗi mức liều c&oacute; 20 người tham gia, k&eacute;o d&agrave;i từ th&aacute;ng 12/2020 đến th&aacute;ng 07/2021, với mục ti&ecirc;u đ&aacute;nh gi&aacute; t&iacute;nh an to&agrave;n v&agrave; thăm d&ograve; t&iacute;nh&nbsp;sinh miễn dịch&nbsp;của vaccine tr&ecirc;n người t&igrave;nh nguyện.</p>
<p>- Giai đoạn 2:&nbsp;tr&ecirc;n 560 người t&igrave;nh nguyện từ 18 tuổi trở l&ecirc;n, gồm 4 nh&oacute;m (nh&oacute;m ti&ecirc;m giả dược (placebo) 80 người; 3 nh&oacute;m ti&ecirc;m vaccine với 3 mức liều 25mcg; 50mcg v&agrave; 75mcg, mỗi mức liều 160 người).</p>
<p>Ngay khi c&oacute; kết quả đ&aacute;nh gi&aacute; giữa kỳ giai đoạn 1, Bộ Y tế đ&atilde; ph&ecirc; duyệt đề cương nghi&ecirc;n cứu thử nghiệm l&acirc;m s&agrave;ng giai đoạn 2, thời gian nghi&ecirc;n cứu từ th&aacute;ng 02/2021 đến th&aacute;ng 02/2022, với mục ti&ecirc;u đ&aacute;nh gi&aacute; t&iacute;nh an to&agrave;n v&agrave; t&iacute;nh&nbsp;sinh miễn dịch&nbsp;của vaccine để chọn được liều tối ưu sử dụng trong thử nghiệm l&acirc;m s&agrave;ng giai đoạn 3.</p>
<p>- Giai đoạn 3:&nbsp;thử nghiệm với mức liều 25mcg, tr&ecirc;n 13.000 người t&igrave;nh nguyện từ 18 tuổi trở l&ecirc;n, chia th&agrave;nh pha 3a v&agrave; pha 3b, mục ti&ecirc;u nghi&ecirc;n cứu l&agrave; đ&aacute;nh gi&aacute; t&iacute;nh an to&agrave;n, đ&aacute;p ứng sinh miễn dịch v&agrave; hiệu lực bảo vệ của ứng vi&ecirc;n vaccine Nanocovax.</p>
<p>Pha 3a với 1000 người, tỷ lệ nh&oacute;m vaccine/placebo l&agrave; 6:1.</p>
<figure class="VCSortableInPreviewMode small-img">
<div><a class="detail-img-lightbox" title="Ti&ecirc;m vaccine Nanocovax cho người t&igrave;nh nguyện giai đoạn 3 tại Học viện Qu&acirc;n Y" href="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/19/tiem-thu-nghiem-lam-sang-16319648126351906287231-1632028016902-16320280170141114743863.jpeg" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img id="img_363649572096401408" class="lightbox-content" style="width: 750px; height: 600px;" title="Vaccine - Ảnh 3." src="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/19/tiem-thu-nghiem-lam-sang-16319648126351906287231-1632028016902-16320280170141114743863.jpeg" alt="Vaccine - Ảnh 3." data-original="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/19/tiem-thu-nghiem-lam-sang-16319648126351906287231-1632028016902-16320280170141114743863.jpeg" /></a></div>
<figcaption class="PhotoCMS_Caption">
<p class="" data-placeholder="Nhập ch&uacute; th&iacute;ch ảnh">Ti&ecirc;m vaccine Nanocovax cho người t&igrave;nh nguyện giai đoạn 3 tại Học viện Qu&acirc;n Y</p>
</figcaption>
</figure>
<p>Ngay khi c&oacute; kết quả đ&aacute;nh gi&aacute; giữa kỳ giai đoạn 2, Bộ Y tế đ&atilde; ph&ecirc; duyệt đề cương nghi&ecirc;n cứu thử nghiệm l&acirc;m s&agrave;ng giai đoạn 3, thời gian nghi&ecirc;n cứu từ th&aacute;ng 06/2021 đến th&aacute;ng 02/2023, với mục ti&ecirc;u ch&iacute;nh nhằm đ&aacute;nh gi&aacute; t&iacute;nh an to&agrave;n v&agrave; t&iacute;nh sinh miễn dịch của vaccine.</p>
<p>Pha 3b với 12.000 người, tỷ lệ nh&oacute;m vaccine/placebo l&agrave; 2:1 thời gian nghi&ecirc;n cứu từ th&aacute;ng 07/2021 đến th&aacute;ng 02/2023, với mục ti&ecirc;u ch&iacute;nh nhằm đ&aacute;nh gi&aacute; t&iacute;nh an to&agrave;n v&agrave; hiệu lực bảo vệ của vaccine.</p>
<p>Hiện nay ứng vi&ecirc;n vaccine Nanocovax đang thử nghiệm l&acirc;m s&agrave;ng giai đoạn 2 của pha 3 v&agrave; đ&atilde; ho&agrave;n th&agrave;nh ti&ecirc;m 2 mũi vaccine cho 13.000 người t&igrave;nh nguyện của giai đoạn 3, ho&agrave;n th&agrave;nh c&aacute;c x&eacute;t nghiệm đ&aacute;nh gi&aacute; t&iacute;nh sinh miễn dịch sau 42 ng&agrave;y ti&ecirc;m vaccine mũi 1 của giai đoạn 3a.</p>
<p>Ng&agrave;y 07/8/2021, Hội đồng Đạo đức trong nghi&ecirc;n cứu y sinh học Quốc gia đ&atilde; họp khẩn cấp để nghiệm thu kết quả TNLS giai đoạn 1, đ&aacute;nh gi&aacute; kết quả giữa kỳ TNLS giai đoạn 2.</p>', CAST(N'2021-09-25T19:34:02.287' AS DateTime), N'hinh5.jpeg', N'3', 4, N'Thời sự', N'null')
INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (23, N'Tăng cường hợp tác cung cấp vaccine, đạt mục tiêu cuối năm 2021 tiêm chủng cho 40% dân số', N'Nhóm Đặc nhiệm Lãnh đạo Đa phương về COVID-19 đang thúc đẩy để bao phủ 40% dân số tiêm vaccine COVID-19 vào cuối năm 2021.', N'<ol>
<li dir="ltr">Nh&oacute;m&nbsp;Đặc nhiệm L&atilde;nh đạo Đa phương về&nbsp;<a class="seo-suggest-link" title="vacccine covid-19" href="https://suckhoedoisong.vn/vacccine-covid-19.html" target="_blank" rel="nofollow noopener">COVID-19</a>&nbsp;(Task Force) gồm&nbsp;Quỹ Tiền tệ Quốc tế, Ng&acirc;n h&agrave;ng Thế giới,&nbsp;<a class="seo-suggest-link" title="Tổ chức Y tế Thế giới hướng dẫn c&ocirc;ng t&aacute;c ti&ecirc;m chủng mở rộng trong đại dịch" href="https://suckhoedoisong.vn/to-chuc-y-te-the-gioi-huong-dan-cong-tac-tiem-chung-mo-rong-trong-dai-dich-169172202.htm" target="_blank" rel="nofollow noopener">Tổ chức Y tế Thế giới</a>&nbsp;v&agrave; Tổ chức Thương mại Thế giới. Mới đ&acirc;y&nbsp;nh&oacute;m đ&atilde; gặp gỡ gi&aacute;m đốc điều h&agrave;nh (CEO) của c&aacute;c c&ocirc;ng ty&nbsp;<a class="seo-suggest-link" title="Ph&aacute;t triển nhiều c&ocirc;ng nghệ sản xuất vaccine ph&ograve;ng COVID-19" href="https://suckhoedoisong.vn/phat-trien-nhieu-cong-nghe-san-xuat-vaccine-phong-covid-19-169210807204114106.htm" target="_blank" rel="nofollow noopener">sản xuất vaccine</a>&nbsp;h&agrave;ng đầu để thảo luận về c&aacute;c chiến lược cải thiện khả năng tiếp cận với vaccine COVID-19, đặc biệt l&agrave; ở những quốc gia c&oacute; thu nhập trung b&igrave;nh v&agrave; thấp. Theo đ&oacute;, nếu kh&ocirc;ng c&oacute; những bước đi khẩn cấp th&igrave; kh&oacute; c&oacute; khả năng đạt được mục ti&ecirc;u cuối năm 2021 bao phủ vaccine COVID-19 cho &iacute;t nhất 40% d&acirc;n số.</li>
</ol>
<div class="VCSortableInPreviewMode">
<div><a class="detail-img-lightbox" title="Phấn đấu ti&ecirc;m chủng vaccine COVID-19 cho 40% d&acirc;n v&agrave;o cuối năm 2021." href="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/photo-1631942359799-1631942361321354988442-1631954061273-16319540617921104255209.png" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img id="img_363555402546921472" class="lightbox-content" style="width: 750px; height: 600px;" title="photo-1631942359799" src="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/photo-1631942359799-1631942361321354988442-1631954061273-16319540617921104255209.png" alt="photo-1631942359799" data-original="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/photo-1631942359799-1631942361321354988442-1631954061273-16319540617921104255209.png" /></a></div>
<div class="PhotoCMS_Caption">
<p data-placeholder="Nhập ch&uacute; th&iacute;ch ảnh">Phấn đấu ti&ecirc;m chủng vaccine COVID-19 cho 40% d&acirc;n v&agrave;o cuối năm 2021.</p>
</div>
</div>
<h1 dir="ltr">&nbsp;</h1>
<h2><strong>C&ugrave;ng h&agrave;nh động để đạt mục ti&ecirc;u&nbsp;<a class="seo-suggest-link" title="sốt sau ti&ecirc;m vaccine Covid-19" href="https://suckhoedoisong.vn/sot-sau-tiem-vaccine-covid-19.html" target="_blank" rel="nofollow noopener">ti&ecirc;m vaccine COVID-19</a>&nbsp;v&agrave;o cuối năm 2021</strong></h2>
<p>Mặc d&ugrave; tổng sản lượng vaccine to&agrave;n cầu đầy đủ, nhưng liều lượng đ&atilde; kh&ocirc;ng đủ đến c&aacute;c nước c&oacute; thu nhập thấp v&agrave; trung b&igrave;nh thấp hơn, dẫn đến khủng hoảng bất b&igrave;nh đẳng về vaccine.<br />Nh&oacute;m Đặc nhiệm khuyến kh&iacute;ch c&aacute;c quốc gia đ&atilde; k&yacute; hợp đồng với số lượng liều vaccine cao v&agrave; c&aacute;c nh&agrave; sản xuất vaccine, hợp t&aacute;c với nhau một c&aacute;ch thiện ch&iacute; để khẩn trương đẩy nhanh việc cung cấp vaccine COVID-19 cho&nbsp;<a class="seo-suggest-link" title="cơ chế covax" href="https://suckhoedoisong.vn/co-che-covax.html" target="_blank" rel="nofollow noopener">COVAX</a>&nbsp;v&agrave; AVAT (Ủy ban mua lại vaccine ch&acirc;u Phi),&nbsp;hai cơ chế đa phương rất quan trọng để ph&acirc;n phối vaccine một c&aacute;ch c&ocirc;ng bằng.</p>
<p dir="ltr">C&aacute;c th&agrave;nh vi&ecirc;n của nh&oacute;m Đặc nhiệm đ&atilde; hoan ngh&ecirc;nh sự sẵn s&agrave;ng l&agrave;m việc chung của c&aacute;c CEO để chấm dứt t&igrave;nh trạng bất b&igrave;nh đẳng về vaccine v&agrave; sẵn s&agrave;ng th&agrave;nh lập một nh&oacute;m l&agrave;m việc kỹ thuật với nh&oacute;m Đặc nhiệm để trao đổi v&agrave; điều phối th&ocirc;ng tin về sản xuất v&agrave; ph&acirc;n phối vaccine.</p>
<div class="VCSortableInPreviewMode">
<div><a class="detail-img-lightbox" title="Sự bất b&igrave;nh đẳng về vaccine c&agrave;ng k&eacute;o d&agrave;i, virus sẽ tiếp tục lưu h&agrave;nh v&agrave; ph&aacute;t triển&hellip;" href="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/photo-1631942362542-1631942362704115359952-1631954063275-16319540633961560586852.jpg" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img id="img_363555406151888896" class="lightbox-content" style="width: 750px; height: 600px;" title="photo-1631942362542" src="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/photo-1631942362542-1631942362704115359952-1631954063275-16319540633961560586852.jpg" alt="photo-1631942362542" width="" height="" data-original="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/photo-1631942362542-1631942362704115359952-1631954063275-16319540633961560586852.jpg" /></a></div>
<div class="PhotoCMS_Caption">
<p data-placeholder="Nhập ch&uacute; th&iacute;ch ảnh">Sự bất b&igrave;nh đẳng về vaccine c&agrave;ng k&eacute;o d&agrave;i, virus sẽ tiếp tục lưu h&agrave;nh v&agrave; ph&aacute;t triển&hellip;</p>
</div>
</div>
<p dir="ltr">Để đạt được ngưỡng bao phủ 40% ở tất cả c&aacute;c quốc gia v&agrave;o cuối năm 2021, nh&oacute;m Đặc nhiệm k&ecirc;u gọi, c&aacute;c ch&iacute;nh phủ v&agrave; nh&agrave; sản xuất vaccine cần phải thực hiện ngay c&aacute;c h&agrave;nh động sau:</p>
<p dir="ltr"><em><strong>- Đưa vaccine tới c&aacute;c nước thu nhập thấp v&agrave; trung b&igrave;nh</strong></em><strong>:</strong>&nbsp;C&aacute;c th&agrave;nh vi&ecirc;n nh&oacute;m đặc biệt nhận ra rằng c&aacute;c nước c&oacute; tỷ lệ ti&ecirc;m chủng cao tổng cộng đ&atilde; trả trước nhiều hơn 2 tỷ liều so với những g&igrave; họ cần để ti&ecirc;m vaccine cho cả cộng đồng của họ. Lực lượng đặc nhiệm khẩn cấp y&ecirc;u cầu c&aacute;c nước n&agrave;y:</p>
<p dir="ltr">+ Đổi lịch giao vaccine trong ngắn hạn với COVAX v&agrave; AVAT.</p>
<p dir="ltr">+ Ho&agrave;n th&agrave;nh cam kết quy&ecirc;n g&oacute;p vaccine của họ với c&aacute;c đơn h&agrave;ng trả trước kh&ocirc;ng đ&aacute;nh dấu tới COVAX.</p>
<p dir="ltr">+ Miễn c&aacute;c c&ocirc;ng ty sản xuất vaccine khỏi c&aacute;c điều khoản trong hợp đồng đ&atilde; k&yacute; để những liều vaccine c&oacute; thể được giao tới c&aacute;c nước thu nhập thấp v&agrave; trung b&igrave;nh. Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c nh&agrave; sản xuất vaccine n&ecirc;n ưu ti&ecirc;n v&agrave; thực hiện hợp đồng của họ với COVAX v&agrave; AVAT.</p>
<p dir="ltr"><strong><em>- Minh bạch về nguồn cung cấp vaccine</em><em>:</em></strong><strong>&nbsp;</strong>Để đảm bảo rằng liều lượng đến được c&aacute;c quốc gia cần nhất, đặc biệt l&agrave; c&aacute;c quốc gia c&oacute; thu nhập thấp v&agrave; trung b&igrave;nh thấp hơn, c&aacute;c nh&agrave; sản xuất vaccine chia sẻ chi tiết về lịch tr&igrave;nh giao h&agrave;ng từng th&aacute;ng cho tất cả c&aacute;c l&ocirc; h&agrave;ng vaccine, đặc biệt l&agrave; đối với COVAX v&agrave; AVAT. Trong ph&aacute;t biểu của m&igrave;nh, WHO nhấn mạnh lời k&ecirc;u gọi tạm ho&atilde;n liều tăng cường cho đến cuối năm 2021, ngoại trừ trường hợp miễn dịch bị tổn hại, để gi&uacute;p tối ưu h&oacute;a nguồn cung cho c&aacute;c nước thu nhập thấp.</p>
<p dir="ltr"><em>-</em><strong><em>&nbsp;X&oacute;a bỏ c&aacute;c r&agrave;o cản:&nbsp;</em>N</strong>h&oacute;m Đặc nhiệm k&ecirc;u gọi tất cả c&aacute;c quốc gia khẩn trương giải quyết c&aacute;c hạn chế về xuất khẩu, thuế quan cao v&agrave; tắc nghẽn hải quan đối với vaccine COVID-19, nguy&ecirc;n liệu v&agrave; vật tư cần thiết để sản xuất v&agrave; ph&acirc;n phối vaccine kịp thời.</p>
<p dir="ltr"><strong>-&nbsp;<em>Hợp l&yacute; h&oacute;a v&agrave; h&agrave;i h&ograve;a h&oacute;a quy định</em></strong><strong>:</strong>&nbsp;Cơ quan quản l&yacute; tr&ecirc;n to&agrave;n thế giới tạo ra sự thống nhất v&agrave; ti&ecirc;u chuẩn h&oacute;a quy định về việc ph&ecirc; duyệt vaccine v&agrave; hỗ trợ việc chấp nhận quy tr&igrave;nh Danh s&aacute;ch sử dụng khẩn cấp của WHO. Song song đ&oacute;, cần nỗ lực th&uacute;c đẩy sản xuất vaccine, chẩn đo&aacute;n v&agrave; điều trị tr&ecirc;n to&agrave;n cầu v&agrave; x&uacute;c tiến việc cung cấp c&ocirc;ng bằng c&aacute;c c&ocirc;ng cụ cứu sinh đ&oacute; cho c&aacute;c nước đang ph&aacute;t triển.</p>
<h2><strong>WHO k&ecirc;u gọi c&aacute;c nh&agrave; l&atilde;nh đạo thế giới tập trung v&agrave;o c&ocirc;ng bằng vaccine</strong></h2>
<p dir="ltr">Tại Phi&ecirc;n họp lần thứ 76 Đại hội đồng Li&ecirc;n hợp quốc (UNGA), WHO k&ecirc;u gọi c&aacute;c nh&agrave; l&atilde;nh đạo tham dự, đảm bảo tiếp cận c&ocirc;ng bằng với vacine COVID-19 v&agrave; c&aacute;c c&ocirc;ng cụ cứu sống kh&aacute;c; đảm bảo thế giới được chuẩn bị tốt hơn để ứng ph&oacute; với c&aacute;c đại dịch trong tương lai v&agrave; nỗ lực đổi mới để đạt được c&aacute;c Mục ti&ecirc;u Ph&aacute;t triển Bền vững (SDGs).</p>
<p dir="ltr"><a class="seo-suggest-link" title="Chuy&ecirc;n gia nhận định t&igrave;nh h&igrave;nh đại dịch COVID-19 trong 6 th&aacute;ng tới" href="https://suckhoedoisong.vn/chuyen-gia-nhan-dinh-tinh-hinh-dai-dich-covid-19-trong-6-thang-toi-16921091412575987.htm" target="_blank" rel="nofollow noopener">Đại dịch COVID-19</a>&nbsp;đ&atilde; cướp đi sinh mạng của gần 5 triệu người tr&ecirc;n to&agrave;n cầu, v&agrave; virus vẫn tiếp tục lan truyền t&iacute;ch cực ở tất cả c&aacute;c khu vực tr&ecirc;n thế giới.</p>
<p dir="ltr">Vaccine l&agrave; c&ocirc;ng cụ quan trọng nhất để chấm dứt đại dịch, cứu sống v&agrave; sinh kế. Hơn 5,7 tỷ liều vaccine đ&atilde; được sử dụng tr&ecirc;n to&agrave;n cầu, nhưng 73% tổng số liều đ&atilde; được sử dụng ở 10 quốc gia. Sự bất b&igrave;nh đẳng về vaccine c&agrave;ng k&eacute;o d&agrave;i, virus sẽ tiếp tục lưu h&agrave;nh v&agrave; ph&aacute;t triển, v&agrave; sự gi&aacute;n đoạn kinh tế v&agrave; x&atilde; hội sẽ tiếp tục k&eacute;o d&agrave;i.</p>
<p dir="ltr">Mục ti&ecirc;u của WHO l&agrave; ti&ecirc;m chủng cho &iacute;t nhất 40% d&acirc;n số của mọi quốc gia v&agrave;o cuối năm nay v&agrave; 70% v&agrave;o giữa năm sau. C&aacute;c mục ti&ecirc;u n&agrave;y c&oacute; thể đạt được nếu c&aacute;c quốc gia v&agrave; nh&agrave; sản xuất cam kết thực sự về c&ocirc;ng bằng vaccine.</p>
<p dir="ltr">B&ecirc;n cạnh đ&oacute;, WHO cho biết, ngay cả khi c&aacute;c quốc gia tập trung v&agrave;o việc chấm dứt đại dịch n&agrave;y, thế giới cũng phải chuẩn bị cho c&aacute;c đại dịch trong tương lai v&agrave; c&aacute;c trường hợp khẩn cấp về sức khỏe kh&aacute;c.</p>
<div class="VCSortableInPreviewMode">
<div><a class="detail-img-lightbox" title="Vaccine l&agrave; c&ocirc;ng cụ quan trọng nhất để chấm dứt đại dịch, cứu sống v&agrave; sinh kế." href="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/photo-1631942363544-16319423637071677704341-1631954064077-1631954064166213066120.jpg" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img id="img_363555410558025728" style="width: 750px; height: 600px;" title="photo-1631942363544" src="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/photo-1631942363544-16319423637071677704341-1631954064077-1631954064166213066120.jpg" alt="photo-1631942363544" data-original="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/photo-1631942363544-16319423637071677704341-1631954064077-1631954064166213066120.jpg" /></a></div>
<div class="PhotoCMS_Caption">
<p data-placeholder="Nhập ch&uacute; th&iacute;ch ảnh">Vaccine l&agrave; c&ocirc;ng cụ quan trọng nhất để chấm dứt đại dịch, cứu sống v&agrave; sinh kế.</p>
</div>
</div>
<p dir="ltr">WHO k&ecirc;u gọi tất cả c&aacute;c quốc gia ph&aacute; vỡ chu kỳ ''hoảng sợ v&agrave; bỏ mặc'' được thấy sau c&aacute;c trường hợp khẩn cấp về y tế trước đ&acirc;y, đồng thời cam kết nguồn lực t&agrave;i ch&iacute;nh đầy đủ cũng như &yacute; ch&iacute; ch&iacute;nh trị để tăng cường khả năng sẵn s&agrave;ng ứng ph&oacute; với t&igrave;nh trạng khẩn cấp về y tế tr&ecirc;n to&agrave;n cầu.</p>
<p dir="ltr">Bảo hiểm y tế to&agrave;n cầu (UHC) l&agrave; nền tảng của an ninh y tế to&agrave;n cầu. Bất chấp những tiến bộ trong UHC trong những năm gần đ&acirc;y, 90% c&aacute;c quốc gia đ&atilde; b&aacute;o c&aacute;o sự gi&aacute;n đoạn trong c&aacute;c dịch vụ y tế thiết yếu do đại dịch, để lại nhiều hậu quả.</p>
<p dir="ltr">Đầu tư nghi&ecirc;m t&uacute;c v&agrave;o UHC v&agrave; chuẩn bị sẵn s&agrave;ng cho đại dịch l&agrave; rất quan trọng kh&ocirc;ng chỉ để tăng cường an ninh y tế to&agrave;n cầu m&agrave; c&ograve;n để đưa Chương tr&igrave;nh Nghị sự 2030 về Ph&aacute;t triển Bền vững trở lại đ&uacute;ng hướng.</p>
<p dir="ltr">Đại dịch đ&atilde; l&agrave;m đảo ngược tiến bộ đối với&nbsp;Mục ti&ecirc;u Ph&aacute;t triển Bền vững, bao gồm cả những th&agrave;nh tựu đ&atilde; đạt được về x&oacute;a đ&oacute;i giảm ngh&egrave;o, x&oacute;a bỏ bất b&igrave;nh đẳng giới, ti&ecirc;m chủng cho trẻ em chống lại c&aacute;c bệnh truyền nhiễm v&agrave; gi&aacute;o dục trẻ em g&aacute;i v&agrave; trẻ em trai. Nhưng n&oacute; cũng đang cung cấp cho thế giới những cơ hội mới để l&agrave;m những điều kh&aacute;c biệt v&agrave; thực sự hợp t&aacute;c để x&acirc;y dựng trở lại tốt hơn - hướng tới một thế giới l&agrave;nh mạnh hơn, c&ocirc;ng bằng hơn, h&ograve;a nhập hơn v&agrave; bền vững hơn.</p>
<p dir="ltr">WHO k&ecirc;u gọi c&aacute;c nh&agrave; l&atilde;nh đạo thế giới tụ họp tại UNGA trong tuần n&agrave;y để nắm bắt thời điểm v&agrave; cam kết h&agrave;nh động phối hợp, nguồn lực đầy đủ v&agrave; đo&agrave;n kết, để x&acirc;y dựng một tương lai tốt đẹp hơn cho con người v&agrave; h&agrave;nh tinh.</p>', CAST(N'2021-09-27T07:25:30.543' AS DateTime), N'hinh8.jpg', N'2', 4, N'Tin tức', N'null')
INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (24, N'Bộ Y tế phê duyệt vaccine COVID-19 Abdala của Cuba', N'Vaccine Abdala được phê duyệt theo quy định tại Điều 67 Nghị định số 54/2017/NĐ-CP ngày 08/5/2012 của Chính phủ quy định chi tiết một số điều và biện pháp thi hành Luật dược.', N'<p>Ng&agrave;y 17/9/2021, Bộ Y tế đ&atilde; c&oacute; quyết định số 4471/QĐ-BYT ng&agrave;y 17/9/2021 về việc&nbsp;<a class="link-inline-content" title="ph&ecirc; duyệt c&oacute; điều kiện vaccine cho nhu cầu cấp b&aacute;ch" href="https://suckhoedoisong.vn/trua-10-9-viet-nam-phe-duyet-vaccine-covid-19-hayat-vax-ho-tro-1-trieu-dong-cho-con-cua-san-phu-la-f0-169210910140008282.htm" target="_blank" rel="noopener" data-rel="follow">ph&ecirc; duyệt c&oacute; điều kiện vaccine cho nhu cầu cấp b&aacute;ch</a>&nbsp;trong ph&ograve;ng, chống dịch bệnh&nbsp;<a class="link-inline-content" title="COVID-19" href="https://suckhoedoisong.vn/ngay-17-9-co-11521-ca-mac-covid-19-trong-do-tphcm-va-binh-duong-da-gan-10000-ca-169210917181345586.htm" target="_blank" rel="noopener" data-rel="follow">COVID-19</a>.&nbsp;</p>
<figure class="VCSortableInPreviewMode small-img">
<div><a class="detail-img-lightbox" title="Vaccine Abdala" href="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/vaccine-abdala-16319297904032048435703-1631942786812-16319427874982080672811.png" target="_blank" rel="noopener" data-fancybox="img-lightbox"><img id="img_363502674229153792" class="lightbox-content" style="width: 750px; height: 600px;" title="Bộ Y tế ph&ecirc; duyệt vaccine COVID-19 Abdala của Cu Ba - Ảnh 1." src="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/vaccine-abdala-16319297904032048435703-1631942786812-16319427874982080672811.png" alt="Bộ Y tế ph&ecirc; duyệt vaccine COVID-19 Abdala của Cu Ba - Ảnh 1." data-original="https://covid19.qltns.mediacdn.vn/354844073405468672/2021/9/18/vaccine-abdala-16319297904032048435703-1631942786812-16319427874982080672811.png" /></a></div>
<figcaption class="PhotoCMS_Caption">
<p data-placeholder="Nhập ch&uacute; th&iacute;ch ảnh">Vaccine Abdala</p>
</figcaption>
</figure>
<p>Theo văn bản, vaccine n&agrave;y sản xuất th&agrave;nh phẩm tại C&ocirc;ng ty AICA Laboraries, Base Business Unit (BBU) AICA &ndash; Cuba v&agrave; được xuất b&aacute;n th&agrave;nh phẩm, đ&oacute;ng g&oacute;i cấp 2 tại Trung t&acirc;m Kỹ thuật Di truyền v&agrave; C&ocirc;ng nghệ Sinh học (CIGB) &ndash; Cuba.</p>
<p>Tại Việt Nam, Trung t&acirc;m Nghi&ecirc;n cứu, Sản xuất Vaccine v&agrave; Sinh phẩm Y tế (POLYVAC) l&agrave; nơi đề nghị ph&ecirc; duyệt vaccine n&agrave;y.</p>
<p>Vaccine Abdala mỗi liều 0,5ml chứa 50 mcg vaccine protein t&aacute;i tổ hợp chứa v&ugrave;ng li&ecirc;n kết với thụ thể (RBG) của vi r&uacute;t SARS-CoV-2, b&agrave;o chế ở dạng hỗn dịch ti&ecirc;m bắp.</p>
<p>Vaccine được đ&oacute;ng g&oacute;i hộp 10 lọ, mỗi lọ chứa 10 liều, mỗi liều 0,5ml.</p>
<p>Bộ Y tế cũng quy định c&aacute;c điều kiện đi k&egrave;m việc ph&ecirc; duyệt Abdala cho nhu cầu cấp b&aacute;ch trong ph&ograve;ng, chống dịch bệnh COVID-19.</p>
<p>Theo đ&oacute;, Cục Quản l&yacute; Dược c&oacute; tr&aacute;ch nhiệm cấp ph&eacute;p nhập khẩu vaccine Abdala theo quy định khi nhận được hồ sơ của cơ sở nhập khẩu, thực hiện đ&uacute;ng quy định của ph&aacute;p luật về quản l&yacute; nhập khẩu, quản l&yacute; chất lượng vaccine nhập khẩu.</p>
<p>Cục Khoa học c&ocirc;ng nghệ v&agrave; Đ&agrave;o tạo c&oacute; tr&aacute;ch nhiệm lựa chọn đơn vị c&oacute; đủ điều kiện đ&aacute;nh gi&aacute; t&iacute;nh an to&agrave;n, hiệu quả của vaccine tr&ecirc;n cơ sở &yacute; kiến tư vấn của Hội đồng tư vấn sử dụng vaccine, sinh phẩm y tế của Bộ Y tế (Hội đồng tư vấn) trong qu&aacute; tr&igrave;nh sử dụng.</p>
<p>Đồng thời, đơn vị n&agrave;y hướng dẫn, chỉ đạo đơn vị c&oacute; đủ điều kiện quy định tổ chức thực hiện việc đ&aacute;nh gi&aacute; t&iacute;nh an to&agrave;n, hiệu quả của vaccine Abdala tr&ecirc;n cơ sở &yacute; kiến tư vấn của Hội đồng tư vấn trong qu&aacute; tr&igrave;nh sử dụng.</p>
<p>Cục Y tế Dự ph&ograve;ng thực hiện c&aacute;c tr&aacute;ch nhiệm li&ecirc;n quan đến ti&ecirc;m chủng vaccine Abdala được quy định.</p>
<p>Viện Kiểm định Quốc gia vaccine v&agrave; sinh phẩm y tế c&oacute; tr&aacute;ch nhiệm tiến h&agrave;nh kiểm định v&agrave; cấp Giấy chứng nhận xuất xưởng l&ocirc; vaccine Abdala trước khi đưa ra sử dụng.</p>
<p>Như vậy, đến nay Việt Nam đ&atilde; ph&ecirc; duyệt c&oacute; điều kiện vaccine cho nhu cầu cấp b&aacute;ch trong ph&ograve;ng, chống dịch bệnh COVID-19 cho 8 vaccine gồm: AstraZeneca do AstraZeneca sản xuất) , Sputnik V (Viện nghi&ecirc;n cứu Gamaleya), COVID-19 Vaccine Janssen (Johnson &amp; Johnson), Spikevax (COVID-19 Vaccine Moderna), Comirnaty (Pfizer &ndash; BioNTech), Vero Cell (China National Biotec Group (CNBG)/ Sinopharm) Hayat - Vax v&agrave; Abdala.</p>
<p>Đến nay, Việt Nam đ&atilde; tiếp cận tr&ecirc;n 38 triệu liều vaccine&nbsp; COVID-19, đ&atilde; ti&ecirc;m chủng tr&ecirc;n 33 triệu liều.</p>', CAST(N'2021-09-25T19:32:23.033' AS DateTime), N'hinh9.png', N'2', 4, N'Thời sự', N'null')
INSERT [dbo].[BaiViet] ([IdBV], [TieuDe], [TomTat], [NoiDung], [NgayViet], [Hinh], [NguoiViet], [IdDM], [Tag], [LinkVideo]) VALUES (25, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
GO
SET IDENTITY_INSERT [dbo].[DienBienDich] ON 
INSERT [dbo].[DienBienDich] (IDDB, ThoiGian, TieuDeDB, CauTongKetDB, ChiTietDB) VALUES (1, '11/19/2021', N'THÔNG BÁO VỀ 9.625 CA MẮC MỚI', N'Tính từ 16h ngày 18/11 đến 16h ngày 19/11, trên Hệ thống Quốc gia quản lý ca bệnh COVID-19 ghi nhận 9.625 ca nhiễm mới, trong đó 8 ca nhập cảnh và 9.617 ca ghi nhận trong nước (giảm 592 ca so với ngày trước đó) tại 57 tỉnh, thành phố (có 4.995 ca trong cộng đồng).', N'Các tỉnh, thành phố ghi nhận ca bệnh như sau: TP. Hồ Chí Minh (1.339), Bình Dương (661), Tây Ninh (599), Đồng Nai (578), Đồng Tháp (509), Bà Rịa - Vũng Tàu (444), Bạc Liêu (425), Tiền Giang (382), Sóc Trăng (376), Bình Thuận (370), An Giang (365), Kiên Giang (307), Vĩnh Long (303), Hà Nội (287), Cà Mau (270), Cần Thơ (247), Trà Vinh (194), Bình Phước (183), Bến Tre (162), Khánh Hòa (154), Hậu Giang (123), Long An (112), Nghệ An (100), Thái Bình (99), Hà Giang (83), Thừa Thiên Huế (82), Lâm Đồng (80), Bắc Ninh (75), Quảng Nam (62), Bình Định (60), Nam Định (53), Quảng Ninh (49), Thanh Hóa (45), Gia Lai (44), Quảng Ngãi (41), Ninh Thuận (39), Đắk Nông (37), Vĩnh Phúc (32), Quảng Trị (30), Tuyên Quang (29), Đà Nẵng (26), Phú Thọ (23), Bắc Giang (22), Hải Dương (20), Điện Biên (17), Quảng Bình (16), Hà Nam (13), Phú Yên (11), Hưng Yên (8), Ninh Bình (6), Lạng Sơn (6), Yên Bái (5), Hòa Bình (4), Thái Nguyên (4), Cao Bằng (4), Bắc Kạn (1), Hải Phòng (1).')
INSERT [dbo].[DienBienDich] (IDDB, ThoiGian, TieuDeDB, CauTongKetDB, ChiTietDB) VALUES (2, '11/18/2021', N'THÔNG BÁO VỀ 10.223 CA MẮC MỚI', N'Tính từ 16h ngày 17/11 đến 16h ngày 18/11, trên Hệ thống Quốc gia quản lý ca bệnh COVID-19 ghi nhận 10.223 ca nhiễm mới, trong đó 14 ca nhập cảnh và 10.209 ca ghi nhận trong nước (tăng 370 ca so với ngày trước đó) tại 60 tỉnh, thành phố (có 5.454 ca trong cộng đồng).', N'Các tỉnh, thành phố ghi nhận ca bệnh như sau: TP. Hồ Chí Minh (1.609), Bình Dương (686), Tây Ninh (632), Tiền Giang (622), Đồng Nai (563), Đồng Tháp (515), An Giang (510), Bà Rịa - Vũng Tàu (423), Sóc Trăng (343), Bình Thuận (333), Bạc Liêu (314), Vĩnh Long (314), Kiên Giang (304), Hà Giang (235), Hà Nội (202), Trà Vinh (194), Bình Phước (189), Bến Tre (184), Cà Mau (158), Khánh Hòa (135), Cần Thơ (130), Hậu Giang (122), Đắk Lắk (118), Lâm Đồng (95), Thừa Thiên Huế (91), Thái Bình (85), Long An (82), Bình Định (82), Bắc Ninh (78), Quảng Nam (73), Gia Lai (68), Nghệ An (61), Điện Biên (59), Vĩnh Phúc (56), Quảng Ngãi (51), Bắc Giang (49), Nam Định (47), Thanh Hóa (46), Ninh Thuận (45), Đắk Nông (41), Hà Tĩnh (31), Quảng Ninh (31), Đà Nẵng (26), Phú Yên (25), Tuyên Quang (25), Quảng Bình (20), Cao Bằng (19), Hải Dương (16), Phú Thọ (15), Hà Nam (12), Hưng Yên (10), Sơn La (8), Lạng Sơn (6), Quảng Trị (5), Lào Cai (5), Hải Phòng (5), Kon Tum (2), Hòa Bình (2), Thái Nguyên (1), Yên Bái (1).')
INSERT [dbo].[DienBienDich] (IDDB, ThoiGian, TieuDeDB, CauTongKetDB, ChiTietDB) VALUES (3, '11/18/2021', N'THÔNG BÁO VỀ 10.223 CA MẮC MỚI', N'Tính từ 16h ngày 17/11 đến 16h ngày 18/11, trên Hệ thống Quốc gia quản lý ca bệnh COVID-19 ghi nhận 10.223 ca nhiễm mới, trong đó 14 ca nhập cảnh và 10.209 ca ghi nhận trong nước (tăng 370 ca so với ngày trước đó) tại 60 tỉnh, thành phố (có 5.454 ca trong cộng đồng).', N'Các tỉnh, thành phố ghi nhận ca bệnh như sau: TP. Hồ Chí Minh (1.609), Bình Dương (686), Tây Ninh (632), Tiền Giang (622), Đồng Nai (563), Đồng Tháp (515), An Giang (510), Bà Rịa - Vũng Tàu (423), Sóc Trăng (343), Bình Thuận (333), Bạc Liêu (314), Vĩnh Long (314), Kiên Giang (304), Hà Giang (235), Hà Nội (202), Trà Vinh (194), Bình Phước (189), Bến Tre (184), Cà Mau (158), Khánh Hòa (135), Cần Thơ (130), Hậu Giang (122), Đắk Lắk (118), Lâm Đồng (95), Thừa Thiên Huế (91), Thái Bình (85), Long An (82), Bình Định (82), Bắc Ninh (78), Quảng Nam (73), Gia Lai (68), Nghệ An (61), Điện Biên (59), Vĩnh Phúc (56), Quảng Ngãi (51), Bắc Giang (49), Nam Định (47), Thanh Hóa (46), Ninh Thuận (45), Đắk Nông (41), Hà Tĩnh (31), Quảng Ninh (31), Đà Nẵng (26), Phú Yên (25), Tuyên Quang (25), Quảng Bình (20), Cao Bằng (19), Hải Dương (16), Phú Thọ (15), Hà Nam (12), Hưng Yên (10), Sơn La (8), Lạng Sơn (6), Quảng Trị (5), Lào Cai (5), Hải Phòng (5), Kon Tum (2), Hòa Bình (2), Thái Nguyên (1), Yên Bái (1).')
SET IDENTITY_INSERT [dbo].[DienBienDich] OFF 
go
SET IDENTITY_INSERT [dbo].[CaNhiem] ON 

INSERT [dbo].[CaNhiem] ([Stt], [Tinh], [Tongsoca], [Homnay], [Tuvong]) VALUES (1, N'TP. Hồ Chí Minh', 422, 966, 16)
INSERT [dbo].[CaNhiem] ([Stt], [Tinh], [Tongsoca], [Homnay], [Tuvong]) VALUES (2, N'Bình Dương', 228, 524, 2)
INSERT [dbo].[CaNhiem] ([Stt], [Tinh], [Tongsoca], [Homnay], [Tuvong]) VALUES (3, N'Đồng Nai', 61, 429, 522)
INSERT [dbo].[CaNhiem] ([Stt], [Tinh], [Tongsoca], [Homnay], [Tuvong]) VALUES (4, N'Long An', 34, 88, 475)
INSERT [dbo].[CaNhiem] ([Stt], [Tinh], [Tongsoca], [Homnay], [Tuvong]) VALUES (5, N'Tiền Giang', 15, 78, 385)
INSERT [dbo].[CaNhiem] ([Stt], [Tinh], [Tongsoca], [Homnay], [Tuvong]) VALUES (6, N'Tây Ninh', 9, 132, 147)
INSERT [dbo].[CaNhiem] ([Stt], [Tinh], [Tongsoca], [Homnay], [Tuvong]) VALUES (7, N'Đồng Tháp', 9, 41, 222)
INSERT [dbo].[CaNhiem] ([Stt], [Tinh], [Tongsoca], [Homnay], [Tuvong]) VALUES (8, N'An Giang', 8, 297, 124)
SET IDENTITY_INSERT [dbo].[CaNhiem] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([IdDM], [TenDM]) VALUES (1, N'Chỉ đạo chống dịch')
INSERT [dbo].[DanhMuc] ([IdDM], [TenDM]) VALUES (2, N'Bản tin Covid - 19')
INSERT [dbo].[DanhMuc] ([IdDM], [TenDM]) VALUES (3, N'Video')
INSERT [dbo].[DanhMuc] ([IdDM], [TenDM]) VALUES (4, N'Vaccine - Tiêm chủng')
INSERT [dbo].[DanhMuc] ([IdDM], [TenDM]) VALUES (5, N'Tin tức')
INSERT [dbo].[DanhMuc] ([IdDM], [TenDM]) VALUES (6, N'Dự phòng - Điều Trị')
INSERT [dbo].[DanhMuc] ([IdDM], [TenDM]) VALUES (7, N'Hướng dẫn')
INSERT [dbo].[DanhMuc] ([IdDM], [TenDM]) VALUES (8, N'Hoạt động địa phương')
INSERT [dbo].[DanhMuc] ([IdDM], [TenDM]) VALUES (9, N'Tình hình thế giới')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([IdNV], [Email], [MatKhauNV], [CodeResetPassword], [HovaTen], [DiaChi], [SDT], [NgayDangKy], [IsEmailVerified], [ActivationCode]) VALUES (1, N'nguyennhatminh26122001@gmail.com', N'123', N'', N'Nguyễn Nhật Minh', N'BinhDuong', N'12343434', CAST(N'2021-09-20T00:00:00' AS SmallDateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([IdTK], [TenDN], [MatKhau], [Quyen]) VALUES (1, N'admin     ', N'123       ', N'Admin')
INSERT [dbo].[TaiKhoan] ([IdTK], [TenDN], [MatKhau], [Quyen]) VALUES (2, N'phong     ', N'123       ', N'User')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD FOREIGN KEY([IdDM])
REFERENCES [dbo].[DanhMuc] ([IdDM])
GO
USE [master]
GO
ALTER DATABASE [DuLieuYTeBD] SET  READ_WRITE 
GO



Create table ThongTin_KhaiBao
(
    ID int identity(1,1),
	HoVaTen nvarchar(50) not null,
	CMND char(15) not null,
	NamSinh smalldatetime not null,
	GioiTinh Nvarchar(5) not null,
	QuocTich Nvarchar(15) not null,
	DiaChi nvarchar(max) not null,
	PhuongXa int not null,
	QuanHuyen int  not null,
	TinhThanh int not null,
	DienThoai char(10) not null,
	Email    varchar(50) not null,
	TinhTrang nvarchar(max) not null,
	TiepXucCOVID char(5) not null,
	NguoiVungCovid char(5) not null,
	NguoiSotHo char(5) not null,
	NgayKhaiBao smalldatetime not null,
	constraint fk_ward foreign key (PhuongXa) references Ward(Id) ,
	constraint fk_district foreign key (QuanHuyen)references District(Id),
	constraint fk_province foreign key (TinhThanh) references Province(Id),
	Primary key(ID)
)




--SELECT District.Name , COUNT(ThongTin_KhaiBao.ID) GetCount
--    FROM ThongTin_KhaiBao  join  District on ThongTin_KhaiBao.QuanHuyen = District.Id , Province 
--	Where   ThongTin_KhaiBao.TinhThanh =  Province.Id
--	And Province.Name= N'Bình Dương'
 
--	GROUP BY  District.Name


--select District.Name 
--from Province join District on Province.Id = District.ProvinceId
--where Province.Name = N'Bình Dương'
