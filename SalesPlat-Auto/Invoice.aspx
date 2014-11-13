<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="SalesPlat_Auto.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
        <h1>SalesPlatform - Auto</h1>
    <table class="nav-justified">
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO [Sale] ([SalesManId], [CustomerId], [StockId], [Price]) VALUES (@SalesManId, @CustomerId, @StockId, @Price)" SelectCommand="SELECT * FROM [Sale]" UpdateCommand="UPDATE [Sale] SET [SalesManId] = @SalesManId, [CustomerId] = @CustomerId, [StockId] = @StockId, [Price] = @Price WHERE [salesId] = @salesId">
        <DeleteParameters>
            <asp:Parameter Name="salesId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:QueryStringParameter Name="SalesManId" QueryStringField="salesmanId" Type="Int32" />
            <asp:QueryStringParameter Name="CustomerId" QueryStringField="customerId" Type="Int32" />
            <asp:QueryStringParameter Name="StockId" QueryStringField="stockid" Type="Int32" />
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="0" Name="Price" PropertyName="Text" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SalesManId" Type="Int32" />
            <asp:Parameter Name="CustomerId" Type="Int32" />
            <asp:Parameter Name="StockId" Type="Int32" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="salesId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Stock] WHERE [StockId] = @StockId" InsertCommand="INSERT INTO [Stock] ([Make], [Model], [Year], [PurchasePrice], [Colour], [SaleStatus]) VALUES (@Make, @Model, @Year, @PurchasePrice, @Colour, @SaleStatus)" SelectCommand="SELECT * FROM [Stock] WHERE ([StockId] = @StockId)" UpdateCommand="UPDATE [Stock] SET [SaleStatus] = @SaleStatus WHERE [StockId] = @StockId">
        <DeleteParameters>
            <asp:Parameter Name="StockId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Year" Type="Decimal" />
            <asp:Parameter Name="PurchasePrice" Type="Decimal" />
            <asp:Parameter Name="Colour" Type="String" />
            <asp:Parameter Name="SaleStatus" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="StockId" QueryStringField="stockid" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter DefaultValue="Sold" Name="SaleStatus" />
            <asp:QueryStringParameter Name="StockId" QueryStringField="stockid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
         </div>
</asp:Content>
