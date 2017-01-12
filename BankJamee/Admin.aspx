<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="BankJamee.admin" %>

<asp:Content ID="cntHead" ContentPlaceHolderID="phcHead" runat="server">
    <title>جستجوی اشخاص</title>
</asp:Content>
<asp:Content ID="cntContent" ContentPlaceHolderID="phcContent" runat="server">
    <div class="container">
        <div class="row">

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtName" runat="server"/>
                <label for="phcContent_txtName">نام</label>
            </div>

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtFamily" runat="server"/>
                <label for="phcContent_txtFamily">نام خانوادگی</label>
            </div>

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtCodeMelli" runat="server"/>
                <label for="phcContent_txtCodeMelli">کدملی</label>
            </div>

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtShenasname" runat="server"/>
                <label for="phcContent_txtShenasname">شماره شناسنامه</label>
            </div>

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtStudentID" runat="server"/>
                <label for="phcContent_txtStudentID">کدمرکزمدیریت</label>
            </div>

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtMKID" runat="server"/>
                <label for="phcContent_txtMKID">کدمرکزخدمات</label>
            </div>

        </div>

        <div class="row left-align">
            <asp:LinkButton ID="btnSearch" runat="server" class="waves-effect waves-light btn blue" Text="جستجو" OnClick="btnSearch_Click"/>
        </div>

    </div>
    <div class="row row-result">
        <asp:Literal ID="ltrResult" runat="server" />
    </div>

</asp:Content>
