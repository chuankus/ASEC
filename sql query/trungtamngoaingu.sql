--LẤY POSTS CỦA PHẦN CHƯƠNG TRÌNH HỌC
select * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Chương Trình Học'

--LẤY MENU CHÍNH
select * from MainMenu where ItemIndex between 7 and 15 order by ItemIndex asc
select * from MainMenu where ItemIndex >= 7 order by ItemIndex asc

select menu.MenuID, ct.CategoryID as cateid, ct.CategoryName, ct.Permalink as linkMenuCon from MainMenu menu join Menu_Category m_ct on menu.MenuID = m_ct.MenuID join Category ct on m_ct.CategoryID = ct.CategoryID where menu.MenuID = 1008 and menu.ItemIndex between 7 and 14 order by menu.ItemIndex asc

select * from POST where PostID = 2

select top 5 * from POST order by ViewCount desc 

--LẤY TOP 6 TIN TỨC
select top 6 * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Tin Tức'

--LẤY TOP 8 BÀI VIẾT MỚI NHẤT
select top 8 * from Post_Category_relationships p_ct join Category ct on p_ct.CategoryID = ct.CategoryID join POST p on p_ct.PostID = p.PostID join Images img on p.PostImage = img.ImagesID where ct.CategoryName not like N'Tin Tức' order by p.DateOfCreate desc

select top 5 * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Tin T?c'
select * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID where ct.CategoryName like N'Tuyển Dụng'
select * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Chương Trình Học'
select * from Tags
select * from Tags_relationships

--lấy category từ post id
select * from Post_Category_relationships p_ct join Category ct on p_ct.CategoryID = ct.CategoryID join POST p on p_ct.PostID = p.PostID where p.PostID = 3025

--lấy post mới nhất
select top 4 * from Post_Category_relationships p_ct join Category ct on p_ct.CategoryID = ct.CategoryID join POST p on p_ct.PostID = p.PostID order by p.DateOfCreate desc
select * from kus_HocVien
select * from kus_HocVienMoreInFo

--lấy bài post lý do nên chọn trung tâm
select * from POST where PostTitle like N'Giới Thiệu'

--lấy ra những ngày học (ngày điểm danh) của học viên theo ID học viên
select * from kus_NgayDiemDanh
select * from kus_DiemDanh

/*********************************************************************** 
************************************************************************
************************************************************************
	LẤY RA LỚP HỌC, 
	NGÀY KHAI GIẢNG & 
	NGÀY KẾT THÚC TỪ ID HỌC VIÊN
************************************************************************
************************************************************************
***********************************************************************/

--Tables necessary
select * from nc_KhoaHoc
select * from kus_GhiDanh
select * from kus_HocVien

--lấy Tên khóa học, ngày khai giảng, ngày kết thúc từ ID học viên
select hv.HocVienID, hv.HocVienCode, kh.TenKhoaHoc, kh.MaKhoaHoc, kh.NgayKhaiGiang, kh.NgayKetThuc
from nc_KhoaHoc kh join kus_GhiDanh gd on gd.KhoaHoc = kh.ID join kus_HocVien hv on gd.HocVienID = hv.HocVienID
where hv.HocVienCode = 1605000013

/***********************************************************************
************************************************************************
***********************************************************************/



/*********************************************************************** 
************************************************************************
************************************************************************
	LẤY RA HỌ TÊN, 
	NGÀY SINH, NƠI SINH
	GIỚI TÍNH TỪ ID HỌC VIÊN
************************************************************************
************************************************************************
***********************************************************************/
--Tables necessary
select * from kus_HocVien
select * from CustomerBasicInfo

select hv.HocVienID, hv.HocVienCode, cus.LastName, cus.FirstName, cus.Birthday, cus.BirthPlace, cus.sex , img.ImagesName, img.ImagesUrl
from kus_HocVien hv join CustomerBasicInfo cus on hv.InfoID = cus.InfoID join Images img on hv.ImgID = img.ImagesID
where hv.HocVienCode = 1605000013


/*********************************************************************** 
************************************************************************
************************************************************************
	LẤY RA NGÀY HỌC,
	ĐIỂM DANH
	CÓ PHÉP
	THEO ID HỌC VIÊN
************************************************************************
************************************************************************
***********************************************************************/
--TABLES NECCESSARY
select * from kus_DiemDanh
select * from kus_NgayDiemDanh
select * from kus_HocVien

select dd.DiemDanhID, ngaydd.NgayDiemDanh, dd.DiemDanh, dd.CoPhep
from kus_DiemDanh dd join kus_NgayDiemDanh ngaydd on dd.NgayDiemDanh = ngaydd.NgayID join kus_HocVien hv on hv.HocVienID = dd.HocVien
where hv.HocVienCode = 1605000013

--LẤY SUB ITEM CỦA CHUYÊN MỤC
select ct.CategoryID, ct.CategoryName, ct.Permalink from Category ct join Menu_Category m_ct on ct.CategoryID = m_ct.CategoryID join MainMenu m on m_ct.MenuID = m.MenuID where m.ItemName like N'Chuyên Mục' and m.ItemIndex > 7

--LẤY TIN XEM NHIỀU NHẤT
select top 3 p.PostID, p.PostTitle, p.DateOfCreate, img.ImagesUrl from POST p join Images img on p.PostImage = img.ImagesID order by ViewCount desc

--LẤY POST CÙNG CHỦ ĐỀ
select * from POST p join Post_Category_relationships p_ct on p.PostID = p_ct.PostID join Images img on p.PostImage = img.ImagesID where p_ct.CategoryID = ( select p_ct.CategoryID from POST p join Post_Category_relationships p_ct on p.PostID = p_ct.PostID where p.PostID = 3010 ) and p.PostID != 3010

--LẤY POST TIN TỨC
select * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Tin Tức'

--LẤY DANH SÁCH LOẠI KHÓA HỌC
select * from Category ct join Images img on ct.CateogryImage = img.ImagesID where CategoryName like N'ASEC%'

--LẤY DANH SÁCH THÔNG TIN LỚP HỌC KHAI GIẢNG
select * from POST p join Post_Category_relationships p_ct on p.PostID = p_ct.PostID join Category ct on p_ct.CategoryID = ct.CategoryID where ct.CategoryID = 3121

--LẤY EVENT FUNDAY
select * from ImagesType where ImagesTypeID = 1011

--LẤY ALBUMS FUNDAY
select * from Images where ImagesTypeID = 1011