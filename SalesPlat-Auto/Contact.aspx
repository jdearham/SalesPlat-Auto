<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SalesPlat_Auto.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>SalesPlatform - Auto</h1>
    <h2><%: Title %>.</h2>
    <h3>Contact Details</h3>
    <address>
       Tennant Street<br />
        Cape Town,8000<br />
        <abbr title="Phone">P:</abbr>
        02100000
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:jdearham@gmail.com">jdearham@gmail.com</a><br />
        <strong>Suggestions:</strong> <a href="mailto:graham.gilbert007@gmail.com">ggilbert@gmail.com</a>
    </address>
        </div>
</asp:Content>
