<%@ Page Title="Giới Thiệu | Trung Tâm Ngoại Ngữ Chân Trời Mới" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GioiThieu.aspx.cs" Inherits="GioiThieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="GioiThieu">
        <!-- Start Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="title-page">Giới Thiệu</h2>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumbs">
                            <li><a href="Default2.aspx">Trang Chủ</a></li>
                            <li class="active">Giới Thiệu</li>
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


                    <div class="row">

                        <div class="col-md-7">

                            <!-- Classic Heading -->
                            <h2 class="classic-title"><span>Vài nét về Trung tâm Chân Trời Mới</span></h2>

                            <!-- Some Text -->
                            <p>Sau hơn 10 năm kinh doanh trong lĩnh vực tư vấn du học, Công ty Đỉnh Cao Châu Mỹ  nhận ra được việc học tiếng Anh đã trở thành một nhu cầu thiết yếu của người dân Việt Nam, đặc biệt là đối với thế hệ trẻ và thiếu nhi. Sau một thời gian tìm hiểu thị trường và tìm ra một hướng đi khác biệt so với rất nhiều các trung tâm Anh ngữ hiện nay, chúng tôi đã quyết định thành lập Trung tâm Anh ngữ ASEC.</p>
                            <p>Đến nay, Trung tâm Anh ngữ Chân Trời Mới - ASEC là một địa chỉ đào tạo ngoại ngữ uy tín, đáp ứng tối đa nhu cầu học tiếng Anh của học viên bằng cách không ngừng nâng cao chất lượng giảng dạy và dịch vụ.</p>
                            <p>Với mục tiêu đạo tạo thế hệ học viên Việt Nam phát triển toàn diện không chỉ về ngôn ngữ mà còn các kĩ năng khác như giao tiếp, thuyết trình, làm việc nhóm… ASEC trang bị cho mình những giáo trình hiện đại theo tiêu chuẩn quốc tế, đội ngũ giáo viên giỏi chuyên môn và cơ sở vật chất hiện đại.</p>
                            <p>Đến với ASEC là các bạn đã đến với một môi trường học tập thoải mái, gần gũi nhưng cũng không kém phần chuyên nghiệp. Chúng tôi luôn mong muốn không chỉ đem lại sự tự tin cho học viên trên con đường chinh phục ngôn ngữ mà còn tạo những nền tảng vững chắc cho những thành công của các bạn trong cuộc sống.</p>
                        </div>

                        <div class="col-md-5">

                            <!-- Start Touch Slider -->
                            <div class="touch-slider" data-slider-navigation="true" data-slider-pagination="true">
                                <div class="item">
                                    <img alt="" src="images/hoatdong/hinh-cong-ty-1.jpg" class="img-responsive" />
                                </div>
                                <div class="item">
                                    <img alt="" src="images/hoatdong/hinh-cong-ty-2.jpg" class="img-responsive" />
                                </div>
                                <div class="item">
                                    <img alt="" src="images/hoatdong/hinh-cong-ty-4.jpg" class="img-responsive" />
                                </div>
                            </div>
                            <br />
                            <!-- End Touch Slider -->

                            <!-- Classic Heading -->
                            <h2 class="classic-title"><span>Chuyên Môn</span></h2>

                            <div class="skill-shortcode">
                                <div class="skill">
                                    <p>ASEC KIDS</p>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-info" role="progressbar" data-percentage="70">
                                            <span class="progress-bar-span">70%</span>
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="skill">
                                    <p>ASEC JUNIORS</p>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success" role="progressbar" data-percentage="80">
                                            <span class="progress-bar-span">80%</span>
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="skill">
                                    <p>ASEC TEENS</p>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" data-percentage="75">
                                            <span class="progress-bar-span">75%</span>
                                            <span class="sr-only">75% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="skill">
                                    <p>ASEC ADULTS</p>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" data-percentage="90">
                                            <span class="progress-bar-span">90%</span>
                                            <span class="sr-only">90% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>


                    <!-- Divider -->
                    <div class="hr1" style="margin-bottom: 50px;"></div>

                    <!-- Classic Heading -->
                    <%--<h2 class="classic-title"><span>GIÁO VIÊN TRUNG TÂM</span></h2>--%>

                    <!-- Start Team Members -->
                    <%--<div class="row">

                        <!-- Start Memebr 1 -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="team-member">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="images/thanhvien/dan-thuy.jpg" class="img-responsive" />
                                    <div class="member-name">Nguyễn Đan Thùy <span>Giáo viên</span></div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Điều mong muốn nhất ở học viên: Siêng năng – Tập trung – Thích thú.</p>
                                </div>
                                <!-- Memebr Social Links -->
                                <div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Memebr 1 -->

                        <!-- Start Memebr 2 -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="team-member">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="images/thanhvien/thien-anh.PNG" class="img-responsive" />
                                    <div class="member-name">Nguyễn Thiên Anh <span>Giáo viên</span></div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Điều mong muốn nhất ở học viên: thích thú với bài học trải nghiệm mới.</p>
                                </div>
                                <!-- Memebr Social Links -->
                                <div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Memebr 2 -->

                        <!-- Start Memebr 3 -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="team-member">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="images/thanhvien/ngoc-anh-min.jpg" class="img-responsive" />
                                    <div class="member-name">Vũ Ngọc Anh <span>Giáo viên</span></div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Điều mong muốn nhất ở học viên: vui vẻ, dễ thương và chăm chỉ.</p>
                                </div>
                                <!-- Memebr Social Links -->
                                <div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Memebr 3 -->

                        <!-- Start Memebr 4 -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="team-member">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="images/thanhvien/hong-trang.JPG" class="img-responsive" />
                                    <div class="member-name">Hồ Thị Hồng Trang <span>Giáo viên</span></div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Điều mong muốn nhất ở học viên:  đi học chăm chỉ và tích cực để có kết quả tốt.</p>
                                </div>
                                <!-- Memebr Social Links -->
                                <div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Memebr 4 -->

                    </div>--%>
                    <!-- End Team Members -->


                </div>
            </div>
        </div>
        <!-- End content -->
    </div>
</asp:Content>
