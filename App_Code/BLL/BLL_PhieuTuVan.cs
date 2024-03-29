﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BLL_PhieuTuVan
/// </summary>
public class BLL_PhieuTuVan
{
    private DAL_Connection _connect;
    public BLL_PhieuTuVan()
    {
        _connect = new DAL_Connection();
    }

    //Open Connect
    public bool OpenConnect()
    {
        return _connect.OpenConnect();
    }

    //Close Connect
    public void CloseConnect()
    {
        _connect.CloseConnect();
    }

    //Thêm phiếu tư vấn
    public int ThemPhieuTuVan(string fullname, string email, string phone, string message)
    {
        this.OpenConnect();

        string query = "insert into REGISTRATION_FORM_ADVISORY(FullName, Email, Phone, ContentAdvisory, Status_form, FF, ProgressForm) values(@fullname, @email, @phone, @message, 0, 1, 0)";
        List<SqlParameter> listParams = new List<SqlParameter>();
        listParams.Add(new SqlParameter("@fullname", fullname));
        listParams.Add(new SqlParameter("@email", email));
        listParams.Add(new SqlParameter("@phone", phone));
        listParams.Add(new SqlParameter("@message", message));

        int result = this._connect.ExecQuery(query, listParams);

        this.CloseConnect();
        return result;
    }
}