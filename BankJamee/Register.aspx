<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPageJustForm.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BankJamee.Register" %>
<asp:Content ID="cntHead" ContentPlaceHolderID="cphHead" runat="server">
    <title>ثبت نام</title>
</asp:Content>

<asp:Content ID="cntContent" ContentPlaceHolderID="cphContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="header">
                <a href="#" class="brand-logo "><i class="material-icons">dashboard</i></a>
            </div>
        </div>
        <div class="row">
            <div class="banner">
                <h1>ثبت نام کنید</h1>
            </div>
        </div>
        <div class="row">
            <div class="col l6 m7 s12">
                <div class="row mrg-btm-zro">
                    <div class="card col offset-m1 m10 s12">
                        <div class="row">
                            <div class="col offset-s1 s10">

                                <div class="input-field">
                                    <i class="material-icons prefix">perm_identity</i>
                                    <asp:TextBox ID="txtUserName" runat="server" />
                                    <label for="cphContent_txtUserName">نام کاربری</label>

                                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                        CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                        ValidationGroup="vgRegister" Text="نام کاربری را وارد کنید" />
                                    <asp:RegularExpressionValidator ID="revUserName" runat="server" ControlToValidate="txtUserName"
                                        CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                        ValidationExpression="^[a-zA-Z\d]{5,20}$" Text="حداقل 5 کارکتر و حداکثر20 کارکتر.فقط حروف و اعداد لاتین." />
                                </div>


                                <div class="input-field">
                                    <i class="material-icons prefix">lock_outline</i>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                                    <label for="cphContent_txtPassword">رمز عبور</label>

                                    <asp:RequiredFieldValidator ID="rfvtxtPassword" runat="server" ControlToValidate="txtPassword"
                                        CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                        ValidationGroup="vgRegister" Text="رمز عبور را وارد کنید" />
                                    <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                                        CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                        ValidationGroup="vgRegister" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$" Text="حداقل ۸ کارکتر و باید شامل حروف لاتین،اعداد لاتین و کارکتر خاص (@,!,#,...) باشد." />
                                </div>


                                <div class="input-field">
                                    <i class="material-icons prefix">repeat</i>
                                    <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password" />
                                    <label for="cphContent_txtPasswordConfirm">تکرار رمز عبور</label>

                                    <asp:RequiredFieldValidator ID="rfvPasswordConfirm" runat="server" ControlToValidate="txtPasswordConfirm"
                                        CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                        ValidationGroup="vgRegister" Text="تکرار رمز عبور را وارد کنید." />
                                    <asp:CompareValidator ID="cmvPasswordConfirm" runat="server" ControlToValidate="txtPasswordConfirm"
                                        ControlToCompare="txtPassword" Type="String" CultureInvariantValues="true" Operator="Equal"
                                        CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                        ValidationGroup="vgRegister" Text="تکرار رمز صححیح نیست." />
                                </div>


                                <div class="input-field">
                                    <i class="material-icons prefix">email</i>
                                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />
                                    <label for="cphContent_txtEmail">رایانامه</label>

                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                                        CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                        ValidationGroup="vgRegister" Text="رایانامه را وارد کنید." />
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                        CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                        ValidationGroup="vgRegister" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="رایانامه را صحیح وارد کنید." />
                                </div>


                                <div class="input-field">
                                    <i class="material-icons prefix">repeat</i>
                                    <asp:TextBox ID="txtEmailConfirm" runat="server" TextMode="Email" />
                                    <label for="cphContent_txtEmailConfirm">تکرار رایانامه</label>

                                    <asp:RequiredFieldValidator ID="rfvEmailConfirm" runat="server" ControlToValidate="txtEmailConfirm"
                                        CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                        ValidationGroup="vgRegister" Text="تکرار رایانامه را وارد کنید." />
                                    <asp:CompareValidator ID="cmvEmailConfirm" runat="server" ControlToValidate="txtEmailConfirm"
                                        ControlToCompare="txtEmail" Type="String" CultureInvariantValues="true" Operator="Equal"
                                        CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                        ValidationGroup="vgRegister" Text="تکرار رایانامه صحیح نیست." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <asp:LinkButton ID="btnRegister" runat="server" class="waves-effect waves-light1 btn blue btn-mrg center col offset-m3 m6 offset-s2 s8 "
                                ValidationGroup="vgRegister" Text="ثبت نام" />
                        </div>
                    </div>
                </div>
                <div class="row center">
                    <asp:LinkButton ID="btnLogin" runat="server" class="waves-effect waves-light btn-flat blue-text center-align btn-reg col offset-m4 m4 offset-s2 s8"
                        Text="ورود" PostBackUrl="~/Login.aspx"/>
                </div>
            </div>
            <div class="col l6 m5 hide-on-small-only">
                <img src="Images/reponsive-grid.png" alt="reponsive-grid" class="reg-logo responsive-img" />
            </div>
        </div>
    </div>
</asp:Content>

