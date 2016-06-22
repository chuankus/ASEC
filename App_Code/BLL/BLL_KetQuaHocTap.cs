using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BLL_KetQuaHocTap
/// </summary>
public class BLL_KetQuaHocTap
{
    private DAL_Connection _connect;
    public BLL_KetQuaHocTap()
    {
        _connect = new DAL_Connection();
    }

    //Open Connect
    public bool OpenConnect()
    {
        return _connect.OpenConnect();
    }

    //Close Connect
    public void CloseConnect()
    {
        _connect.CloseConnect();
    }

    //LẤY RA THÔNG TIN LỚP HỌC, NGÀY KHAI GIẢNG & NGÀY KẾT THÚC TỪ ID HỌC VIÊN
    public DataTable GetInfoCourse(int StudentCode)
    {
        OpenConnect();

        string query = "select hv.HocVienID, hv.HocVienCode, kh.TenKhoaHoc, kh.MaKhoaHoc, kh.NgayKhaiGiang, kh.NgayKetThuc from nc_KhoaHoc kh join kus_GhiDanh gd on gd.KhoaHoc = kh.ID join kus_HocVien hv on gd.HocVienID = hv.HocVienID where hv.HocVienCode = " + StudentCode;
        DataTable result = _connect.GetDataTable(query);

        CloseConnect();
        return result;
    }

    //LẤY RA THÔNG TIN HỌ TÊN, NGÀY SINH, NƠI SINH, GIỚI TÍNH TỪ ID HỌC VIÊN
    public DataTable GetInfoStudent(int StudentCode)
    {
        OpenConnect();

        string query = "select hv.HocVienID, hv.HocVienCode, cus.LastName, cus.FirstName, cus.Birthday, cus.BirthPlace, cus.sex, img.ImagesName, img.ImagesUrl from kus_HocVien hv join CustomerBasicInfo cus on hv.InfoID = cus.InfoID join Images img on hv.ImgID = img.ImagesID where hv.HocVienCode = " + StudentCode;
        DataTable result = _connect.GetDataTable(query);

        CloseConnect();
        return result;
    }

    //	LẤY RA THÔNG TIN KHÓA HỌC, ĐIỂM DANH, CÓ PHÉP THEO ID HỌC VIÊN
    public DataTable GetInfoDiemDanh(int StudentCode)
    {
        OpenConnect();

        string query = "select dd.DiemDanhID, ngaydd.NgayDiemDanh, dd.DiemDanh, dd.CoPhep from kus_DiemDanh dd join kus_NgayDiemDanh ngaydd on dd.NgayDiemDanh = ngaydd.NgayID join kus_HocVien hv on hv.HocVienID = dd.HocVien where hv.HocVienCode = " + StudentCode;
        DataTable result = _connect.GetDataTable(query);

        CloseConnect();
        return result;
    }
}