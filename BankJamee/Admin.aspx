<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="BankJamee.admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtName" runat="server" CssClass="validate" />
                <label for="txtName">نام</label>
            </div>

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtFamily" runat="server" CssClass="validate" />
                <label for="txtFamily">نام خانوادگی</label>
            </div>

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtCodeMelli" runat="server" CssClass="validate" />
                <label for="txtCodeMelli">کدملی</label>
            </div>

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtShenasname" runat="server" CssClass="validate" />
                <label for="txtShenasname">شماره شناسنامه</label>
            </div>

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtStudentID" runat="server" CssClass="validate" />
                <label for="txtStudentID">کدمرکزمدیریت</label>
            </div>

            <div class="input-field col m4 s6">
                <asp:TextBox ID="txtMKID" runat="server" CssClass="validate" />
                <label for="txtMKID">کدمرکزخدمات</label>
            </div>

        </div>

        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" class="waves-effect waves-light btn blue" OnClick="Button1_Click">جستجو</asp:LinkButton>
        </div>

    </div>
    <div class="row row-result">
        <asp:Literal ID="ltrResult" runat="server" />
    </div>

</asp:Content>
