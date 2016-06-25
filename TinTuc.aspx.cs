using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Text;
using System.Data;

public partial class TinTuc : System.Web.UI.Page
{
    private BLL_Post _post = new BLL_Post();
    private BLL_Category _category = new BLL_Category();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_Tags _tags = new BLL_Tags();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DSTinTuc();
            ChuyenMuc();
            TinXemNhieu();
            Tags();
        }
    }

    //Main Column - List Tin Tuc
    private void DSTinTuc()
    {
        pager1.PageSize = 3;
        pager1.DataSource = _post.AllNews().DefaultView;
        pager1.BindToControl = rpTinTuc;

        rpTinTuc.DataSource = pager1.DataSourcePaged;
    }    

    //Right Column - Chuyên mục
    private void ChuyenMuc()
    {
        rpChuyenMuc.DataSource = _category.SubItemChuyenMuc();
        rpChuyenMuc.DataBind();
    }

    //Right Column - Tags
    private void Tags()
    {
        rpTags.DataSource = _tags.AllTag();
        rpTags.DataBind();
    }

    //Right Column - Tin Xem Nhiều
    private void TinXemNhieu()
    {
        rpTinXemNhieu.DataSource = _post.PostViewest(5);
        rpTinXemNhieu.DataBind();
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

    //tăng view
    protected void btnDocTiep_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        //get postID
        int postid = Convert.ToInt32(btn.CommandArgument);
        //Increase ViewCount
        UpdateViewCount(postid);
        //Redirect to post page
        Response.Redirect(XoaKyTuDacBiet(PostTitle(postid)).ToLower() + "-" + postid);
    }

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