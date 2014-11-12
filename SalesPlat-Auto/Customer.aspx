<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="SalesPlat_Auto.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2>Click select on the required customer</h2><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerId" DataSourceID="dsCustomer">
        <Columns>
            <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
            <asp:BoundField DataField="idNumber" HeaderText="idNumber" SortExpression="idNumber" />
            <asp:HyperLinkField Text="Select" DataNavigateUrlFields="CustomerId" DataNavigateUrlFormatString="Sale.aspx?CustomerId={0}" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
    <asp:SqlDataSource ID="dsCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([Name], [Surname], [idNumber], [Bank]) VALUES (@Name, @Surname, @idNumber, @Bank)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [Name] = @Name, [Surname] = @Surname, [idNumber] = @idNumber, [Bank] = @Bank WHERE [CustomerId] = @CustomerId">
        <DeleteParameters>
            <asp:Parameter Name="CustomerId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
            <asp:Parameter Name="idNumber" Type="String" />
            <asp:Parameter Name="Bank" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
            <asp:Parameter Name="idNumber" Type="String" />
            <asp:Parameter Name="Bank" Type="String" />
            <asp:Parameter Name="CustomerId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>
