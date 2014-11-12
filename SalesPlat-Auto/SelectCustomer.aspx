<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelectCustomer.aspx.cs" Inherits="SalesPlat_Auto.SelectCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2>Select new or existing customer?</h2><br />
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
        <asp:ListItem Value="0">New Customer</asp:ListItem>
        <asp:ListItem Value="1">Existing Customer</asp:ListItem>
    </asp:RadioButtonList>
        </div>
</asp:Content>
