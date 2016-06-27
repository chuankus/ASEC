using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Text.RegularExpressions;
using System.Data;

public partial class _Default2 : System.Web.UI.Page
{
    private BLL_Post _post = new BLL_Post();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_PhieuTuVan _phieutuvan = new BLL_PhieuTuVan();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LayPostMoiNhat();
            LayTinTuc();
        }
    }

    //Post mới nhất
    private void LayPostMoiNhat()
    {
        //rpPostMoiNhat.DataSource = _post.ChuongTrinhHoc(3);
        //rpPostMoiNhat.DataBind();
    }

    //Tin tức
    private void LayTinTuc()
    {
        rpTinTuc.DataSource = _post.TopNews(6);
        rpTinTuc.DataBind();
    }

    private void ResetTextbox()
    {
        txtHoten.Text = "";
        txtEmail.Text = "";
        txtDienthoai.Text = "";
        txtNoidung.Text = "";
    }

    protected void btnGui_Click(object sender, EventArgs e)
    {
        string fname = "";
        string email = "";
        string phone = "";
        string message = "";

        fname = txtHoten.Text;
        email = txtEmail.Text;
        phone = txtDienthoai.Text;
        message = txtNoidung.Text;

        int result = this._phieutuvan.ThemPhieuTuVan(fname, email, phone, message);
        if (result == 1)
        {
            Response.Write("<script>alert('Gửi thông tin thành công. Công ty sẽ cố gắng liên hệ sớm nhất có thể với bạn. Cảm ơn bạn. Chúc bạn một ngày làm việc vui vẻ. Have Fun !')</script>");
            ResetTextbox();
        }
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