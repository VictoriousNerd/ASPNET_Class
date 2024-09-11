<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Master_Page_Exercise.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderForm" runat="server">

    <table>
        <tr>
            <td>
                <p>
                    <asp:Label ID="usernameLogin_label" runat="server" Text="Username:"></asp:Label>
                </p>
            </td>
            <td>
                <p>
                    <asp:TextBox ID="usernameLogin_text" runat="server"></asp:TextBox>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <asp:Label ID="passwordLogin_label" runat="server" Text="Password:"></asp:Label>
                </p>
            </td>
            <td>
                <p>
                    <asp:TextBox ID="passwordLogin_Text" runat="server"></asp:TextBox>
                </p>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <p>
                    <asp:Button ID="submit_login" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" /><br />
                    <asp:Label ID="loginSuccess" runat="server"></asp:Label>
                </p>
            </td>
        </tr>
    </table>

</asp:Content>
