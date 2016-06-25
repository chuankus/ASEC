using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BLL_Tags
/// </summary>
public class BLL_Tags
{
    private DAL_Connection _connect;
    public BLL_Tags()
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

    //All tags
    public DataTable AllTag()
    {
        this.OpenConnect();

        string query = "select * from Tags";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }
}