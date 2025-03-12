<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="admin_AddminItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style12
    {
        }
    .style14
    {
        width: 156px;
    }
        .style17
        {
            height: 19px;
        width: 216px;
    }
    .style18
    {
        width: 216px;
    }
        .style19
        {
            color: green;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            width: 156px;
        }
        .auto-style3 {
            color: #ffffff;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            width: 292px;
        }
        .auto-style6 {
            height: 30px;
            width: 292px;
        }
        .auto-style7 {
            width: 84px;
        }
        .auto-style8 {
            color: #ffffff;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            width: 84px;
        }
        .auto-style9 {
            height: 30px;
            width: 84px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td colspan="4" class="tblhead" align="center">
            Add Item</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            Item Name:</td>
        <td align="LEFT" class="auto-style6" >
            <asp:TextBox ID="txtiname" runat="server" placeholder=" Type item name!!!" 
                CssClass="txt" Font-Bold="False" Font-Italic="False" 
                ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtiname" ErrorMessage="Enter Item Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style8" >
            Image1:</td>
        <td align="LEFT" class="auto-style4" >
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="FileUpload1" ErrorMessage="!!" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            Description:</td>
        <td style="text-align: left" class="auto-style6" >
            <asp:TextBox ID="txtdescrip" runat="server" placeholder=" Enter Description!!" 
                 CssClass="txt" ontextchanged="txtdescrip_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtdescrip" ErrorMessage="Enter Detail" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style8" >
            Image2 :</td>
        <td style="text-align: left" class="auto-style4" >
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="FileUpload2" ErrorMessage="!!" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            Price:</td>
        <td style="text-align: left" class="auto-style6">
            <asp:TextBox ID="txtprice" runat="server" placeholder="Enter Price!!" 
              CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtprice" ErrorMessage="Enter Price" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style8">
            Image3 :</td>
        <td style="text-align: left" class="auto-style4">
            <asp:FileUpload ID="FileUpload3" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="FileUpload3" ErrorMessage="!!" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            Quantity:</td>
        <td style="text-align: left" class="auto-style6">
            <asp:TextBox ID="txtquan" runat="server" placeholder="Enter Quantity" 
         CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtquan" ErrorMessage="Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td style="text-align: left" class="auto-style9">
        </td>
        <td style="text-align: left" class="auto-style4">
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Size : </td>
        <td style="text-align: left" class="auto-style5">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="drp">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="text-align: left" class="auto-style7">
        </td>
        <td style="text-align: left">
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Category Name:</td>
        <td style="text-align: left" class="auto-style5">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drp">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Enter Category Name" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td style="text-align: left" class="auto-style7">
            &nbsp;</td>
        <td style="text-align: left">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="auto-style5" align="left">
            <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                Text="ADD ITEM" Height="30px" Width="100px" />
            <asp:Label ID="lblmsg" runat="server" ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style7" align="left">
            &nbsp;</td>
        <td class="style18" align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="auto-style5" align="left">
            &nbsp;</td>
        <td class="auto-style7" align="left">
            &nbsp;</td>
        <td class="style18" align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12" colspan="4">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                AutoGenerateDeleteButton="True" 
                DataKeyNames="IID" onrowdeleting="GridView1_RowDeleting" 
                onrowcancelingedit="GridView1_RowCancelingEdit1" 
                onrowediting="GridView1_RowEditing1" 
                onrowupdating="GridView1_RowUpdating1" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                GridLines="Horizontal" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="843px" 
                ForeColor="Black" style="text-align: center">
                <Columns>
                <asp:CommandField CausesValidation="false" ShowEditButton="true" />
                    <asp:BoundField DataField="IName" HeaderText="ITEM NAME" 
                        SortExpression="IName" />
                    <asp:BoundField DataField="price" HeaderText="PRICE" SortExpression="price" />
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
</asp:Content>

