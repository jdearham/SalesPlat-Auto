<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelectStock.aspx.cs" Inherits="SalesPlat_Auto.SelectStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StockId" DataSourceID="dsStock">
        <Columns>
            <asp:BoundField DataField="StockId" HeaderText="StockId" InsertVisible="False" ReadOnly="True" SortExpression="StockId" />
            <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:HyperLinkField DataNavigateUrlFields="StockId" DataNavigateUrlFormatString="invoice.aspx?StockId={0}" Text="Select" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="dsStock" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Stock] WHERE [StockId] = @StockId" InsertCommand="INSERT INTO [Stock] ([Make], [Model], [Year]) VALUES (@Make, @Model, @Year)" SelectCommand="SELECT * FROM [Stock]" UpdateCommand="UPDATE [Stock] SET [Make] = @Make, [Model] = @Model, [Year] = @Year WHERE [StockId] = @StockId">
        <DeleteParameters>
            <asp:Parameter Name="StockId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Year" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Year" Type="Decimal" />
            <asp:Parameter Name="StockId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
      </div>
</asp:Content>
