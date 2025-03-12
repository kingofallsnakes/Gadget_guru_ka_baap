<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Change Password.aspx.cs" Inherits="admin_Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        width: 100%;
    }
    .auto-style1 {
        width: 100px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Change Password</td>
    </tr>
    <tr>
        <td style="text-align: center" valign="top">
            <table width="100%">
                <tr>
                    <td class="lbl">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">Enter New Password:</td>
                    <td align="left">
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpass" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">Confirm Password : </td>
                    <td align="left">
            <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcpass" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="left">
            <asp:Button ID="Button10" runat="server" CssClass="btn" 
                onclick="Button10_Click" Text="Save" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    </table>
</asp:Content>

