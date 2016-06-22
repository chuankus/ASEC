using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BLL_Category
/// </summary>
public class BLL_Category
{
    private DAL_Connection _connect;
    public BLL_Category()
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

    //Get Category from Post ID
    public DataTable GetCategoryfromPostID(int postid)
    {
        this.OpenConnect();

        string query = "select * from Post_Category_relationships p_ct join Category ct on p_ct.CategoryID = ct.CategoryID join POST p on p_ct.PostID = p.PostID where p.PostID = " + postid;
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Sub Item of Chuyên Mục
    public DataTable SubItemChuyenMuc()
    {
        this.OpenConnect();

        string query = "select ct.CategoryID, ct.CategoryName, ct.Permalink from Category ct join Menu_Category m_ct on ct.CategoryID = m_ct.CategoryID join MainMenu m on m_ct.MenuID = m.MenuID where m.ItemName like N'Chuyên Mục' and m.ItemIndex > 7";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }
}