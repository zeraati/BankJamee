<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPageJustForm.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BankJamee.Login" %>

<asp:Content ID="cntHead" ContentPlaceHolderID="cphHead" runat="server">
    <title>ورود</title>
</asp:Content>
<asp:Content ID="cntContent" ContentPlaceHolderID="cphContent" runat="server">
    <div class="container">

        <div class="row">
            <div class="header center">
                <a href="#" class="brand-logo "><i class="material-icons">dashboard</i></a>
            </div>
        </div>

        <div class="row">
            <div class="banner center">
                <h1>ورود به سیستم با حساب کاربری</h1>
            </div>
        </div>

        <div class="row">
            <div class="content">
                <div class="col offset-m3 m6 s12 card">
                    <div class="row center">
                        <img class="circle avatar" src="img/avatar_non.png" />
                    </div>

                    <div class="row">
                        <div class="input-field col offset-m2 m8 offset-s1 s10">
                            <asp:TextBox ID="txtUserName" runat="server" />
                            <label for="cphContent_txtUserName">نام کاربری</label>

                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                ValidationGroup="vgLogin" Text="نام کاربری را وارد کنید" />
                            <asp:RegularExpressionValidator ID="revUserName" runat="server" ControlToValidate="txtUserName"
                                CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                ValidationExpression="^[a-zA-Z\d]{5,20}$"
                                ValidationGroup="vgLogin" Text="حداقل 5 کارکتر و حداکثر20 کارکتر.فقط حروف و اعداد لاتین." />
                        </div>


                        <div class="input-field col offset-m2 m8 offset-s1 s10">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                            <label for="cphContent_txtPassword">رمز عبور</label>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword"
                                CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                ValidationGroup="vgLogin" Text="رمز عبور را وارد کنید" />
                            <asp:RegularExpressionValidator ID="rev3Password" runat="server" ControlToValidate="txtPassword"
                                CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                ValidationGroup="vgLogin" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$" Text="حداقل ۸ کارکتر و باید شامل حروف لاتین،اعداد لاتین و کارکتر خاص (@,!,#,...) باشد." />
                        </div>
                    </div>
                    <div class="row">
                        <asp:LinkButton ID="btnLogin" runat="server" class="waves-effect waves-light1 btn blue col offset-m4 m4 offset-s1 s10"
                            ValidationGroup="vgLogin"  Text="ورود"/>
                    </div>
                    <div class="row center">
                        <asp:LinkButton ID="btnForgotPassword" runat="server" class="waves-effect waves-light btn-flat red-text"
                            Text="رمز عبور را فراموش کرده ام!" />
                    </div>
                </div>
                <div class="row">
                    <div class="col s12 center">
                        <asp:LinkButton ID="btnRegister" runat="server" class="waves-effect waves-light btn-flat blue-text"
                            PostBackUrl="~/Register.aspx" Text="ثبت نام" />
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
        </div>
    </div>
</asp:Content>
