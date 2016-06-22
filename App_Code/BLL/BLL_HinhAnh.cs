using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BLL_HinhAnh
/// </summary>
public class BLL_HinhAnh
{
    private DAL_Connection _connect;
    public BLL_HinhAnh()
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

    //Lấy Sự kiện FUNDAY
    public DataTable SuKienFunday()
    {
        this.OpenConnect();

        string query = "select * from ImagesType where ImagesTypeID = 1011";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Lấy Albums Sự Kiện FUNDAY
    public DataTable AlbumFunday(string imagetypeid)
    {
        this.OpenConnect();

        string query = "select * from Images where ImagesTypeID = " + imagetypeid;
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }
}