<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="SalesPlat_Auto.AddCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="jumbotron">
       <h1>SalesPlatform - Auto</h1>
     <h2>Add a New Customer</h2><br />
     <asp:FormView ID="FormView1" runat="server" DataKeyNames="CustomerId" DataSourceID="dsCustomer" DefaultMode="Insert">
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
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Proceed" OnClick="InsertButton_Click" />
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
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="dsCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([Name], [Surname], [idNumber], [Bank]) VALUES (@Name, @Surname, @idNumber, @Bank)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [Name] = @Name, [Surname] = @Surname, [idNumber] = @idNumber, [Bank] = @Bank WHERE [CustomerId] = @CustomerId" OnInserted="dsCustomer_Inserted">
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
