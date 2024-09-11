<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationTypes.aspx.cs" Inherits="Test_Projects.ValidationTypes" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <table style="width: 100%;">
                <tr>
                    <td>Required Field Validation:</td>
                    <td>
                        <asp:TextBox ID="ReqFieldVal" runat="server" ValidationGroup="ValidationGroup"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required." ControlToValidate="ReqFieldVal" ValidationGroup="ValidationGroup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Compared Validation:</td>
                    <td>
                        <asp:TextBox ID="CompVal" runat="server" TextMode="Password" ValidationGroup="ValidationGroup"></asp:TextBox>
                        <asp:TextBox ID="CompValConfirm" runat="server" TextMode="Password" ValidationGroup="ValidationGroup"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required." ControlToValidate="CompVal" ValidationGroup="ValidationGroup"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required." ControlToValidate="CompValConfirm" ValidationGroup="ValidationGroup"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="ComparedValidator" runat="server" ControlToValidate="CompValConfirm" ControlToCompare="CompVal" ErrorMessage="These fields do not match." ValidationGroup="ValidationGroup"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Range Validator:</td>
                    <td>
                        <asp:TextBox ID="RngVal" runat="server" ValidationGroup="ValidationGroup"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field is required." ControlToValidate="RngVal" ValidationGroup="ValidationGroup"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator" runat="server" ControlToValidate="RngVal" Type="Integer" MinimumValue="1" MaximumValue="10" ErrorMessage="You must pick a number between 1 and 10." ValidationGroup="ValidationGroup"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>Regular Expression Validator:</td>
                    <td>
                        <asp:TextBox ID="RegExpVal" runat="server" ValidationGroup="ValidationGroup"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ControlToValidate="RegExpVal" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Use a standard email format." ValidationGroup="ValidationGroup"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This field is required." ControlToValidate="RegExpVal" ValidationGroup="ValidationGroup"></asp:RequiredFieldValidator>
                   </td>
                </tr>
                <tr>
                    <td>Custom Validator</td>
                    <td>
                        <asp:TextBox ID="txtCustomInput" runat="server" ValidationGroup="ValidationGroup"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CustomValidator ID="customValidator" runat="server" ControlToValidate="txtCustomInput" ErrorMessage="Input BATMAN" OnServerValidate="CustomValidation_ServerValidate" ValidationGroup="ValidationGroup"></asp:CustomValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This field is required." ControlToValidate="txtCustomInput" ValidationGroup="ValidationGroup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="validationSummary" runat="server" ShowMessageBox="true" ShowSummary="true" HeaderText="Validation Summary:" DisplayMode="BulletList" ValidationGroup="ValidationGroup" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CausesValidation="true" ValidationGroup="ValidationGroup" />
                        <asp:Label ID="SubmitSuccess" runat="server" Visible="false" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>