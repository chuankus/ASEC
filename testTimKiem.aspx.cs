using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testTimKiem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        string keyword = txtTimKiem.Text;

        if (keyword == "")
            Response.Redirect("Default2.aspx");
        else
            Response.Redirect("KetQuaTimKiem.aspx?keyword=" + keyword);
    }
}