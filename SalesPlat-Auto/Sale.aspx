﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sale.aspx.cs" Inherits="SalesPlat_Auto.Sale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div class="jumbotron">
        <h1>SalesPlatform - Auto</h1>
       <h2>Select a salesman</h2><br />
    Sales Person&nbsp;
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="dsSalesMan" DataTextField="Full Name" DataValueField="SalesManId">
</asp:DropDownList>
    <br />
<asp:SqlDataSource ID="dsSalesMan" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT SalesManId, Name, Surname, Name + ' ' + Surname AS [Full Name] FROM SalesMan"></asp:SqlDataSource>
    <br />
          <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
<br />
    <asp:Button ID="BtnCancel" runat="server" OnClick="BtnCancel_Click" Text="Cancel"/>

&nbsp;
    <asp:Button ID="BtnProceed" runat="server" OnClick="BtnProceed_Click" Text="Proceed" />
          </div>
    </asp:Content>
