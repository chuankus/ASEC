<%@ Page Title="Trang Chủ | Trung Tâm Ngoại Ngữ Chân Trời Mới" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Popup modal-->
    <div class="modal fade" id="myModal" tabindex="-1" data-replace="true" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <a class="close" data-dismiss="modal">
                        <img src="images/icon/close-button.png" /></a>
                    <img src="images/banner/TUAN-LE-VANG.png" class="img-responsive" />
                </div>
            </div>
        </div>
    </div>
    <!-- End Popup Modal-->

    <div id="TrangChu">
        <!-- Home Slider -->
        <section id="home">
            <!-- Carousel -->
            <div id="main-slide" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#main-slide" data-slide-to="0" class="active"></li>
                    <li data-target="#main-slide" data-slide-to="1"></li>
                    <li data-target="#main-slide" data-slide-to="2"></li>
                    <li data-target="#main-slide" data-slide-to="3"></li>
                </ol>
                <!--/ Indicators end -->

                <!-- Carousel inner -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img class="img-responsive" src="images/banner/bg1-min.jpg" alt="slider" />
                        <%--<div class="slider-content">
                            <div class="col-md-12 text-center">
                                <h2 class="animated2">
                                    <span>Welcome to <strong>ASEC</strong></span>
                                </h2>
                                <h3 class="animated3">
                                    <span>Your Education Your Future</span>
                                </h3>
                                <p class="animated4">
                                    <a href="#" class="slider btn btn-system btn-large">Check Now</a>
                                </p>
                            </div>
                        </div>--%>
                    </div>
                    <!--/ Carousel item end -->
                    <div class="item">
                        <img class="img-responsive" src="images/banner/bg2-min.jpg" alt="slider" />
                        <%--<div class="slider-content">
                            <div class="col-md-12 text-center">
                                <h2 class="animated4">
                                    <span><strong>ASEC</strong> for the highest</span>
                                </h2>
                                <h3 class="animated5">
                                    <span>The Key of your Success</span>
                                </h3>
                                <p class="animated6">
                                    <a href="#" class="slider btn btn-system btn-large">Buy Now</a>
                                </p>
                            </div>
                        </div>--%>
                    </div>
                    <!--/ Carousel item end -->
                    <div class="item">
                        <img class="img-responsive" src="images/banner/bg3-min.jpg" alt="slider" />
                        <%--<div class="slider-content">
                            <div class="col-md-12 text-center">
                                <h2 class="animated7 white">
                                    <span>The way of <strong>Success</strong></span>
                                </h2>
                                <h3 class="animated8 white">
                                    <span>Why you are waiting</span>
                                </h3>
                                <div class="">
                                    <a class="animated4 slider btn btn-system btn-large btn-min-block" href="#">Get Now</a><a class="animated4 slider btn btn-default btn-min-block" href="#">Live Demo</a>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                    <!--/ Carousel item end -->
                    <div class="item">
                        <img class="img-responsive" src="images/banner/bg4-min.jpg" alt="slider" />
                    </div>
                </div>
                <!-- Carousel inner end-->

                <!-- Controls -->
                <a class="left carousel-control" href="#main-slide" data-slide="prev">
                    <span><i class="fa fa-angle-left"></i></span>
                </a>
                <a class="right carousel-control" href="#main-slide" data-slide="next">
                    <span><i class="fa fa-angle-right"></i></span>
                </a>
            </div>
            <!-- /carousel -->
        </section>
        <!-- End Home Slider -->

        <!-- Chương trình học -->
        <section id="HocTiengAnh">
            <div class="container">
                <h2 class="title text-center">Chương Trình Học Tại Anh Ngữ <span class="notes">ASEC</span></h2>
                <div id="owl-hoctienganh">

                    <div class="item">
                        <img src="images/owlcarousel/owl1.jpg" alt="Owl Image" />
                    </div>
                    <div class="item">
                        <img src="images/owlcarousel/owl2.jpg" alt="Owl Image" />
                    </div>
                    <div class="item">
                        <img src="images/owlcarousel/owl3.jpg" alt="Owl Image" />
                    </div>
                    <div class="item">
                        <img src="images/owlcarousel/owl4.jpg" alt="Owl Image" />
                    </div>
                    <div class="item">
                        <img src="images/owlcarousel/owl5.jpg" alt="Owl Image" />
                    </div>
                    <div class="item">
                        <img src="images/owlcarousel/owl6.jpg" alt="Owl Image" />
                    </div>
                    <div class="item">
                        <img src="images/owlcarousel/owl7.jpg" alt="Owl Image" />
                    </div>
                    <div class="item">
                        <img src="images/owlcarousel/owl8.jpg" alt="Owl Image" />
                    </div>

                </div>
            </div>
        </section>
        <br />
        <!-- End Chương trình học -->

        <!-- Background Image -->
        <section id="Bg_pallarax">
            <div class="container">
                <img src="images/default_bg.png" class="img-responsive" />
            </div>
        </section>
        <!-- End Background Image -->

        <!-- Chuyên Mục-->
        <section id="ChuyenMuc">
            <div class="container">
                <h1 class="title text-center">Chuyên Mục</h1>
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        <div class="item">
                            <img src="images/ChuyenMuc/1.png" class="img-responsive" />
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        <div class="item">
                            <img src="images/ChuyenMuc/3.png" class="img-responsive" />
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        <div class="item">
                            <img src="images/ChuyenMuc/4.png" class="img-responsive" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <br />

        <!-- Tin Tức -->
        <div id="TinTuc">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8">

                        <!-- Start Recent Posts Carousel -->
                        <div class="latest-posts">
                            <h4 class="classic-title"><span>SỰ KIỆN</span></h4>
                            <div class="latest-posts-classic custom-carousel touch-carousel" data-appeared-items="2">

                                <!-- Posts 1 -->
                                <div class="post-row item">
                                    <div class="left-meta-post">
                                        <div class="post-date"><span class="day">28</span><span class="month">Dec</span></div>
                                        <div class="post-type"><i class="fa fa-picture-o"></i></div>
                                    </div>
                                    <h3 class="post-title"><a href="#">Standard Post With Image</a></h3>
                                    <div class="post-content">
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
                                    </div>
                                </div>

                                <!-- Posts 2 -->
                                <div class="post-row item">
                                    <div class="left-meta-post">
                                        <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div>
                                        <div class="post-type"><i class="fa fa-picture-o"></i></div>
                                    </div>
                                    <h3 class="post-title"><a href="#">Link Post</a></h3>
                                    <div class="post-content">
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
                                    </div>
                                </div>

                                <!-- Posts 3 -->
                                <div class="post-row item">
                                    <div class="left-meta-post">
                                        <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div>
                                        <div class="post-type"><i class="fa fa-picture-o"></i></div>
                                    </div>
                                    <h3 class="post-title"><a href="#">Iframe Video Post</a></h3>
                                    <div class="post-content">
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
                                    </div>
                                </div>

                                <!-- Posts 4 -->
                                <div class="post-row item">
                                    <div class="left-meta-post">
                                        <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div>
                                        <div class="post-type"><i class="fa fa-picture-o"></i></div>
                                    </div>
                                    <h3 class="post-title"><a href="#">Gallery Post</a></h3>
                                    <div class="post-content">
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
                                    </div>
                                </div>

                                <!-- Posts 5 -->
                                <div class="post-row item">
                                    <div class="left-meta-post">
                                        <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div>
                                        <div class="post-type"><i class="fa fa-picture-o"></i></div>
                                    </div>
                                    <h3 class="post-title"><a href="#">Standard Post without Image</a></h3>
                                    <div class="post-content">
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
                                    </div>
                                </div>

                                <!-- Posts 6 -->
                                <div class="post-row item">
                                    <div class="left-meta-post">
                                        <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div>
                                        <div class="post-type"><i class="fa fa-picture-o"></i></div>
                                    </div>
                                    <h3 class="post-title"><a href="#">Iframe Audio Post</a></h3>
                                    <div class="post-content">
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- End Recent Posts Carousel -->

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">

                        <!-- Classic Heading -->
                        <h4 class="classic-title"><span>TIN TỨC</span></h4>

                        <!-- Start Testimonials Carousel -->
                        <div class="custom-carousel show-one-slide touch-carousel" data-appeared-items="1">
                            <!-- Testimonial 1 -->
                            <div class="classic-testimonials item">
                                <div class="testimonial-content">
                                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                </div>
                                <div class="testimonial-author"><span>John Doe</span> - Customer</div>
                            </div>
                            <!-- Testimonial 2 -->
                            <div class="classic-testimonials item">
                                <div class="testimonial-content">
                                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                </div>
                                <div class="testimonial-author"><span>John Doe</span> - Customer</div>
                            </div>
                            <!-- Testimonial 3 -->
                            <div class="classic-testimonials item">
                                <div class="testimonial-content">
                                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                </div>
                                <div class="testimonial-author"><span>John Doe</span> - Customer</div>
                            </div>
                        </div>
                        <!-- End Testimonials Carousel -->

                    </div>
                </div>
            </div>
        </div>
        <!-- End Tin Tức -->

        <!-- Sự kiện tặng quà -->
        <div id="Event">
            <div class="container">
                <div class="row">

                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 wow rotateInDownLeft">

                        <!-- Classic Heading -->
                        <h2 class="classic-title"><span>Thông Tin</span></h2>

                        <!-- Start Contact Form -->
                        <div role="form" class="contact-form" id="contact-form">
                            <div class="form-group-lg has-error">
                                <h4 class="control-label">Họ tên</h4>
                                <asp:TextBox ID="txtHoten" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group-lg has-error">
                                <h4 class="control-label">Email</h4>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group-lg has-error">
                                <h4 class="control-label">Điện thoại</h4>
                                <asp:TextBox ID="txtDienthoai" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group-lg has-error">
                                <h4 class="control-label">Ghi Chú</h4>
                                <asp:TextBox ID="txtNoidung" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnGui" runat="server" Text="Gửi thông tin" CssClass="btn-system btn-large" OnClick="btnGui_Click" />
                            <div id="success" style="color: #34495e;"></div>
                        </div>
                        <!-- End Contact Form -->
                        <br />

                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 wow rotateInDownRight">

                        <h2 class="classic-title"><span>Nhanh Tay Nhận Quà</span></h2>
                        <h2 style="line-height: 150%; font-weight: 500; margin-left: 15%; font-size: 200%;">Hãy gọi cho chúng tôi <strong class="text-danger">086 267 6949</strong><br />
                            hoặc để chúng tôi <strong class="text-info">gọi lại bạn</strong>
                        </h2>
                        <img src="images/banner/hoc-thu-min.jpg" alt="banner" class="img-responsive" />

                    </div>

                </div>
                <br />
                <br />
            </div>
        </div>
        <!-- End Sự kiện tặng quà -->
    </div>
</asp:Content>
