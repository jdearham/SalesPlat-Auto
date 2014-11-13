<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="SalesPlat_Auto.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
</asp:Content>
