<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="BankJamee.result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row row-result">
        <div class="container-result">
            <ul class="collapsible collapsible-accordion" data-collapsible="expandable">
                <asp:Literal ID="ltrResult" runat="server" />
            </ul>
        </div>
    </div>
</asp:Content>
