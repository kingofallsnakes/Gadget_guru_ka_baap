<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="VIEWPAYMENT.aspx.cs" Inherits="admin_VIEWPAYMENT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 169px;
        }
        .style10
        {
            color: #0ef2f6fb;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            width: 169px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Payment Report</td>
        </tr>
        <tr>
            <td valign="top"><table width="100%" >
        <tr>
            <td class="lbl">
                SELECT USER</td>
            <td>
                <asp:DropDownList ID="drpuser" runat="server" Width="200px" CssClass="drp">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td  >
                &nbsp;</td>
            <td>
                <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                    Text="VIEW" />
            &nbsp;<asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                style="text-align: center" Width="878px" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    GridLines="Horizontal" ForeColor="Black">
            <Columns>
            <asp:BoundField HeaderText="Payment Type"  DataField="type" />
<asp:BoundField HeaderText="Bank Name"  DataField="bank" />
<asp:BoundField HeaderText="Bank Branch"  DataField="branch" />
            <asp:BoundField HeaderText="Card No"  DataField="cardno" />
            <asp:BoundField HeaderText="CVV No"  DataField="ccv" />
              <asp:BoundField HeaderText="Amount"  DataField="amount" />
           <asp:BoundField HeaderText="Payment Date"  DataField="entrydate" />
            </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" ForeColor="White" Font-Bold="True" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            </td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
</asp:Content>

