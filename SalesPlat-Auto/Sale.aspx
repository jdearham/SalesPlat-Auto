<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sale.aspx.cs" Inherits="SalesPlat_Auto.Sale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    Sales Person&nbsp;
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="dsSalesMan" DataTextField="Full Name" DataValueField="SalesManId">
</asp:DropDownList>
    <br />
<asp:SqlDataSource ID="dsSalesMan" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT SalesManId, Name, Surname, Name + ' ' + Surname AS [Full Name] FROM SalesMan"></asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CustomerId" DataSourceID="dsCustomer">
        <EditItemTemplate>
            CustomerId:
            <asp:Label ID="CustomerIdLabel1" runat="server" Text='<%# Eval("CustomerId") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Surname:
            <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
            <br />
            idNumber:
            <asp:TextBox ID="idNumberTextBox" runat="server" Text='<%# Bind("idNumber") %>' />
            <br />
            Bank:
            <asp:TextBox ID="BankTextBox" runat="server" Text='<%# Bind("Bank") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Surname:
            <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
            <br />
            idNumber:
            <asp:TextBox ID="idNumberTextBox" runat="server" Text='<%# Bind("idNumber") %>' />
            <br />
            Bank:
            <asp:TextBox ID="BankTextBox" runat="server" Text='<%# Bind("Bank") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            CustomerId:
            <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Surname:
            <asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
            <br />
            idNumber:
            <asp:Label ID="idNumberLabel" runat="server" Text='<%# Bind("idNumber") %>' />
            <br />
            Bank:
            <asp:Label ID="BankLabel" runat="server" Text='<%# Bind("Bank") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="dsCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer] WHERE ([CustomerId] = @CustomerId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CustomerId" QueryStringField="CustomerId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
<br />
    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Select Vehicle" />
&nbsp;<asp:SqlDataSource ID="dsStockSelect" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Stock] WHERE ([StockId] = @StockId)" DeleteCommand="DELETE FROM [Stock] WHERE [StockId] = @StockId" InsertCommand="INSERT INTO [Stock] ([Make], [Model], [Year]) VALUES (@Make, @Model, @Year)" UpdateCommand="UPDATE [Stock] SET [Make] = @Make, [Model] = @Model, [Year] = @Year WHERE [StockId] = @StockId">
        <DeleteParameters>
            <asp:Parameter Name="StockId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Year" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="StockId" QueryStringField="StockId" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Year" Type="Decimal" />
            <asp:Parameter Name="StockId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="StockId" DataSourceID="dsSelectedStock" Width="228px">
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

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="dsSelectedStock" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="dsSelectedStock_Selecting" SelectCommand="SELECT * FROM [Stock] WHERE ([StockId] = @StockId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="StockId" QueryStringField="StockId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StockId" DataSourceID="dsStock">
    <Columns>
        <asp:BoundField DataField="StockId" HeaderText="StockId" InsertVisible="False" ReadOnly="True" SortExpression="StockId" />
        <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:BoundField DataField="PurchasePrice" HeaderText="PurchasePrice" SortExpression="PurchasePrice" />
        <asp:BoundField DataField="Colour" HeaderText="Colour" SortExpression="Colour" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="dsStock" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Stock] WHERE ([StockId] = @StockId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="StockId" QueryStringField="StockId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Proceed" />
<br />
    <br />
&nbsp;
    </asp:Content>
