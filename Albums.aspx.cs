using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Albums : System.Web.UI.Page
{
    private BLL_HinhAnh _hinhanh = new BLL_HinhAnh();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    public string EventName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FunDay();
        }
    }

    //Event FUNDAY
    private void FunDay()
    {
        rpFunday.DataSource = _hinhanh.SuKienFunday();
        rpFunday.DataBind();
    }

    //Albums FUNDAY
    public DataTable AlbumFunday(string imagetypeid)
    {
        DataTable album = _hinhanh.AlbumFunday(imagetypeid);
        return album;
    }
}