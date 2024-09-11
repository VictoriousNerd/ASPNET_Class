<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="password_change.aspx.cs" Inherits="Test_Projects.password_change" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h2>Change Password</h2>
            <p>
                Current Password:<br />
                <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="txtCurrentPassword"></asp:RequiredFieldValidator>
            </p>
            <p>
                New Password:<br />
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="txtNewPassword"></asp:RequiredFieldValidator>
            </p>
            <p>
                Confirm Password:<br />
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="These fields must match." ControlToCompare="txtCurrentPassword" ControlToValidate="txtConfirmPassword"></asp:CompareValidator>
            </p>
            <p>
                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" OnClick="btnChangePassword_Click" />
            </p>
            <p>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </p>
        </div>
    </div>
</asp:Content>
