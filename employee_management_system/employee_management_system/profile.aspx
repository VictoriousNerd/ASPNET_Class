<%@ Page Title="" Language="C#" MasterPageFile="~/emp_manag_sys.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="employee_management_system.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12 mt-5">
            <p>
                Employee ID: <asp:Label ID="emp_ID_label" runat="server" Text=""></asp:Label>
            </p>
            <p>
                Name: <asp:Label ID="emp_name_label" runat="server" Text=""></asp:Label>
            </p>
            <p>
                Address: <asp:Label ID="emp_address_label" runat="server" Text=""></asp:Label>
            </p>
            <p>
                City: <asp:Label ID="emp_city_label" runat="server" Text=""></asp:Label>
            </p>
            <p>
                DOB: <asp:Label ID="emp_dob_label" runat="server" Text=""></asp:Label>
            </p>
            <p>
                Email: <asp:Label ID="emp_email_label" runat="server" Text=""></asp:Label>
            </p>
            <p>
                Education Name: <asp:Label ID="emp_education_name_label" runat="server" Text=""></asp:Label><br />
                <asp:TextBox ID="emp_education_name" runat="server"></asp:TextBox>
            </p>
            <p>
                Passing Year: <asp:Label ID="emp_passing_year_label" runat="server" Text=""></asp:Label><br />
                <asp:TextBox ID="emp_passing_year" runat="server"></asp:TextBox>
            </p>
            <p>
                Passing Result: <asp:Label ID="emp_passing_result_label" runat="server" Text=""></asp:Label><br />
                <asp:TextBox ID="emp_passing_result" runat="server"></asp:TextBox>
            </p>
            <p>
                Certifications: <asp:Label ID="emp_certifications_label" runat="server" Text=""></asp:Label><br />
                <asp:TextBox ID="emp_certifications" runat="server"></asp:TextBox>
            </p>
            <ul class="list-inline mt-5">
                <li class="list-inline-item">
                    <asp:Button ID="btn_view_edu_details" runat="server" Text="View Details" CssClass="btn btn-primary" OnClick="btn_view_details_Click" />
                </li>
                <li class="list-inline-item">
                    <asp:Button ID="btn_add_edu_details" runat="server" Text="Add Details" CssClass="btn btn-success" OnClick="btn_add_details_Click" />
                </li>
                <li class="list-inline-item">
                    <asp:Button ID="btn_update_details" runat="server" Text="Update Details" CssClass="btn btn-info" OnClick="btn_update_details_Click" />
                </li>
                <li class="list-inline-item">
                    <asp:Button ID="btn_delete_details" runat="server" Text="Delete Details" CssClass="btn btn-danger" OnClick="btn_delete_details_Click" />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>