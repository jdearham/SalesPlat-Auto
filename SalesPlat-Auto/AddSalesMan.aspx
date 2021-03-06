﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddSalesMan.aspx.cs" Inherits="SalesPlat_Auto.AddSalesMan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>SalesPlatform - Auto</h1>
        <h2>Add a New Salesman</h2><br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="SalesManId" DataSourceID="dsSalesMan" DefaultMode="Insert">
        <EditItemTemplate>
            SalesManId:
            <asp:Label ID="SalesManIdLabel1" runat="server" Text='<%# Eval("SalesManId") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Surname:
            <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td>
                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                    </td>
                </tr>
            </table>
            &nbsp;<table style="width: 100%">
                <tr>
                    <td class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" BorderStyle="Solid" CausesValidation="False" CommandName="Cancel" PostBackUrl="~/Default.aspx" Text="Cancel" Width="85px" />
                        <asp:LinkButton ID="InsertButton" runat="server" BorderStyle="Solid" CausesValidation="True" CommandName="Insert" Text="Insert" Width="85px" />
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </InsertItemTemplate>
        <ItemTemplate>
            SalesManId:
            <asp:Label ID="SalesManIdLabel" runat="server" Text='<%# Eval("SalesManId") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Surname:
            <asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="dsSalesMan" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SalesMan] WHERE [SalesManId] = @SalesManId" InsertCommand="INSERT INTO [SalesMan] ([Name], [Surname]) VALUES (@Name, @Surname)" SelectCommand="SELECT * FROM [SalesMan]" UpdateCommand="UPDATE [SalesMan] SET [Name] = @Name, [Surname] = @Surname WHERE [SalesManId] = @SalesManId">
        <DeleteParameters>
            <asp:Parameter Name="SalesManId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
            <asp:Parameter Name="SalesManId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>
