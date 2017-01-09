<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="BankJamee.Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container center">
        <div class="row">

            <div class="login card col offset-m2 m8 s12">

                <!--#region avatar -->
                <div class="s12">
                    <img class="circle avatar" src="img/avatar_non.png" />
                </div>
                <!--#endregion avatar -->

                <!--#region loginform -->
                <div class="loginform col offset-m1 m10 offset-s1 s10">


                        <div class="input-field col m6 offset-m6-left s12">
                            <i class="material-icons prefix">perm_contact_calendar</i>
                            <asp:TextBox ID="txtUserName" runat="server" disabled />
                            <label for="txtUserName">نام کاربری</label>
                        </div>
                

                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">perm_identity</i>
                            <asp:TextBox ID="txtNam" runat="server" />
                            <label for="txtNam">نام</label>
                        </div>
                  

                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">supervisor_account</i>
                            <asp:TextBox ID="txtFamily" runat="server" />
                            <label for="txtFamily">نام خانوادگی</label>
                        </div>
            

                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">lock_outline</i>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ValidationGroup="v1" />
                            <label for="txtPassword">رمز عبور</label>
                            <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                                CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$" Text="حداقل ۸ کارکتر و باید شامل حروف لاتین،اعداد لاتین و کارکتر خاص (@,!,#,...) باشد." />
                        </div>


         
                        <div class="input-field col m6 s12">
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
    

      
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">email</i>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />
                            <label for="txtEmail">رایانامه</label>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="رایانامه را صحیح وارد کنید." />
                        </div>


   
                        <div class="input-field col m6 s12">
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


                  
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">stay_primary_portrait</i>
                            <asp:TextBox ID="txtMobile" runat="server" />
                            <label for="txtMobile">همراه</label>
                            <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile"
                                CssClass="validate" Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                                ValidationExpression="^0[\d]{10}$" Text="شماره همراه را کامل و صحیح و با اعداد لاتین وارد کنید." />
                        </div>


                    <asp:LinkButton ID="btnUpdate" runat="server" class="waves-effect waves-light1 btn blue mrg-to col offset-m4 m6 offset-s4 s6" OnClick="btnUpdate_Click">بروز رسانی</asp:LinkButton>
                </div>
            </div>
            <!--#endregion loginform -->

        </div>


        <div class="col s12">
            <asp:LinkButton ID="btnRegister" runat="server" class="waves-effect waves-light btn-flat blue-text center-align btn-reg col offset-m5 m2 offset-s2 s8">ثبت نام</asp:LinkButton>
        </div>

    </div>
</asp:Content>
