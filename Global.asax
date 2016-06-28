<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void RegisterRoutes(RouteCollection routes)
    {
        //Detail post để sau cùng, tránh tình trạng chuyển hướng sai
        routes.MapPageRoute("Default2", "trang-chu", "~/Default2.aspx");
        routes.MapPageRoute("ChuongTrinhHoc", "chuong-trinh-hoc", "~/ChuongTrinhHoc.aspx");
        routes.MapPageRoute("Album", "albums", "~/Albums.aspx");
        routes.MapPageRoute("HoiDap", "hoi-dap", "~/Faq.aspx");
        routes.MapPageRoute("GioiThieu", "gioi-thieu", "~/GioiThieu.aspx");
        routes.MapPageRoute("LichKhaiGiang", "lich-khai-giang", "~/LichKhaiGiang.aspx");
        routes.MapPageRoute("LienHe", "lien-he", "~/LienHe.aspx");
        routes.MapPageRoute("TinTuc", "tin-tuc", "~/TinTuc.aspx");
        routes.MapPageRoute("TinXemNhieu", "tin-xem-nhieu", "~/TinXemNhieu.aspx");
        routes.MapPageRoute("TuyenDung", "tuyen-dung", "~/TuyenDung.aspx");
        routes.MapPageRoute("DetailPost", "{title}-{id}", "~/ChiTiet.aspx");
    }

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
