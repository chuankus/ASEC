using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private BLL_Menu _menu = new BLL_Menu();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LayMenu();
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
}
