<%@ Page Title="" Language="C#" MasterPageFile="~/emp_manag_sys.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="employee_management_system.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xl-12 mt-5">
            <h4 class="text-center">Email Address:</h4>
            <p class="text-center">
                <asp:TextBox ID="email_login" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email required" ControlToValidate="email_login"></asp:RequiredFieldValidator>
            </p>
            <h4 class="text-center">Password:</h4>
            <p class="text-center">
                <asp:TextBox ID="password_login" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password required" ControlToValidate="password_login"></asp:RequiredFieldValidator>
            </p>            
            <p class="text-center">
                Update new password here:<br />
                <asp:TextBox ID="password_change" runat="server"></asp:TextBox>
            </p>
            <ul class="list-inline text-center mt-5">
                <li class="list-inline-item">
                    <asp:Button ID="btn_login" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btn_login_click" />
                </li>
                <li class="list-inline-item">
                    <asp:Button ID="btn_changePass" runat="server" Text="Change Password" CssClass="btn btn-warning" OnClick="btn_change_password" />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
