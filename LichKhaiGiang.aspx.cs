using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LichKhaiGiang : System.Web.UI.Page
{
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_Post _post = new BLL_Post();
    private BLL_Category _category = new BLL_Category();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            KhaiGiangLop();
            ChuyenMuc();
            TinXemNhieu();
            TinTuc();
        }
    }

    //Main Column - Lịch khai giảng các lớp
    private void KhaiGiangLop()
    {
        pager1.PageSize = 3;
        pager1.DataSource = _post.KhaiGiangLopHoc().DefaultView;
        pager1.BindToControl = rpLichKhaiGiang;
        rpLichKhaiGiang.DataSource = pager1.DataSourcePaged;
    }

    //Right Column - Chuyên mục
    private void ChuyenMuc()
    {
        rpChuyenMuc.DataSource = _category.SubItemChuyenMuc();
        rpChuyenMuc.DataBind();
    }

    //Right Column - Tin Xem Nhiều
    private void TinXemNhieu()
    {
        rpTinXemNhieu.DataSource = _post.PostViewest(5);
        rpTinXemNhieu.DataBind();
    }

    //Right Column - Tin Tức
    private void TinTuc()
    {
        rpTinTuc.DataSource = _post.TopTinTuc(4);
        rpTinTuc.DataBind();
    }

    //Chuyển tiêu đề tiếng việt có dấu sang không dấu dạng URL abc-def-ghi
    public string XoaKyTuDacBiet(string str)
    {
        string title_url = "";
        str = str.Replace(" ", "-");
        str = str.Replace(".", "-");
        str = str.Replace(",", "-");
        str = str.Replace(";", "-");
        str = str.Replace(":", "-");
        str = str.Replace("%", "");
        Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
        string temp = str.Normalize(NormalizationForm.FormD);
        title_url = regex.Replace(temp, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D');
        return title_url;
    }
}