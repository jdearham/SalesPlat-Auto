<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStock.aspx.cs" Inherits="SalesPlat_Auto.AddStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="StockId" DataSourceID="dsStock" DefaultMode="Insert">
        <EditItemTemplate>
            StockId:
            <asp:Label ID="StockIdLabel1" runat="server" Text='<%# Eval("StockId") %>' />
            <br />
            Make:
            <asp:TextBox ID="MakeTextBox" runat="server" Text='<%# Bind("Make") %>' />
            <br />
            Model:
            <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
            <br />
            Year:
            <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
            <br />
            PurchasePrice:
            <asp:TextBox ID="PurchasePriceTextBox" runat="server" Text='<%# Bind("PurchasePrice") %>' />
            <br />
            Colour:
            <asp:TextBox ID="ColourTextBox" runat="server" Text='<%# Bind("Colour") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Make:
            <asp:TextBox ID="MakeTextBox" runat="server" Text='<%# Bind("Make") %>' />
            <br />
            Model:
            <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
            <br />
            Year:
            <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
            <br />
            PurchasePrice:
            <asp:TextBox ID="PurchasePriceTextBox" runat="server" Text='<%# Bind("PurchasePrice") %>' />
            <br />
            Colour:
            <asp:TextBox ID="ColourTextBox" runat="server" Text='<%# Bind("Colour") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            StockId:
            <asp:Label ID="StockIdLabel" runat="server" Text='<%# Eval("StockId") %>' />
            <br />
            Make:
            <asp:Label ID="MakeLabel" runat="server" Text='<%# Bind("Make") %>' />
            <br />
            Model:
            <asp:Label ID="ModelLabel" runat="server" Text='<%# Bind("Model") %>' />
            <br />
            Year:
            <asp:Label ID="YearLabel" runat="server" Text='<%# Bind("Year") %>' />
            <br />
            PurchasePrice:
            <asp:Label ID="PurchasePriceLabel" runat="server" Text='<%# Bind("PurchasePrice") %>' />
            <br />
            Colour:
            <asp:Label ID="ColourLabel" runat="server" Text='<%# Bind("Colour") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
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
