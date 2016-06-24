<%@ Page Title="Tuyển Dụng | Trung Tâm Ngoại Ngữ Chân Trời Mới" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KetQuaTimKiem.aspx.cs" Inherits="KetQuaTimKiem" %>

<%@ Register TagPrefix="phantrang" Namespace="SiteUtils" Assembly="CollectionPager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="KetQuaTimKiem">
        <!-- Start Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <h2 class="title-page">Kết Quả Tìm Kiếm</h2>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <ul class="breadcrumbs">
                            <li><a href="Default2.aspx">Trang Chủ</a></li>
                            <li>Kết Quả Tìm Kiếm</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->

        <!-- Content -->
        <div id="content">
            <div class="container">
                <div class="row">
                    <!-- Start Kết Quả Tìm Kiếm -->
                    <div class="col-xs-12 col-sm-6 col-md-9 col-lg-9">

                        <asp:Repeater ID="rpKetQuaTimKiem" runat="server">
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                        <a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>">
                                            <img alt="<%# Eval("ImagesName") %>" src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive img-thumbnail" />
                                        </a>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 post">
                                        <h2 class="post-title"><a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>"><%# Eval("PostTitle") %></a></h2>
                                        <p class="post-date">Đăng vào ngày <%# Eval("DateOfCreate","{0: dd/MM/yyyy}") %></p>
                                        <p class="post-meta"><%# Eval("MetaDescription") %></p>
                                        <p class="post-bottom"><a class="main-button" href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>">Đọc tiếp <i class="fa fa-angle-right"></i></a></p>
                                    </div>
                                </div>
                                <br />
                            </ItemTemplate>
                        </asp:Repeater>

                        <!-- Start Pagination -->
                        <div class="pager">
                            <phantrang:collectionpager id="pager1"
                                firsttext="First"
                                backtext="«"
                                labeltext=""
                                lasttext="Last"
                                nexttext="»"
                                showfirstlast="True"
                                slidersize="5" pagingmode="QueryString"
                                runat="server" backnextlinkseparator="" backnextlocation="Split"
                                pagenumbersdisplay="Numbers" resultslocation="None"
                                backnextdisplay="Buttons" querystringkey="page">
                            </phantrang:collectionpager>
                        </div>
                        <!-- End Pagination -->

                    </div>
                    <!-- End Blog Posts -->


                    <!--Sidebar-->
                    <div class="hidden-xs col-sm-6 col-md-3 col-lg-3 sidebar right-sidebar">

                        <!-- Video Widget -->
                        <div class="widget">
                            <h4 class="sidebar-title">Video <span class="head-line"></span></h4>
                            <div class="embed-responsive embed-responsive-4by3">
                                <iframe src="https://www.youtube.com/embed/W7QYqI2im-Y" frameborder="0" allowfullscreen></iframe>
                            </div>
                        </div>


                        <!-- Chuyên Mục -->
                        <div class="widget widget-categories">
                            <h4 class="sidebar-title">Chuyên Mục <span class="head-line"></span></h4>
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
                            <h4 class="sidebar-title">Bài Viết Xem Nhiều <span class="head-line"></span></h4>
                            <ul>
                                <asp:Repeater ID="rpTinXemNhieu" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <div class="media">
                                                <div class="widget-thumb media-left">
                                                    <a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>">
                                                        <img src="<%# HomeUrl + Eval("ImagesUrl") %>" alt="<%# Eval("ImagesName") %>" class="img-responsive" /></a>
                                                </div>
                                                <div class="widget-content media-body">
                                                    <h5 class="post-title"><a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>"><%# Eval("PostTitle") %></a></h5>
                                                    <span class="post-date">Đăng ngày <%# Eval("DateOfCreate","{0:dd/MM/yyyy}") %></span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                            <br />
                            <a href="TinXemNhieu.aspx" class="btn btn-system">Xem thêm...</a>
                        </div>
                        <!-- End Posts xem nhiều nhất -->


                        <!-- Tags Widget -->
                        <div class="widget widget-tags">
                            <h4 class="sidebar-title">Tags <span class="head-line"></span></h4>
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
                            <h4 class="sidebar-title">Tin Tức <span class="head-line"></span></h4>
                            <ul>
                                <asp:Repeater ID="rpTinTuc" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <div class="media">
                                                <div class="widget-thumb media-left">
                                                    <a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>">
                                                        <img src="<%# HomeUrl + Eval("ImagesUrl") %>" alt="<%# Eval("ImagesName") %>" class="img-responsive" /></a>
                                                </div>
                                                <div class="widget-content media-body">
                                                    <h5 class="post-title"><a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>"><%# Eval("PostTitle") %></a></h5>
                                                    <span class="post-date">Đăng ngày <%# Eval("DateOfCreate","{0:dd/MM/yyyy}") %></span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                            <br />
                            <a href="TinTuc.aspx" class="btn btn-system">Xem thêm...</a>
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

