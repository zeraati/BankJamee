<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BankJamee.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel='shortcut icon' type='image/x-icon' href='favicon.ico' />

    <!--Import Google Icon Font-->
    <link href="fonts/GoogleIconFont.css" rel="stylesheet" />
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link type="text/css" rel="stylesheet" href="../css/style.css" />


    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="../Scripts/jquery.min.js"></script>
    <script type="text/javascript" src="../Scripts/materialize.min.js"></script>
    <script type="text/javascript" src="../Scripts/js.js"></script>


    <title>ثبت نام</title>
</head>
<body>

    <form id="form1" runat="server">
        <div class="container center">
            <div class="row">
                <div class="col s12 header center">
                    <a href="#" class="brand-logo "><i class="material-icons">dashboard</i></a>
                </div>
            </div>
            <div class="row">
                <h3>ثبت نام کنید</h3>
            </div>
            <div class="row">

                <div class="col l6 m7">
                    <div class="reg-form card col s12">
                        <div class="col s12">
                            <div class="input-field col offset-s1 s10">
                                <i class="material-icons prefix">perm_identity</i>
                                <asp:TextBox ID="txtUserName" runat="server" />
                                <label for="txtUserName">نام کاربری</label>
                                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                    CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                    Text="نام کاربری را وارد کنید"/>
                                <asp:RegularExpressionValidator ID="revUserName" runat="server" ControlToValidate="txtUserName"
                                    CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                    ValidationExpression="^[a-zA-Z\d]{5,20}$" Text="حداقل 5 کارکتر و حداکثر20 کارکتر.فقط حروف و اعداد لاتین." />
                            </div>

                            <div class="input-field col offset-s1 s10">
                                <i class="material-icons prefix">lock_outline</i>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                                <label for="txtPassword">رمز عبور</label>
                                <asp:RequiredFieldValidator ID="rfvtxtPassword" runat="server" ControlToValidate="txtPassword"
                                    CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                    Text="رمز عبور را وارد کنید" />
                                <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                                    CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$" Text="حداقل ۸ کارکتر و باید شامل حروف لاتین،اعداد لاتین و کارکتر خاص (@,!,#,...) باشد." />
                            </div>


                            <div class="input-field col offset-s1 s10">
                                <i class="material-icons prefix">repeat</i>
                                <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password" />
                                <label for="txtPasswordConfirm">تکرار رمز عبور</label>
                                <asp:RequiredFieldValidator ID="rfvPasswordConfirm" runat="server" ControlToValidate="txtPasswordConfirm"
                                    CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                    Text="تکرار رمز عبور را وارد کنید." />
                                <asp:CompareValidator ID="cmvPasswordConfirm" runat="server" ControlToValidate="txtPasswordConfirm"
                                    ControlToCompare="txtPassword" Type="String" CultureInvariantValues="true" Operator="Equal"
                                    CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                    Text="تکرار رمز صححیح نیست." />
                            </div>


                            <div class="input-field col offset-s1 s10">
                                <i class="material-icons prefix">email</i>
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />
                                <label for="txtEmail">رایانامه</label>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                                    CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                    Text="رایانامه را وارد کنید." />
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                    CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="رایانامه را صحیح وارد کنید." />
                            </div>


                            <div class="input-field col offset-s1 s10">
                                <i class="material-icons prefix">repeat</i>
                                <asp:TextBox ID="txtEmailConfirm" runat="server" TextMode="Email" />
                                <label for="txtEmailConfirm">تکرار رایانامه</label>
                                <asp:RequiredFieldValidator ID="rfvEmailConfirm" runat="server" ControlToValidate="txtEmailConfirm"
                                    CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                    Text="تکرار رایانامه را وارد کنید." />
                                <asp:CompareValidator ID="cmvEmailConfirm" runat="server" ControlToValidate="txtEmailConfirm"
                                    ControlToCompare="txtEmail" Type="String" CultureInvariantValues="true" Operator="Equal"
                                    CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                    Text="تکرار رایانامه صحیح نیست." />
                            </div>


                        </div>

                        <asp:LinkButton ID="btnRegister" runat="server" class="waves-effect waves-light1 btn blue btn-mrg col offset-m3 m6 offset-s2 s8"
                            OnClick="btnRegister_Click" AccessKey="" ValidationGroup="v1">ثبت نام</asp:LinkButton>
                    </div>
                    <asp:LinkButton ID="btnLogin" runat="server" class="waves-effect waves-light btn-flat blue-text center-align btn-reg col offset-m4 m4 offset-s2 s8">ورود</asp:LinkButton>
                </div>

                <div class="col l6 m5 hide-on-small-only">
                    <img src="Images/reponsive-grid.png" alt="reponsive-grid" class="reg-logo responsive-img" />
                </div>
            </div>

        </div>
    </form>


    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="Scripts/jquery.min.js"></script>
    <script type="text/javascript" src="Scripts/materialize.min.js"></script>

</body>
</html>
