<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login_Form.aspx.cs" Inherits="Test_Projects.Login_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h2>Login</h2>
            <p>
                Username:<br />
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
            </p>
            <p>
                Password:<br />
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </p>
            <p><a href="/password_change.aspx">Change Password</a></p>
            <p>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </p>
            <p>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </p>
        </div>
    </div>
</asp:Content>
