<%@ Page Title="Chi Tiết | Trung Tâm Ngoại Ngữ Chân Trời Mới" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTiet.aspx.cs" Inherits="ChiTietBaiViet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ChiTietBaiViet">
        <!-- Start Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <h2 class="title-page">Bài Viết</h2>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <ul class="breadcrumbs">
                            <li><a href="Default2.aspx">Trang Chủ</a></li>
                            <li><a href="<%=UrlBreadcrumb %>"><%=Breadcrumb %></a></li>
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
                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 blog-box">

                        <!-- Start Single Post Area -->
                        <asp:Repeater ID="rpDetailPost" runat="server">
                            <ItemTemplate>
                                <div class="blog-post gallery-post">

                                    <!-- Start Single Post Content -->
                                    <div class="post-content">
                                        <div class="post-type"><i class="fa fa-picture-o"></i></div>
                                        <h2><%# Eval("PostTitle") %></h2>
                                        <p class="post-date"><i class="fa fa-calendar"></i>&nbsp;<%# Eval("DateOfCreate","{0: dd/MM/yyyy}") %> - <%# Eval("ViewCount") %>&nbsp;<i class="fa fa-eye"></i></p>
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
                    <div class="hidden-xs col-sm-12 col-md-3 col-lg-3 sidebar right-sidebar">

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
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("PostID") %>' OnClick="linkbtnDocTiep_Click" NavigateUrl='<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) + "-" + Eval("PostID") %>'>
                                                        <img alt="<%# Eval("ImagesName") %>" src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive img-thumbnail" />
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="widget-content media-body">
                                                    <h5 class="post-title"><asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("PostID") %>' OnClick="linkbtnDocTiep_Click" NavigateUrl='<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) + "-" + Eval("PostID") %>'><%# Eval("PostTitle") %></asp:LinkButton></h5>
                                                    <span class="post-date"><i class="fa fa-calendar"></i>&nbsp; <%# Eval("DateOfCreate","{0:dd/MM/yyyy}") %> - <%# string.IsNullOrEmpty(Eval("ViewCount").ToString()) ? 0 : Eval("ViewCount") %>&nbsp;<i class="fa fa-eye"></i></span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                            <br />
                            <a href="#" class="btn btn-system">Xem thêm...</a>
                        </div>
                        <!-- End Posts xem nhiều nhất -->


                        <!-- Tags Widget -->
                        <div class="widget widget-tags">
                            <h4 class="sidebar-title">Tags <span class="head-line"></span></h4>
                            <div class="tagcloud">
                                <asp:Repeater ID="rpTags" runat="server">
                                    <ItemTemplate>
                                        <a href="#"><%# Eval("TagsName") %></a>
                                    </ItemTemplate>
                                </asp:Repeater>
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
                                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("PostID") %>' OnClick="linkbtnDocTiep_Click" NavigateUrl='<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) + "-" + Eval("PostID") %>'>
                                                        <img alt="<%# Eval("ImagesName") %>" src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive img-thumbnail" />
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="widget-content media-body">
                                                    <h5 class="post-title"><asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%# Eval("PostID") %>' OnClick="linkbtnDocTiep_Click" NavigateUrl='<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) + "-" + Eval("PostID") %>'><%# Eval("PostTitle") %></asp:LinkButton></h5>
                                                    <span class="post-date"><i class="fa fa-calendar"></i>&nbsp;<%# Eval("DateOfCreate","{0:dd/MM/yyyy}") %> - <%# string.IsNullOrEmpty(Eval("ViewCount").ToString()) ? 0 : Eval("ViewCount") %>&nbsp;<i class="fa fa-eye"></i></span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
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
