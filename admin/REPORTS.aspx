<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="REPORTS.aspx.cs" Inherits="admin_REPORTS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Reports</td>
        </tr>
        <tr>
            <td valign="top">
                <table width="100%">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Select Category : </td>
                        <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drp">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select Category" 
                    ForeColor="Red" InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                    Text="View" />
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" GridLines="Horizontal" Width="873px" ForeColor="Black" style="text-align: center">
                    <Columns>
                        <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                        <asp:Image runat="server" ID="imggg" ImageUrl='<%#Eval("image") %>' Width="60px" Height="60px" />
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="iname" HeaderText="ItemName" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="Qnt" HeaderText="Qnt" />
                        <asp:BoundField DataField="aqnt" HeaderText="Available" />
                        <asp:BoundField DataField="sqnt" HeaderText="SellQnt" />
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
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

