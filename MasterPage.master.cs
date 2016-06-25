using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;
using System.Text;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private BLL_Menu _menu = new BLL_Menu();
    private BLL_Post _post = new BLL_Post();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LayMenu();
            PostMoiNhat();
        }
    }

    //Menu Chính
    private void LayMenu()
    {
        rpMenu.DataSource = this._menu.Get_Main_Menu();
        rpMenu.DataBind();

        //Mobile Menu
        rpMobileMenu.DataSource = _menu.Get_Main_Menu();
        rpMobileMenu.DataBind();
    }

    //Menu Con
    public DataTable SubMenu(string idMenu)
    {
        DataTable MenuCon = this._menu.Get_Sub_Menu(idMenu);
        return MenuCon;
    }

    //protected void btnTimKiem_Click(object sender, EventArgs e)
    //{
    //    string keyword = txtTimKiem.Value;

    //    if (keyword == "")
    //        Response.Redirect("Default.aspx");
    //    else
    //        Response.Redirect("KetQuaTimKiem.aspx?keyword= " + keyword);
    //}

    //protected void txtTimKiem_TextChanged(object sender, EventArgs e)
    //{
    //    string keyword = txtTimKiem.Text;

    //    if (keyword == "")
    //        Response.Redirect("Default2.aspx");
    //    else
    //        Response.Redirect("KetQuaTimKiem.aspx?keyword= " + XoaKyTuDacBiet(keyword));
    //}

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
        str = str.Replace("/", "-");
        str = str.Replace("(", "-");
        str = str.Replace(")", "-");
        Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
        string temp = str.Normalize(NormalizationForm.FormD);
        title_url = regex.Replace(temp, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D');
        return title_url;
    }

    //Post mới nhất
    private void PostMoiNhat()
    {
        rpPostMoiNhat.DataSource = _post.TopMoiNhat(3);
        rpPostMoiNhat.DataBind();
    }

    //Tăng view
    //protected void btnDocTiep_Click(object sender, EventArgs e)
    //{
    //    Button btn = sender as Button;
    //    //get postID
    //    int postid = Convert.ToInt32(btn.CommandArgument);
    //    //Increase ViewCount
    //    UpdateViewCount(postid);
    //    //Redirect to post page
    //    Response.Redirect(XoaKyTuDacBiet(PostTitle(postid)).ToLower() + "-" + postid);
    //}

    private void UpdateViewCount(int postId)
    {
        _post.TangView(postId, GetFirstView(postId));
    }

    private int GetFirstView(int postId)
    {
        int viewcount = 0;
        DataTable tb = _post.PostDetail(postId);
        foreach (DataRow r in tb.Rows)
        {
            viewcount = (string.IsNullOrEmpty(r[10].ToString())) ? 0 : (int)r[10];
        }
        return viewcount;
    }

    private string PostTitle(int postID)
    {
        string postTitle = "";
        DataTable tb = _post.PostDetail(postID);
        foreach (DataRow r in tb.Rows)
        {
            postTitle = r[1].ToString();
        }
        return postTitle;
    }

    protected void linkbtnDocTiep_Click(object sender, EventArgs e)
    {
        LinkButton linkbtn = sender as LinkButton;
        //get postID
        int postid = Convert.ToInt32(linkbtn.CommandArgument);
        //Increase ViewCount
        UpdateViewCount(postid);
        //Redirect to post
        Response.Redirect(XoaKyTuDacBiet(PostTitle(postid)).ToLower() + "-" + postid);
    }
    //end tăng view
}
