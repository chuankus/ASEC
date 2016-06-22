<%@ Page Title="Album | Trung Tâm Ngoại Ngữ Chân Trời Mới" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Albums.aspx.cs" Inherits="Albums" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="Album">
        <!-- Start Page Banner -->
        <div class="page-banner no-subtitle">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2>Albums</h2>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumbs">
                            <li><a href="#">Trang Chủ</a></li>
                            <li><a href="#">Chuyên Mục</a></li>
                            <li>Album</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->


        <!-- Start Content -->
        <div id="content">
            <div class="container">
                <div class="page-content">


                    <!--Start Albums-->
                    <asp:Repeater ID="rpFunday" runat="server">
                        <ItemTemplate>
                            <div class="recent-projects">
                                <h2 class="title"><span><%# Eval("ImagesTypeName") %></span></h2>
                                <div class="projects-carousel touch-carousel">
                                    <!-- Start Hình ảnh -->
                                    <asp:Repeater ID="rpAlbum" runat="server" DataSource='<%# AlbumFunday(Eval("ImagesTypeID").ToString()) %>'>
                                        <ItemTemplate>
                                            <div class="portfolio-item item">
                                                <div class="portfolio-border">
                                                    <!-- Start Project Thumb -->
                                                    <div class="portfolio-thumb">
                                                        <a title="Sự kiện chủ nhật Funday" href="<%# HomeUrl + Eval("ImagesUrl") %>" rel="prettyPhoto[funday]">
                                                            <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                                            <img alt="<%# Eval("ImagesName") %>" src="<%# HomeUrl + Eval("ImagesUrl") %>" />
                                                        </a>
                                                    </div>
                                                    <!-- End Project Thumb -->
                                                    <!-- Start Project Details -->
                                                    <div class="portfolio-details">
                                                        <h4>Sự kiện chủ nhật Funday</h4>
                                                    </div>
                                                    <!-- End Project Details -->
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <!-- End Hình ảnh -->
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <!--End Albums-->
                    <br />
                    <br />


                </div>
            </div>
        </div>
        <!-- End Content -->
    </div>
</asp:Content>
