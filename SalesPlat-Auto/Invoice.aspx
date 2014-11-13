<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="SalesPlat_Auto.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron" style="text-align: right">
        <h1 class="text-left">SalesPlatform - Auto</h1>
         
         <br />
         <table style="width: 72%">
             <tr>
                 <td class="modal-lg" style="width: 426px">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td><h1>Invoice</h1></td>
             </tr>
             <tr>
                 <td class="modal-lg" style="width: 426px">
                     <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="Black">
                         <EditItemTemplate>
                             Customer:
                             <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' />
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
                             Customer:
                             <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' />
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
                             Customer:
                             <asp:Label ID="CustomerLabel" runat="server" Text='<%# Bind("Customer") %>' />
                             <br />

                             idNumber:
                             <asp:Label ID="idNumberLabel" runat="server" Text='<%# Bind("idNumber") %>' />
                             <br />
                             Bank:
                             <asp:Label ID="BankLabel" runat="server" Text='<%# Bind("Bank") %>' />
                             <br />
                         </ItemTemplate>
                     </asp:FormView>
                 </td>
                 <td>&nbsp;</td>
                 <td>
                     <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource4">
                         <EditItemTemplate>
                             Salesman:
                             <asp:TextBox ID="SalesmanTextBox" runat="server" Text='<%# Bind("Salesman") %>' />
                             <br />
                             <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                             &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                         </EditItemTemplate>
                         <InsertItemTemplate>
                             Salesman:
                             <asp:TextBox ID="SalesmanTextBox" runat="server" Text='<%# Bind("Salesman") %>' />
                             <br />
                             <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                             &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                         </InsertItemTemplate>
                         <ItemTemplate>
                             Salesman:
                             <asp:Label ID="SalesmanLabel" runat="server" Text='<%# Bind("Salesman") %>' />
                             <br />

                         </ItemTemplate>
                     </asp:FormView>
                     <br />
                     <br />
                 </td>
             </tr>
             <tr>
                 <td class="modal-lg" style="width: 426px">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="text-right">&nbsp;</td>
             </tr>
             <tr>
                 <td class="modal-lg" style="width: 426px">
                     <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource5">
                         <EditItemTemplate>
                             SaleLine:
                             <asp:TextBox ID="SaleLineTextBox" runat="server" Text='<%# Bind("SaleLine") %>' />
                             <br />
                             <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                             &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                         </EditItemTemplate>
                         <InsertItemTemplate>
                             SaleLine:
                             <asp:TextBox ID="SaleLineTextBox0" runat="server" Text='<%# Bind("SaleLine") %>' />
                             <br />
                             <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                             &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                         </InsertItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="SaleLineLabel" runat="server" Text='<%# Bind("SaleLine") %>' />
                             <br />

                         </ItemTemplate>
                     </asp:FormView>
                 </td>
                 <td>
                     <br />
                 </td>
                 <td class="text-right">R<asp:TextBox ID="TextBox1" runat="server" style="color: #999999"></asp:TextBox>
                 </td>
             </tr>
         </table>
         <div class="text-right">
         <br />
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
         <br />
    <br />
         </div>
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
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Name + N' ' + Surname AS Customer, idNumber, Bank FROM Customer">
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name]+ ' ' +  [Surname] as Salesman FROM [SalesMan] WHERE ([SalesManId] = @SalesManId)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="SalesManId" QueryStringField="salesmanId" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT 'A' + ' ' + Colour + ' ' + Make + ' ' + Model + ' manufactured in ' + CAST(Year AS nvarchar(50)) AS SaleLine FROM Stock WHERE (StockId = @StockId)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="StockId" QueryStringField="StockId" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
         </div>
</asp:Content>
