<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelectStock.aspx.cs" Inherits="SalesPlat_Auto.SelectStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
        <h1>SalesPlatform - Auto</h1>
     <h2>Select the vehilce</h2>
         <br />
         Vehicle: <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="dsStock" DataTextField="MyCar" DataValueField="StockId">
        </asp:DropDownList>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
    <asp:SqlDataSource ID="dsStock" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Stock] WHERE [StockId] = @StockId" InsertCommand="INSERT INTO [Stock] ([Make], [Model], [Year]) VALUES (@Make, @Model, @Year)" SelectCommand="SELECT StockId, Make, Model, Year, PurchasePrice, Colour, Make + ' ' + Model + ' ' + CAST(Year AS nvarchar(10)) + ' ' + Colour AS MyCar FROM Stock WHERE (SaleStatus = 'Available')" UpdateCommand="UPDATE [Stock] SET [Make] = @Make, [Model] = @Model, [Year] = @Year WHERE [StockId] = @StockId">
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
        <asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="Button1_Click" />
&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Proceed" />
      </div>
</asp:Content>
