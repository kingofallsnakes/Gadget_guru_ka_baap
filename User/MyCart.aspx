<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="User_MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            My Shopping Cart -
            <asp:Label ID="lbl" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                style="text-align: center" Width="885px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" DataKeyNames="oid" 
                onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
                onrowupdating="GridView1_RowUpdating" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="2px" CellPadding="4" 
                ForeColor="Black" GridLines="Horizontal">
            <Columns>
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
            <asp:Image runat="server" ID="imgg" ImageUrl='<%#Eval("image") %>'  Height="40px" Width="35px"/>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="ItemName" DataField="Iname" />
            <asp:BoundField HeaderText="Price" DataField="price" />
            <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
            <asp:TextBox runat="server" ID="txtq" Text='<%#Eval("Qnt") %>'  Height="20px" Width="40px"/>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="TotalPrice" DataField="TPrice" />
             <asp:TemplateField HeaderText="Update">
            <ItemTemplate>
           <asp:LinkButton runat="server" Text="Update" CommandName="update" ID="lnkup" CommandArgument='<%#Eval("OID") %>'></asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField HeaderText="Remove">
            <ItemTemplate>
           <asp:LinkButton runat="server" Text="Remove" CommandName="Delete" CommandArgument='<%#Eval("OID") %>' ID="lnkrem"></asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField>
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
        <td align="center">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Button ID="Button2" runat="server" CssClass="btn" 
                Text="Continew Shopping" PostBackUrl="~/User/Default.aspx" 
                onclick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Check Out" 
                onclick="Button3_Click" PostBackUrl="~/User/Checkout.aspx" />
        </td>
    </tr>
</table>
</asp:Content>

