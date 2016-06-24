<%@ Page Title="Chương Trình Học | Trung Tâm Ngoại Ngữ Chân Trời Mới" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChuongTrinhHoc.aspx.cs" Inherits="ChuongTrinhHoc" %>

<%@ Register TagPrefix="phantrang" Namespace="SiteUtils" Assembly="CollectionPager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ChuongTrinhHoc">
        <!-- Start Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="title-page">Chương Trình Học</h2>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumbs">
                            <li><a href="Default2.aspx">Trang Chủ</a></li>
                            <li>Chương Trình Học</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->


        <!-- Start Content -->
        <div id="content">
            <div class="container">
                <div class="row blog-page">

                    <!-- Start Blog Posts -->
                    <div class="col-md-9 blog-box">

                        <%-- Start Chương Trình Học --%>
                        <asp:Repeater ID="rpChuongTrinhHoc" runat="server">
                            <ItemTemplate>
                                <div class="blog-post">
                                    <!-- Post Thumb -->
                                    <div class="post-head">
                                        <a class="lightbox" title="This is an image title" href="<%# HomeUrl + Eval("ImagesUrl") %>">
                                            <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                            <img alt="<%# Eval("ImagesName") %>" src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive" />
                                        </a>
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <div class="post-type"><i class="fa fa-picture-o"></i></div>
                                        <h2><a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>"><%# Eval("PostTitle") %></a></h2>
                                        <ul class="post-meta">
                                            <li>By <a href="#">iThemesLab</a></li>
                                            <li><%# Eval("DateOfCreate","{0: dd/MM/yyyy}") %></li>
                                        </ul>
                                        <p><%# Eval("MetaDescription") %></p>
                                        <a class="main-button" href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>">Đọc tiếp <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%-- End Chương Trình Học --%>

                        <!-- Start Pagination -->
                        <div class="pager">
                            <phantrang:CollectionPager ID="pager1"
                                FirstText="First"
                                BackText="«"
                                LabelText=""
                                LastText="Last"
                                NextText="»"
                                ShowFirstLast="True"
                                SliderSize="5" PagingMode="QueryString"
                                runat="server" BackNextLinkSeparator="" BackNextLocation="Split"
                                PageNumbersDisplay="Numbers" ResultsLocation="None"
                                BackNextDisplay="Buttons" QueryStringKey="page">
                            </phantrang:CollectionPager>
                        </div>
                        <!-- End Pagination -->

                    </div>
                    <!-- End Blog Posts -->


                    <!--Sidebar-->
                    <div class="col-md-3 sidebar right-sidebar">

                        <!-- Video Widget -->
                        <div class="widget">
                            <h4>Video <span class="head-line"></span></h4>
                            <div class="embed-responsive embed-responsive-4by3">
                                <iframe src="https://www.youtube.com/embed/WyuOMffxBA4" frameborder="0" allowfullscreen></iframe>
                            </div>
                        </div>


                        <!-- Chuyên Mục -->
                        <div class="widget widget-categories">
                            <h4>Chuyên Mục <span class="head-line"></span></h4>
                            <ul>
                                <asp:Repeater ID="rpChuyenMuc" runat="server">
                                    <ItemTemplate>
                                        <li><a href="<%# Eval("Permalink") %>"><%# Eval("CategoryName") %></a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- End Chuyên Mục -->


                        <!-- Posts xem nhiều nhất -->
                        <div class="widget widget-popular-posts">
                            <h4>Bài Viết Xem Nhiều <span class="head-line"></span></h4>
                            <ul>
                                <asp:Repeater ID="rpTinXemNhieu" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <div class="widget-thumb">
                                                <a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>">
                                                    <img src="<%# HomeUrl + Eval("ImagesUrl") %>" alt="<%# Eval("ImagesName") %>" class="img-responsive" /></a>
                                            </div>
                                            <div class="widget-content">
                                                <h5 class="post-title"><a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>"><%# Eval("PostTitle") %></a></h5>
                                                <span class="post-date"><%# Eval("DateOfCreate","{0:dd/MM/yyyy}") %></span>
                                            </div>
                                            <div class="clearfix"></div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- End Posts xem nhiều nhất -->


                        <!-- Tags Widget -->
                        <div class="widget widget-tags">
                            <h4>Tags <span class="head-line"></span></h4>
                            <div class="tagcloud">
                                <a href="#">Portfolio</a>
                                <a href="#">Theme</a>
                                <a href="#">Mobile</a>
                                <a href="#">Design</a>
                                <a href="#">Wordpress</a>
                                <a href="#">Jquery</a>
                                <a href="#">CSS</a>
                                <a href="#">Modern</a>
                                <a href="#">Theme</a>
                                <a href="#">Icons</a>
                                <a href="#">Google</a>
                            </div>
                        </div>


                        <!-- Posts tin tức -->
                        <div class="widget widget-popular-posts">
                            <h4>Tin Tức <span class="head-line"></span></h4>
                            <ul>
                                <asp:Repeater ID="rpTinTuc" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <div class="widget-thumb">
                                                <a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>">
                                                    <img src="<%# HomeUrl + Eval("ImagesUrl") %>" alt="<%# Eval("ImagesName") %>" class="img-responsive" /></a>
                                            </div>
                                            <div class="widget-content">
                                                <h5 class="post-title"><a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>"><%# Eval("PostTitle") %></a></h5>
                                                <span class="post-date"><%# Eval("DateOfCreate","{0:dd/MM/yyyy}") %></span>
                                            </div>
                                            <div class="clearfix"></div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- End Posts tin tức -->

                    </div>
                    <!--End sidebar-->


                </div>
            </div>
        </div>
        <!-- End Content -->
    </div>
</asp:Content>