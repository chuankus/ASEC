using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Text.RegularExpressions;
using System.Data;

public partial class ChiTietBaiViet : System.Web.UI.Page
{
    private BLL_Post _post = new BLL_Post();
    private BLL_Category _category = new BLL_Category();
    private BLL_Tags _tags = new BLL_Tags();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    public string CurrentUrl = "";
    public string Breadcrumb = "";
    public string UrlBreadcrumb = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PostDetail();
            ChuyenMuc();
            TinXemNhieu();
            TinTuc();
            CurrentUrl = Request.Url.AbsoluteUri;
            BreadcrumbPage();
            Tags();
        }
    }

    //Main Column - Detail post
    private void PostDetail()
    {
        int postid = Convert.ToInt32(RouteData.Values["id"].ToString());
        rpDetailPost.DataSource = _post.PostDetail(postid);
        rpDetailPost.DataBind();
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

    //Right Column - Tags
    private void Tags()
    {
        rpTags.DataSource = _tags.AllTag();
        rpTags.DataBind();
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
        str = str.Replace("/", "-");
        str = str.Replace("(", "-");
        str = str.Replace(")", "-");
        Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
        string temp = str.Normalize(NormalizationForm.FormD);
        title_url = regex.Replace(temp, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D');
        return title_url;
    }

    //Breadcrumb
    private void BreadcrumbPage()
    {
        int postid = Convert.ToInt32(RouteData.Values["id"].ToString());
        DataTable result = _category.GetCategoryfromPostID(postid);
        foreach (DataRow item in result.Rows)
        {
            Breadcrumb = item[1].ToString();
            UrlBreadcrumb = item[2].ToString();
        }
    }

    //tăng view
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