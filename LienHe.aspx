<%@ Page Title="Liên Hệ | Trung Tâm Ngoại Ngữ Chân Trời Mới" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LienHe.aspx.cs" Inherits="LienHe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="LienHe">
        <!-- Start Map -->
        <div id="map">
            <div class="embed-responsive embed-responsive-4by3">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.420816546496!2d106.62155911527931!3d10.779046462091657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752c1c70833da3%3A0x2545f9230af3828d!2zMjUzQiBUaOG6oWNoIExhbSwgUGjDuiBUaOG6oW5oLCBUw6JuIFBow7osIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1466039574251" frameborder="0" style="border: 0" allowfullscreen></iframe>
            </div>
        </div>
        <!-- End Map -->

        <!-- Start Content -->
        <div id="content">
            <div class="container">

                <div class="row">

                    <div class="col-md-8">

                        <!-- Classic Heading -->
                        <h2 class="classic-title"><span>Liên Lạc</span></h2>

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

                    </div>

                    <div class="col-md-4">

                        <!-- Classic Heading -->
                        <h2 class="classic-title"><span>Thông Tin</span></h2>

                        <!-- Some Info -->
                        <h1 style="color:#ee3733">Trung Tâm Ngoại Ngữ ASEC</h1>

                        <!-- Divider -->
                        <div class="hr1" style="margin-bottom: 10px;"></div>

                        <!-- Info - Icons List -->
                        <ul class="icons-list">
                            <li><i class="fa fa-globe"></i><strong>Địa Chỉ:</strong> 253B Thạch Lam, Phường Phú Thạnh, Quận Tân Phú, TP. Hồ Chí Minh.</li>
                            <li><i class="fa fa-envelope-o"></i><strong>Email:</strong> info@americantop.edu.vn</li>
                            <li><i class="fa fa-mobile"></i><strong>Điện Thoại:</strong> +086 267 6949</li>
                        </ul>

                        <!-- Divider -->
                        <div class="hr1" style="margin-bottom: 15px;"></div>

                        <!-- Classic Heading -->
                        <h2 class="classic-title"><span>Giờ Làm Việc</span></h2>

                        <!-- Info - List -->
                        <ul class="list-unstyled">
                            <li><strong>Thứ 2 - Chủ Nhật:</strong> 8h00 đến 21h</li>
                        </ul>

                    </div>

                </div>

            </div>
        </div>
        <!-- End content -->
    </div>
</asp:Content>

