<%@ Page Title="Chi Tiết | Trung Tâm Ngoại Ngữ Chân Trời Mới" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTiet.aspx.cs" Inherits="ChiTietBaiViet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ChiTietBaiViet">
        <!-- Start Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="title-page">Bài Viết</h2>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumbs">
                            <li><a href="Default2.aspx">Trang Chủ</a></li>
                            <li><a href="#">Chương Trình Học</a></li>
                            <li>Bài Viết</li>
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

                        <!-- Start Single Post Area -->
                        <asp:Repeater ID="rpDetailPost" runat="server">
                            <ItemTemplate>
                                <div class="blog-post gallery-post">

                                    <!-- Start Single Post Content -->
                                    <div class="post-content">
                                        <div class="post-type"><i class="fa fa-picture-o"></i></div>
                                        <h2><%# Eval("PostTitle") %></h2>
                                        <ul class="post-meta">
                                            <li>Đăng vào ngày<%# Eval("DateOfCreate","{0: dd/MM/yyyy}") %></li>
                                        </ul>
                                        <p><%# Eval("PostContentVN") %></p>

                                        <div class="post-bottom clearfix">
                                            <div class="post-share">
                                                <span>Share This Post:</span>
                                                <div class='fb-like' data-action='like' data-href='<%=CurrentUrl %>' data-layout='button_count' data-share='true' data-show-faces='false' data-width='520'></div>
                                            </div>
                                        </div>
                                        <%-- FB Comment --%>
                                        <div class="fb-comments" data-href="<%=CurrentUrl %>" data-numposts="5" data-width="100%"></div>
                                    </div>
                                    <!-- End Single Post Content -->

                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- End Single Post Area -->

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
