<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BankJamee.Login" %>

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

    <title>ورود</title>
</head>
<body>

    <form id="form1" runat="server">
        <div class="container center">
            <div class="row">


                <div class="col s12 header center">
                    <a href="#" class="brand-logo "><i class="material-icons">dashboard</i></a>
                </div>



                <div class="login card col offset-m3 m6 s12">

                    <!--#region avatar -->
                    <div class="s12">
                        <img class="circle avatar" src="img/avatar_non.png" />
                    </div>
                    <!--#endregion avatar -->

                    <!--#region loginform -->
                    <div class="loginform col offset-m2 m8 offset-s1 s10">
                        <div class="input-field">
                            <i class="material-icons prefix">perm_identity</i>
                            <asp:TextBox ID="txtUserNam" runat="server"/>
                            <label for="txtUserNam">نام کاربری</label>
                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserNam"
                                CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                Text="نام کاربری را وارد کنید" />
                            <asp:RegularExpressionValidator ID="revUserName" runat="server" ControlToValidate="txtUserNam"
                                CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                ValidationExpression="^[a-zA-Z\d]{5,20}$" Text="حداقل 5 کارکتر و حداکثر20 کارکتر.فقط حروف و اعداد لاتین."
                                />
                        </div>
                        <div class="input-field">
                            <i class="material-icons prefix">lock_outline</i>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                            <label for="txtPassword">رمز عبور</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                                CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                Text="رمز عبور را وارد کنید" />
                            <asp:RegularExpressionValidator ID="rev3Password" runat="server" ControlToValidate="txtPassword"
                                CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$" Text="حداقل ۸ کارکتر و باید شامل حروف لاتین،اعداد لاتین و کارکتر خاص (@,!,#,...) باشد."
                                />
                        </div>
                        <asp:LinkButton ID="btnLogin" runat="server" class="waves-effect waves-light1 btn blue mrg-to col offset-m2 m8 offset-s2 s8" OnClick="btnLogin_Click">ورود</asp:LinkButton>
                        <div class="col s12 mrg-to">
                            <asp:LinkButton ID="btnForgotPassword" runat="server" class="red-text">رمز عبور را فراموش کرده ام!</asp:LinkButton>
                        </div>
                    </div>
                    <!--#endregion loginform -->

                </div>


                <div class="col s12">
                    <asp:LinkButton ID="btnRegister" runat="server" class="waves-effect waves-light btn-flat blue-text center-align btn-reg col offset-m5 m2 offset-s2 s8">ثبت نام</asp:LinkButton>
                </div>

            </div>
        </div>
    </form>


    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="Scripts/jquery.min.js"></script>
    <script type="text/javascript" src="Scripts/materialize.min.js"></script>

</body>
</html>
