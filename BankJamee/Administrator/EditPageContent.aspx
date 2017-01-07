<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditPageContent.aspx.cs" Inherits="BankJamee.Administrator.EditPageContent" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../Scripts/tinymce/tinymce.min.js"></script>
    <script src="../Scripts/tinymce/TinyConfig.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">

            <div class="input-field col m4 s8">
                <asp:TextBox ID="txtPageName" runat="server" MaxLength="100" CssClass="validate" />
                <label for="txtPageName">نام صفحه</label>
            </div>

            <div class="form-btn offset-m4 col m4 left-align hide-on-small-only">
                <asp:LinkButton ID="btnOpenTp" runat="server" class="waves-effect waves-light btn blue " OnClick="btnOpen_Click">بازکردن</asp:LinkButton>
                <asp:LinkButton ID="btnSaveTp" runat="server" class="waves-effect waves-light btn green " OnClick="btnSave_Click">ذخیره</asp:LinkButton>
            </div>

            <div class="input-field col s12">
                <asp:TextBox ID="txtPageContent" runat="server" TextMode="MultiLine" />
            </div>
        </div>

        <div class="row hide-on-med-and-up">
            <asp:LinkButton ID="btnOpenBtm" runat="server" class="col s5 waves-effect waves-light btn blue" OnClick="btnOpen_Click">بازکردن</asp:LinkButton>
            <asp:LinkButton ID="btnSaveBtm" runat="server" class="left col s5 waves-effect waves-light btn green" OnClick="btnSave_Click">ذخیره</asp:LinkButton>
        </div>

    </div>

</asp:Content>
