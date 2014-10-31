<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="SalesPlat_Auto.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    Invoice
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                  <asp:TableCell>
                    <asp:Button ID="Button1" runat="server" Text="Cancel" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="AccpetBtn" runat="server" Text="Accept" />
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
    </p>
</asp:Content>
