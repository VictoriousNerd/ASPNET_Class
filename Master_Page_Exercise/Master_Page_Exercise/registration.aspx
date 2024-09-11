<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Master_Page_Exercise.contact_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderForm" runat="server">

    <table>
        <tr>
            <td>
                <asp:Label ID="username_label" runat="server" Text="Username:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="username_text" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="reqFieldVal_username" runat="server" ErrorMessage="Please enter a username." ControlToValidate="username_text"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="clientname_label" runat="server" Text="First & Last Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="clientname_text" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="reqFieldVal_clientname" runat="server" ErrorMessage="Please enter your name." ControlToValidate="clientname_text"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="password_label" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="password_text" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="reqFieldVal_password" runat="server" ErrorMessage="Please enter a password." ControlToValidate="password_text"></asp:RequiredFieldValidator><br />
                <asp:CustomValidator ID="cusVal_password" runat="server" ErrorMessage="Password must contain at least 1 uppercase letter, 1 lowercase letter, and 1 number." ControlToValidate="password_text" OnServerValidate="ValidatePassword" ValidateEmptyText="true"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <p><asp:Button ID="submit_registration" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary" /></p>
                <p><asp:Label ID="SubmitSuccess" runat="server"></asp:Label></p>
            </td>
        </tr>
    </table>
</asp:Content>
