<%@ Page Title="Hỏi Đáp | Trung Tâm Ngoại Ngữ Chân Trời Mới" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Faq.aspx.cs" Inherits="Faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="HoiDap">
        <!-- question-circlet Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2>Hỏi Đáp Nhanh</h2>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumbs">
                            <li><a href="Default2.aspx">Trang Chủ</a></li>
                            <li><a href="#">Chuyên Mục</a></li>
                            <li>Hỏi Đáp Nhanh</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->

        <%-- question-circlet Content --%>
        <div id="content">
            <div class="container">
                <!-- Accordion -->
                <div class="panel-group" id="accordion">

                    <!-- question-circlet Accordion 1 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-1">
                                    <i class="fa fa-angle-up control-icon"></i>
                                    <i class="fa fa-question-circle"></i>Phương pháp học ở ASEC là phương pháp gì ?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-1" class="panel-collapse collapse in">
                            <div class="panel-body">Có rất nhiều phương pháp khác nhau được ASEC kết hợp. Tất cả các phương pháp đều hiện đại và hướng tới sự phát triển toàn diện của học viên. Tuy nhiên, tiêu biểu nhất là phương pháp SƠ ĐỒ TƯ DUY, giúp học viên có thể phát triển hết khả năng tư duy, sự năng động, sáng tạo của mình.</div>
                        </div>
                    </div>
                    <!-- End Accordion 1 -->

                    <!-- question-circlet Accordion 2 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-2" class="collapsed">
                                    <i class="fa fa-angle-down control-icon"></i>
                                    <i class="fa fa-question-circle"></i>Có bao nhiêu học viên trong 1 lớp học ?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-2" class="panel-collapse collapse">
                            <div class="panel-body">Nhằm đạt được chất lượng học tập tốt nhất, số lượng học viên tối đa ở ASEC là 10 bạn/lớp.</div>
                        </div>
                    </div>
                    <!-- End Accordion 2 -->

                    <!-- question-circlet Accordion 3 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-3" class="collapsed">
                                    <i class="fa fa-angle-down control-icon"></i>
                                    <i class="fa fa-question-circle"></i>Giáo viên là người Việt hay người nước ngoài ?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-3" class="panel-collapse collapse">
                            <div class="panel-body">Đội ngũ giáo viên người Việt của ASEC là những thầy cô có trình độ chuyên môn cao, được tuyển chọn kĩ càng và đặc biệt họ đều nhiệt huyết, vui tính và gần gũi với học viên. Ngoài ra, các bạn cũng được các giáo viên người bản xứ hướng dẫn tận tình cách phát âm, dùng tự vựng, ngữ pháp sao cho chuẩn xác nhất.</div>
                        </div>
                    </div>
                    <!-- End Accordion 3 -->

                    <!-- question-circlet Accordion 4 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-4" class="collapsed">
                                    <i class="fa fa-angle-down control-icon"></i>
                                    <i class="fa fa-question-circle"></i>Chính sách bảo đảm chất lượng khóa học thế nào ?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-4" class="panel-collapse collapse">
                            <div class="panel-body">ASEC đảm bảo học viên sẽ đạt được 100% kết quả mà mình mong muốn khi tham gia vào các lớp học tại đây.</div>
                        </div>
                    </div>
                    <!-- End Accordion 4 -->

                    <!-- question-circlet Accordion 5 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-5" class="collapsed">
                                    <i class="fa fa-angle-down control-icon"></i>
                                    <i class="fa fa-question-circle"></i>ASEC thường có những hoạt động ngoại khóa gì không ?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-5" class="panel-collapse collapse">
                            <div class="panel-body">ASEC liên tục tổ chức những buổi ngoại khóa hấp dẫn như đóng kịch, ca hát, trò chuyện với người bản xứ, chương trình khen thưởng, phát quà tặng cho học viên,…</div>
                        </div>
                    </div>
                    <!-- End Accordion 5 -->

                    <!-- question-circlet Accordion 6 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-6" class="collapsed">
                                    <i class="fa fa-angle-down control-icon"></i>
                                    <i class="fa fa-question-circle"></i>Trung tâm dạy giáo trình gì?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-6" class="panel-collapse collapse">
                            <div class="panel-body">ASEC đã cập nhật những giáo trình tiên tiến và phù hợp nhất cho mỗi lớp học. Các bạn có thể tham khảo <a href="#">tại đây</a></div>
                        </div>
                    </div>
                    <!-- End Accordion 6 -->

                    <!-- question-circlet Accordion 7 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-7" class="collapsed">
                                    <i class="fa fa-angle-down control-icon"></i>
                                    <i class="fa fa-question-circle"></i>Cơ sở vật chất ra sao ?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-7" class="panel-collapse collapse">
                            <div class="panel-body">Cơ sở vật chất của ASEC đầy đủ và không thua kém bất kì trung tâm ngoại ngữ lớn nào: SmartBoard, máy tính, hệ thống loa, màn hình, máy chiếu, … Ngoài ra, đến với ASEC, bạn sẽ thấy rất nhiều các phương tiện giải trí như đồ tablet, chơi trẻ em,… Trang thiết bị hiện đại chính là nền tảng để ASEC thực hiện những giáo án học mà chơi – chơi mà học đầy thú vị.</div>
                        </div>
                    </div>
                    <!-- End Accordion 7 -->

                    <!-- question-circlet Accordion 8 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-8" class="collapsed">
                                    <i class="fa fa-angle-down control-icon"></i>
                                    <i class="fa fa-question-circle"></i>Thời gian học một khóa như thế nào ?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-8" class="panel-collapse collapse">
                            <div class="panel-body">Thông thường, thời gian học của 1 lớp sẽ từ 2-3 buổi/tuần, 2 tiếng/buổi. Tùy vào độ tuổi, trình độ mà số buổi có thể là 12 buổi/khóa, 24 buổi/khóa hay 30 buổi/khóa. Các bạn có thể tham khảo thêm <a href="#">tại đây</a></div>
                        </div>
                    </div>
                    <!-- End Accordion 8 -->

                    <!-- question-circlet Accordion 9 -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse-9" class="collapsed">
                                    <i class="fa fa-angle-down control-icon"></i>
                                    <i class="fa fa-question-circle"></i>Tôi muốn học thử có được không ?
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-9" class="panel-collapse collapse">
                            <div class="panel-body">ASEC luôn hoan nghênh các bạn đến và trải nghiệm các khóa học của chúng tôi. Chúng tôi thường xuyên mở những lớp học định hướng (3 -8 buổi tùy vào mỗi trình độ) để giúp các bạn tìm ra những chương trình học phù hợp nhằm phát huy hết khả năng ngoại ngữ của mình. Những lớp học này hoàn toàn miễn phí, đến khi học viên, phụ huynh hài lòng với chương trình và cách giảng dạy thì mới tiếp tục đóng tiền để tham gia toàn bộ khóa học.</div>
                        </div>
                    </div>
                    <!-- End Accordion 9 -->

                </div>
                <!-- End Accordion -->
            </div>
        </div>
        <%-- End Content --%>
    </div>
</asp:Content>