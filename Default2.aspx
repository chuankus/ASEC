<%@ Page Title="Trang Chủ | Trung Tâm Ngoại Ngữ Chân Trời Mới" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Modal-->
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
    <!-- End Modal-->

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


        <!-- Chào Mừng -->
        <div class="section service">
            <div class="container">
                <h1 class="text-center thin">CHÀO MỪNG TỚI TRUNG TÂM ANH NGỮ <strong class="red">ASEC</strong></h1>
                <div class="row">

                    <!-- Start Service Icon 1 -->
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 service-box service-center" data-animation="fadeIn" data-animation-delay="02">
                        <div class="service-icon">
                            <img src="images/icon/icon.svg" alt="icon" class="img-responsive" />
                        </div>
                        <div class="service-content">
                            <h3 class="red title" data-animation="fadeIn" data-animation-delay="02">Tầm Nhìn</h3>
                            <p class="wow fadeIn" data-animation="fadeIn" data-animation-delay="02">Với mong muốn xây dựng một tổ chức đào tạo anh ngữ hàng đầu trong khu vực, ASEC sẽ từng bước hoàn thiện nhằm khơi dậy tiềm năng của mỗi học viên thông qua môi trường học tập năng động, hiện đại và chất lượng dành cho mọi đối tượng.</p>
                        </div>
                    </div>
                    <!-- End Service Icon 1 -->

                    <!-- Start Service Icon 2 -->
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 service-box service-center" data-animation="fadeIn" data-animation-delay="03">
                        <div class="service-icon">
                            <img src="images/icon/icon2.svg" alt="icon" class="img-responsive" />
                        </div>
                        <div class="service-content">
                            <h3 class="red title" data-animation="fadeIn" data-animation-delay="03">Sứ Mệnh</h3>
                            <p class="wow fadeIn" data-animation="fadeIn" data-animation-delay="03">Giúp thế hệ trẻ Việt Nam vững vàng, tự tin hội nhập vào môi trường Quốc tế là sứ mệnh của chúng tôi.</p>
                            <p class="wow fadeIn" data-animation="fadeIn" data-animation-delay="03">Không chỉ là sự thành thạo, lưu loát trong việc sử dụng ngôn ngữ như người bản xứ, mà học viên còn được bổ trợ những kiến thức, kỹ năng mềm giúp hòa nhập nhanh với môi trường quốc tế.</p>
                        </div>
                    </div>
                    <!-- End Service Icon 2 -->

                    <!-- Start Service Icon 3 -->
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 service-box service-center" data-animation="fadeIn" data-animation-delay="04">

                        <div class="service-icon">
                            <img src="images/icon/icon3.svg" alt="icon" class="img-responsive" />
                        </div>
                        <div class="service-content">
                            <h3 class="red title" data-animation="fadeIn" data-animation-delay="04">Giá Trị Cốt Lõi</h3>
                            <p class="wow fadeIn" data-animation="fadeIn" data-animation-delay="04">Giá trị cốt lõi mà chúng tôi hướng đến là <strong>Con Người</strong>, xem đây là nhân tố tiên quyết, quan trọng nhất. Chúng tôi đề cao:</p>
                            <p class="wow fadeIn" data-animation="fadeIn" data-animation-delay="04">- Chữ "Tâm" trong nghề, sự tận tâm trong từng công việc.</p>
                            <p class="wow fadeIn" data-animation="fadeIn" data-animation-delay="04">- Sự uy tín với khách hàng.</p>
                            <p class="wow fadeIn" data-animation="fadeIn" data-animation-delay="04">- Lòng nhiệt huyết, nỗ lực vươn đến sự hoàn thiện.</p>
                        </div>

                    </div>
                    <!-- End Service Icon 3 -->

                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </div>
        <!-- End Chào Mừng -->


        <!-- Đăng ký học miễn phí -->
        <div class="section purchase">
            <div class="container">

                <!-- Start Video Section Content -->
                <div class="section-video-content text-center">

                    <!-- Start Animations Text -->
                    <h1 class="fittext wite-text uppercase tlt wow fadeInLeft">
                        <%--<span class="texts">
                            <span>Hiện đại</span>
                            <span>Chuyên nghiệp</span>
                            <span>Tuyệt vời</span>
                        </span>--%>Chuyên nghiệp là mục tiêu của ASEC
                    </h1>
                    <!-- End Animations Text -->


                    <!-- Start Buttons -->
                    <a href="#Event" class="btn-system btn-large"><i class="fa fa-graduation-cap"></i>&nbsp;Đăng Ký Học Miễn Phí</a>
                </div>
                <!-- End Section Content -->

            </div>
        </div>
        <br />
        <!-- End Đăng ký học miễn phí -->


        <!-- Chương trình học -->
        <section class="chuongtrinhhoc">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <h1 class="text-center thin">Chương Trình Học Tại <strong class="red">ASEC</strong></h1>
                        <div class="board">
                            <div class="board-inner">
                                <ul class="nav nav-tabs" id="myTab" data-animation="fadeIn" data-animation-delay="02">
                                    <div class="liner"></div>
                                    <li class="active">
                                        <a href="#rule1" title="kid" class="btn-chuongtrinhhoc hvr-pulse-grow">
                                            <span class="round-tabs one">
                                                <img src="images/icon/kid.png" />
                                            </span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#rule2" title="Junior" class="btn-chuongtrinhhoc hvr-pulse-grow">
                                            <span class="round-tabs two">
                                                <img src="images/icon/Junior.png" />
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#rule3" title="Teens" class="btn-chuongtrinhhoc hvr-pulse-grow">
                                            <span class="round-tabs three">
                                                <img src="images/icon/Teens.png" />
                                            </span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#rule4" title="Adults" class="btn-chuongtrinhhoc hvr-pulse-grow">
                                            <span class="round-tabs four">
                                                <img src="images/icon/Adults.png" />
                                            </span>
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="rule1">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 wow bounceInLeft">
                                            <h2 class="post-title">Học không theo quy tắc<span class="head-line"></span></h2>
                                            <p class="post-meta">Một phương pháp mới mà bạn không thể tin được đó là bạn vẫn sử dụng từ vựng và ngữ pháp đúng mà không cần học, bạn chỉ cần nghe các bài học Vocabulary.</p>
                                            <p class="post-content">Một phương pháp mới mà bạn không thể tin được đó là bạn vẫn sử dụng từ vựng và ngữ pháp đúng mà không cần học, bạn chỉ cần nghe các bài học Vocabulary, Listen & Answer Mini-Stories, Point Of View Stories, tức học tiếng Anh một cách tự động, tuyệt đối không cần ”tập trung” hay cố gắng ghi nhớ.</p>
                                            <a href="#" class="btn btn-system">Đọc tiếp...</a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 image wow bounceInRight">
                                            <div class="image1">
                                                <img src="images/hinhmau/bi-quyet-vua-lam-vua-hoc-tieng-anh-hieu-qua-cho-nguoi-di-lam.jpg" class="img-responsive" />
                                            </div>
                                            <div class="image2">
                                                <img src="images/hinhmau/trung-tam-day-tieng-anh-giao-tiep.png" class="img-responsive" />
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="tab-pane fade" id="rule2">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 wow fadeIn">
                                            <h2 class="post-title">Học không theo quy tắc<span class="head-line"></span></h2>
                                            <p class="post-meta">Một phương pháp mới mà bạn không thể tin được đó là bạn vẫn sử dụng từ vựng và ngữ pháp đúng mà không cần học, bạn chỉ cần nghe các bài học Vocabulary.</p>
                                            <p class="post-content">Một phương pháp mới mà bạn không thể tin được đó là bạn vẫn sử dụng từ vựng và ngữ pháp đúng mà không cần học, bạn chỉ cần nghe các bài học Vocabulary, Listen & Answer Mini-Stories, Point Of View Stories, tức học tiếng Anh một cách tự động, tuyệt đối không cần ”tập trung” hay cố gắng ghi nhớ.</p>
                                            <a href="#" class="btn btn-system">Đọc tiếp...</a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 image wow fadeIn">
                                            <div class="image1">
                                                <img src="images/hinhmau/bi-quyet-vua-lam-vua-hoc-tieng-anh-hieu-qua-cho-nguoi-di-lam.jpg" class="img-responsive" />
                                            </div>
                                            <div class="image2">
                                                <img src="images/hinhmau/trung-tam-day-tieng-anh-giao-tiep.png" class="img-responsive" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="rule3">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 wow fadeIn">
                                            <h2 class="post-title">Học không theo quy tắc<span class="head-line"></span></h2>
                                            <p class="post-meta">Một phương pháp mới mà bạn không thể tin được đó là bạn vẫn sử dụng từ vựng và ngữ pháp đúng mà không cần học, bạn chỉ cần nghe các bài học Vocabulary.</p>
                                            <p class="post-content">Một phương pháp mới mà bạn không thể tin được đó là bạn vẫn sử dụng từ vựng và ngữ pháp đúng mà không cần học, bạn chỉ cần nghe các bài học Vocabulary, Listen & Answer Mini-Stories, Point Of View Stories, tức học tiếng Anh một cách tự động, tuyệt đối không cần ”tập trung” hay cố gắng ghi nhớ.</p>
                                            <a href="#" class="btn btn-system">Đọc tiếp...</a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 image wow fadeIn">
                                            <div class="image1">
                                                <img src="images/hinhmau/bi-quyet-vua-lam-vua-hoc-tieng-anh-hieu-qua-cho-nguoi-di-lam.jpg" class="img-responsive" />
                                            </div>
                                            <div class="image2">
                                                <img src="images/hinhmau/trung-tam-day-tieng-anh-giao-tiep.png" class="img-responsive" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="rule4">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 wow fadeIn">
                                            <h2 class="post-title">Học không theo quy tắc<span class="head-line"></span></h2>
                                            <p class="post-meta">Một phương pháp mới mà bạn không thể tin được đó là bạn vẫn sử dụng từ vựng và ngữ pháp đúng mà không cần học, bạn chỉ cần nghe các bài học Vocabulary.</p>
                                            <p class="post-content">Một phương pháp mới mà bạn không thể tin được đó là bạn vẫn sử dụng từ vựng và ngữ pháp đúng mà không cần học, bạn chỉ cần nghe các bài học Vocabulary, Listen & Answer Mini-Stories, Point Of View Stories, tức học tiếng Anh một cách tự động, tuyệt đối không cần ”tập trung” hay cố gắng ghi nhớ.</p>
                                            <a href="#" class="btn btn-system">Đọc tiếp...</a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 image wow fadeIn">
                                            <div class="image1">
                                                <img src="images/hinhmau/bi-quyet-vua-lam-vua-hoc-tieng-anh-hieu-qua-cho-nguoi-di-lam.jpg" class="img-responsive" />
                                            </div>
                                            <div class="image2">
                                                <img src="images/hinhmau/trung-tam-day-tieng-anh-giao-tiep.png" class="img-responsive" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <br />
        <!-- End Chương trình học -->


        <!-- Tin Tức -->
        <div id="TinTuc">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-xs-12">

                        <!-- Start Recent Posts Carousel -->
                        <div class="latest-posts">
                            <h2 class="classic-title"><span>TIN TỨC</span></h2>
                            <div class="latest-posts-classic custom-carousel touch-carousel" data-appeared-items="3">

                                <asp:Repeater ID="rpTinTuc" runat="server">
                                    <ItemTemplate>
                                        <!-- Item -->
                                        <div class="post-row item" data-animation="fadeIn" data-animation-delay="02">
                                            <div class="left-meta-post">
                                                <div class="post-date"><span class="day"><%# Eval("DateOfCreate","{0:dd}") %></span><span class="month"><%# Eval("DateOfCreate","{0:MM}") %></span></div>
                                                <div class="post-type"><i class="fa fa-picture-o"></i></div>
                                            </div>
                                            <h3 class="post-title">
                                                <asp:LinkButton ID="LinkButton5" runat="server" CommandArgument='<%# Eval("PostID") %>' OnClick="linkbtnDocTiep_Click" NavigateUrl='<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) + "-" + Eval("PostID") %>'>
                                                    <%# Eval("PostTitle") %>
                                                </asp:LinkButton>
                                            </h3>
                                            <div class="post-meta">
                                                <p><%# Eval("MetaDescription") %></p>
                                            </div>
                                            <div class="post-bottom">
                                                <asp:LinkButton ID="LinkButton6" runat="server" CssClass="read-more" CommandArgument='<%# Eval("PostID") %>' OnClick="linkbtnDocTiep_Click" NavigateUrl='<%# XoaKyTuDacBiet(Eval("PostTitle").ToString()) + "-" + Eval("PostID") %>'>
                                                    Đọc tiếp
                                                </asp:LinkButton>
                                            </div>
                                        </div>
                                        <!-- End Item -->
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>
                        </div>
                        <!-- End Recent Posts Carousel -->

                    </div>
                </div>
            </div>
        </div>
        <br />
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
