<%@ Page Title="" Language="C#" MasterPageFile="~/emp_manag_sys.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="employee_management_system.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12 mt-5">
            <p>Employee Id:</p>
            <p>
                <asp:TextBox ID="emp_ID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="emp_ID is required." ControlToValidate="emp_ID"></asp:RequiredFieldValidator>
            </p>
            <p>Employee Name:</p>
            <p>
                <asp:TextBox ID="emp_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="emp_name is required." ControlToValidate="emp_name"></asp:RequiredFieldValidator>
            </p>
            <p>Address:</p>
            <p>
                <asp:TextBox ID="emp_address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="emp_address is required." ControlToValidate="emp_address"></asp:RequiredFieldValidator>
            </p>
            <p>City:</p>
            <p>
                <asp:TextBox ID="emp_city" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="emp_city is required." ControlToValidate="emp_city"></asp:RequiredFieldValidator>
            </p>
            <p>DOB:</p>
            <p>
                <asp:TextBox ID="emp_DOB" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="emp_DOB is required." ControlToValidate="emp_DOB"></asp:RequiredFieldValidator>
            </p>
            <p>Email:</p>
            <p>
                <asp:TextBox ID="emp_email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="emp_email is required." ControlToValidate="emp_email"></asp:RequiredFieldValidator>
            </p>
            <p>Password:</p>
            <p>
                <asp:TextBox ID="emp_password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="emp_password is required." ControlToValidate="emp_password"></asp:RequiredFieldValidator>
            </p>
            <ul class="list-inline mt-5">
                <li class="list-inline-item">
                    <asp:Button ID="btn_emp_add" runat="server" Text="Add Employee" CssClass="btn btn-success" OnClick="btn_add_emp_Click" />
                </li>
                <li class="list-inline-item">
                    <asp:Button ID="btn_emp_delete" runat="server" Text="Delete Employee" CssClass="btn btn-danger" OnClick="btn_delete_emp_Click" />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
