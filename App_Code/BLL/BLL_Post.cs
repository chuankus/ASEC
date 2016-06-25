using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;
using System.Text.RegularExpressions;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BLL_Post
/// </summary>
public class BLL_Post
{
    private DAL_Connection _connect;
    public BLL_Post()
    {
        _connect = new DAL_Connection();
    }

    //Open Connect
    public bool OpenConnect()
    {
        return this._connect.OpenConnect();
    }

    //Close Connect
    public void CloseConnect()
    {
        this._connect.CloseConnect();
    }

    //Post tuyển dụng
    public DataTable TuyenDung()
    {
        this.OpenConnect();

        string query = "select * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Tuyển Dụng'";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Post chương trình học
    public DataTable ChuongTrinhHoc(int top)
    {
        this.OpenConnect();

        string query = "select top " + top + " * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Chương Trình Học'";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //All Post chương trình học
    public DataTable AllChuongTrinhHoc()
    {
        this.OpenConnect();

        string query = "select * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Chương Trình Học'";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Tăng lượt xem
    public int TangView(int postId, int firstView)
    {
        if (!this.OpenConnect())
            this.OpenConnect();

        string query = "update POST set ViewCount = (@firstView + 1) where PostID = @postId";
        List<SqlParameter> listParams = new List<SqlParameter>();
        listParams.Add(new SqlParameter("@postId", postId));
        listParams.Add(new SqlParameter("@firstView", firstView));

        int result = this._connect.ExecQuery(query, listParams);

        this.CloseConnect();
        return result;
    }

    //Post Detail
    public DataTable PostDetail(int postid)
    {
        this.OpenConnect();

        string query = "select * from POST p join Images img on p.PostImage = img.ImagesID where PostID = " + postid;
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //PostViewest - top 5
    public DataTable PostViewest(int top)
    {
        this.OpenConnect();

        string query = "select top " + top + " p.PostID, p.PostTitle, p.DateOfCreate, img.ImagesUrl, img.ImagesName, p.ViewCount from POST p join Images img on p.PostImage = img.ImagesID order by ViewCount desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //All of post viewest
    public DataTable ListPostViewest()
    {
        this.OpenConnect();

        string query = "select p.PostID, p.PostTitle, p.MetaDescription, p.DateOfCreate, img.ImagesUrl, img.ImagesName, p.ViewCount from POST p join Images img on p.PostImage = img.ImagesID order by ViewCount desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Post of News - trang chủ
    public DataTable TopNews(int top)
    {
        this.OpenConnect();

        string query = "select top " + top + " * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Tin Tức'";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Tất cả bài viết tin tức
    public DataTable AllNews()
    {
        this.OpenConnect();

        string query = "select * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Tin Tức'";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Top tin tức
    public DataTable TopTinTuc(int top)
    {
        this.OpenConnect();

        string query = "select top " + top + " * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Tin Tức'";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Bài viết mới nhất
    public DataTable PostMoiNhat()
    {
        this.OpenConnect();

        string query = "select top 8 * from Post_Category_relationships p_ct join Category ct on p_ct.CategoryID = ct.CategoryID join POST p on p_ct.PostID = p.PostID join Images img on p.PostImage = img.ImagesID where ct.CategoryName not like N'Tin Tức' order by p.DateOfCreate desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Bài viết mới nhất footer
    public DataTable TopMoiNhat(int top)
    {
        this.OpenConnect();

        string query = "select top " + top + " * from Post_Category_relationships p_ct join Category ct on p_ct.CategoryID = ct.CategoryID join POST p on p_ct.PostID = p.PostID join Images img on p.PostImage = img.ImagesID where ct.CategoryName not like N'Tin Tức' order by p.DateOfCreate desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Bài viết cùng chủ đề
    public DataTable PostCungChuDe(string idPost)
    {
        if (!this.OpenConnect())
            this.OpenConnect();

        string query = "select * from POST p join Post_Category_relationships p_ct on p.PostID = p_ct.PostID join Images img on p.PostImage = img.ImagesID where p_ct.CategoryID = ( select p_ct.CategoryID from POST p join Post_Category_relationships p_ct on p.PostID = p_ct.PostID where p.PostID = " + idPost + " ) and p.PostID != " + idPost;
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //DANH SÁCH LỚP CHUẨN BỊ KHAI GIẢNG
    public DataTable KhaiGiangLopHoc()
    {
        if (!this.OpenConnect())
            this.OpenConnect();

        string query = "select * from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Lịch Khai Giảng' order by p.DateOfCreate desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Tìm kiếm Full Text Search
    public DataTable TimKiemFTS(string keyword)
    {
        this.OpenConnect();

        //string query = "select * from POST p join Images img on p.PostImage = img.ImagesID where FREETEXT((PostTitle), '" + keyword + "')";
        string query = "select * from POST p join Images img on p.PostImage = img.ImagesID where p.PostTitle like N'%" + keyword + "%'";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }
}