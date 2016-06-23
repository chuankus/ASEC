<%@ Page Title="Trang Chủ | Trung Tâm Ngoại Ngữ Chân Trời Mới" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="TrangChu">
        <!-- 1.Start Home Page Slider -->
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
        <!-- End Home Page Slider -->


        <!-- 2. Start Chào Mừng -->
        <div class="section service">
            <div class="container">
                <h1 class="text-center">CHÀO MỪNG TỚI TRUNG TÂM NGOẠI NGỮ ASEC</h1>
                <div class="row">

                    <!-- Start Service Icon 1 -->

                    <div class="col-md-4 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="01">
                        <div class="panel panel-danger">
                            <div class="panel-body">
                                <div class="service-icon">
                                    <img src="images/icon/icon.svg" alt="icon" class="img-responsive" />
                                </div>
                                <div class="service-content">
                                    <h3>Tầm Nhìn</h3>
                                    <p>Với mong muốn xây dựng một tổ chức đào tạo anh ngữ hàng đầu trong khu vực, ASEC sẽ từng bước hoàn thiện nhằm khơi dậy tiềm năng của mỗi học viên thông qua môi trường học tập năng động, hiện đại và chất lượng dành cho mọi đối tượng.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- End Service Icon 1 -->

                    <!-- Start Service Icon 2 -->
                    <div class="col-md-4 col-sm-6 service-box service-center wow fadeIn">
                        <div class="panel panel-danger">
                            <div class="panel-body">
                                <div class="service-icon">
                                    <img src="images/icon/icon2.svg" alt="icon" class="img-responsive" />
                                </div>
                                <div class="service-content">
                                    <h3>Sứ Mệnh</h3>
                                    <p>Giúp thế hệ trẻ Việt Nam vững vàng, tự tin hội nhập vào môi trường Quốc tế là sứ mệnh của chúng tôi.</p>
                                    <p>Không chỉ là sự thành thạo, lưu loát trong việc sử dụng ngôn ngữ như người bản xứ, mà học viên còn được bổ trợ những kiến thức, kỹ năng mềm giúp hòa nhập nhanh với môi trường quốc tế.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- End Service Icon 2 -->

                    <!-- Start Service Icon 3 -->
                    <div class="col-md-4 col-sm-6 service-box service-center wow fadeIn">
                        <div class="panel panel-danger">
                            <div class="panel-body">
                                <div class="service-icon">
                                    <img src="images/icon/icon3.svg" alt="icon" class="img-responsive" />
                                </div>
                                <div class="service-content">
                                    <h3>Giá Trị Cốt Lõi</h3>
                                    <p>Giá trị cốt lõi mà chúng tôi hướng đến là <strong>Con Người</strong>, xem đây là nhân tố tiên quyết, quan trọng nhất. Chúng tôi đề cao:</p>
                                    <p>- Chữ "Tâm" trong nghề, sự tận tâm trong từng công việc.</p>
                                    <p>- Sự uy tín với khách hàng.</p>
                                    <p>- Lòng nhiệt huyết, nỗ lực vươn đến sự hoàn thiện.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- End Service Icon 3 -->

                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </div>
        <!-- End Chào Mừng -->


        <!-- 3. Start Lớp Học Đang Hot -->
        <div class="section purchase">
            <div class="container">

                <!-- Start Video Section Content -->
                <div class="section-video-content text-center">

                    <!-- Start Animations Text -->
                    <h1 class="fittext wite-text uppercase tlt">ASEC là nơi 
                        <span class="texts">
                            <span>Hiện đại</span>
                            <span>Chuyên nghiệp</span>
                            <span>Tuyệt vời</span>
                        </span>dành cho<br />
                        Giáo Dục & Phát triển
                    </h1>
                    <!-- End Animations Text -->


                    <!-- Start Buttons -->
                    <a href="#" class="btn-system btn-large"><i class="fa fa-tasks"></i>&nbsp;Đăng Ký Học Miễn Phí</a>
                    <%--<a href="#" class="btn-system btn-large btn-wite"><i class="fa fa-download"></i>Purchase This Now</a>--%>
                </div>
                <!-- End Section Content -->

            </div>
            <!-- .container -->
        </div>
        <!-- End Lớp Học Đang Hot -->


        <!-- 4. Start Chương trình học -->
        <%--<div class="section portfolio-3column" style="border-top: 0; border-bottom: 0; background: #fff;">
            <div class="container text-center">
                <!-- Start Big Heading -->
                <div class="big-title text-center wow fadeIn">
                    <h1>CHƯƠNG TRÌNH HỌC</h1>
                </div>
                <!-- End Big Heading -->

                <p class="text-center">
                    Thông tin các lớp học tại trung tâm ngoại ngữ Chân Trời Mới được cập nhật tại đây.
                </p>


                <div class="row" id="portfolio-list">
                    <asp:Repeater ID="rpPostMoiNhat" runat="server">
                        <ItemTemplate>
                            <div class="li col-md-4">
                                <img src="<%# HomeUrl + Eval("ImagesUrl") %>" alt="<%# Eval("ImagesName") %>" class="img-responsive img-thumbnail" />
                                <div class="portfolio-item-content">
                                    <a href="ChiTiet.aspx?post=<%# Eval("PostID") %>">
                                        <span class="header"><%# Eval("PostTitle") %></span>
                                        <p class="body"><%# Eval("MetaDescription") %></p>
                                    </a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <br />
                <a href="ChuongTrinhHoc.aspx" class="btn-system btn-large">Xem Toàn Bộ</a>
            </div>
            <!-- Start Recent Projects Carousel -->
            <ul id="portfolio-list" class="wow fadeIn">
                <asp:Repeater ID="rpPostMoiNhat" runat="server">
                    <ItemTemplate>
                        <li>
                            <img src="<%# HomeUrl + Eval("ImagesUrl") %>" alt="<%# Eval("ImagesName") %>" class="img-responsive" />
                            <div class="portfolio-item-content">
                                <a href="ChiTiet.aspx?post=<%# Eval("PostID") %>">
                                    <span class="header"><%# Eval("PostTitle") %></span>
                                    <p class="body"><%# Eval("MetaDescription") %></p>
                                </a>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
                
            </ul>
            <!-- End Recent Projects Carousel -->


        </div>--%>

        <div id="Welcome">
            <div class="container">
                <h1 class="title">WELCOME TO INVENT</h1>
                <%-- Tab Slider --%>
                <div id="myWelcome" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ul class="nav nav-pills">
                        <li data-target="#myWelcome" data-slide-to="0" class="active"><a href="#">01 About</a></li>
                        <li data-target="#myWelcome" data-slide-to="1"><a href="#">02 Academics</a></li>
                        <li data-target="#myWelcome" data-slide-to="2"><a href="#">03 Admissions & Aid</a></li>
                        <li data-target="#myWelcome" data-slide-to="3"><a href="#">04 After Invent</a></li>
                    </ul>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 pic">
                                    <img src="images/carousel-tab/welcome-1.jpg" class="img-responsive" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 carousel-caption content wow fadeIn">
                                    <h2 class="title">Great Career Outcomes</h2>
                                    <p class="meta">Vut sagittis a, magna ridiculus! Scelerisque parturient! Cum duis nunc in, dignissim, porta porta enim, proin turpis egestas! Mauris dapibus sed integer placerat, scelerisque! Ac enim nascetur rhoncus facilisis phasellus eu sit turpis purus magna auctor nunc facilisis parturient ac tempor, montes etiam tortor rhoncus! In, aliquam. Elementum urna, tincidunt? Nisi ut urna? Arcu, odio facilisis urna magna vel, elementum integer quis nisi nisi scelerisque etiam.</p>
                                    <a href="#" class="btn btn-info btn-lg">Read More</a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 pic">
                                    <img src="images/carousel-tab/welcome-2.jpg" class="img-responsive" />
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12 carousel-caption content">
                                    <h2 class="title">Great Career Outcomes</h2>
                                    <p class="meta">Vut sagittis a, magna ridiculus! Scelerisque parturient! Cum duis nunc in, dignissim, porta porta enim, proin turpis egestas! Mauris dapibus sed integer placerat, scelerisque! Ac enim nascetur rhoncus facilisis phasellus eu sit turpis purus magna auctor nunc facilisis parturient ac tempor, montes etiam tortor rhoncus! In, aliquam. Elementum urna, tincidunt? Nisi ut urna? Arcu, odio facilisis urna magna vel, elementum integer quis nisi nisi scelerisque etiam.</p>
                                    <a href="#" class="btn btn-info btn-lg">Read More</a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 pic">
                                    <img src="images/carousel-tab/welcome-3.jpg" class="img-responsive" />
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12 carousel-caption content">
                                    <h2 class="title">Great Career Outcomes</h2>
                                    <p class="meta">Vut sagittis a, magna ridiculus! Scelerisque parturient! Cum duis nunc in, dignissim, porta porta enim, proin turpis egestas! Mauris dapibus sed integer placerat, scelerisque! Ac enim nascetur rhoncus facilisis phasellus eu sit turpis purus magna auctor nunc facilisis parturient ac tempor, montes etiam tortor rhoncus! In, aliquam. Elementum urna, tincidunt? Nisi ut urna? Arcu, odio facilisis urna magna vel, elementum integer quis nisi nisi scelerisque etiam.</p>
                                    <a href="#" class="btn btn-info btn-lg">Read More</a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 pic">
                                    <img src="images/carousel-tab/welcome-4.jpg" class="img-responsive" />
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12 carousel-caption content">
                                    <h2 class="title">Great Career Outcomes</h2>
                                    <p class="meta">Vut sagittis a, magna ridiculus! Scelerisque parturient! Cum duis nunc in, dignissim, porta porta enim, proin turpis egestas! Mauris dapibus sed integer placerat, scelerisque! Ac enim nascetur rhoncus facilisis phasellus eu sit turpis purus magna auctor nunc facilisis parturient ac tempor, montes etiam tortor rhoncus! In, aliquam. Elementum urna, tincidunt? Nisi ut urna? Arcu, odio facilisis urna magna vel, elementum integer quis nisi nisi scelerisque etiam.</p>
                                    <a href="#" class="btn btn-info btn-lg">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Chương trình học -->


        <!-- 7. Start Testimonials Section -->
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xs-12">

                        <!-- Start Recent Posts Carousel -->
                        <div class="latest-posts">
                            <h2 class="classic-title"><span>TIN TỨC</span></h2>
                            <div class="latest-posts-classic custom-carousel touch-carousel" data-appeared-items="3">


                                <asp:Repeater ID="rpTinTuc" runat="server">
                                    <ItemTemplate>
                                        <!-- Posts 1 -->
                                        <div class="post-row item">
                                            <div class="left-meta-post">
                                                <div class="post-date"><span class="day"><%# Eval("DateOfCreate","{0:dd}") %></span><span class="month"><%# Eval("DateOfCreate","{0:MM}") %></span></div>
                                                <div class="post-type"><i class="fa fa-picture-o"></i></div>
                                            </div>
                                            <h3 class="post-title"><a href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>"><%# Eval("PostTitle") %></a></h3>
                                            <div class="post-content">
                                                <p><%# Eval("MetaDescription") %> <a class="read-more" href="<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) %>-<%# Eval("PostID") %>">Đọc tiếp...</a></p>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>
                        </div>
                        <!-- End Recent Posts Carousel -->

                    </div>
                </div>
            </div>
        </div>
        <!-- End Testimonials Section -->


        <%-- 5. Sự kiện tặng quà --%>
        <div id="Event">
            <div class="container">
                <div class="row">

                    <div class="col-md-4">

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

                    <div class="col-md-8">

                        <h2 class="classic-title">Nhanh Tay Nhận Quà</h2>
                        <img src="images/banner/hoc-thu-min.jpg" alt="banner" class="img-responsive" />

                    </div>

                </div>
                <br />
                <br />
            </div>
        </div>
        <%-- End Sự kiện tặng quà --%>
    </div>
</asp:Content>
