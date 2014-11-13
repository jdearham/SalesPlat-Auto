<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewStock.aspx.cs" Inherits="SalesPlat_Auto.viewStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
        <h1>SalesPlatform - Auto</h1>
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Status"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem Value="Available">Available</asp:ListItem>
            <asp:ListItem>Sold</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Stock] WHERE ([SaleStatus] = @SaleStatus)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="SaleStatus" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StockId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="PurchasePrice" HeaderText="PurchasePrice" SortExpression="PurchasePrice" />
                <asp:BoundField DataField="Colour" HeaderText="Colour" SortExpression="Colour" />
            </Columns>
        </asp:GridView>
    </p>
         </div>
</asp:Content>
