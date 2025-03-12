<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="AddQuantity.aspx.cs" Inherits="admin_AddQuantity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
        }
        .style9
        {
            width: 73px;
        }
        .style13
        {
            color: blue;
            text-align: center;
        }
        .style15
        {
            color: green;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            width: 239px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">ADD QUANTITY PAGE</td>
        </tr>
        <tr>
            <td valign="top">
    <table>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Select Item:</td>
        <td align="LEFT">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="drp">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            ADD Quantity:</td>
        <td style="text-align: left"  >
            <asp:TextBox ID="txtquan" runat="server" placeholder="Qnt" 
                CssClass="txt" Width="100px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtquan" ErrorMessage="Enter Quantity" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td align="left">
            <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                Text="ADD " Width="70px" Height="30px" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                GridLines="Horizontal" Width="876px" ForeColor="Black" style="text-align: center">
                <Columns>
                    <asp:BoundField DataField="INAME" HeaderText="ITEM NAME" 
                        SortExpression="INAME" />
                    <asp:BoundField DataField="QNT" HeaderText="TOTAL QUANTITY" 
                        SortExpression="QNT" />
                    <asp:BoundField DataField="AQNT" HeaderText="AVAILABLE QUANTITY" 
                        SortExpression="AQNT" />
                    <asp:BoundField DataField="SQNT" HeaderText="SELL QUANTITY" 
                        SortExpression="SQNT" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    </table>
            </td>
        </tr>
    </table>
</asp:Content>

