<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style4
        {
        }
        .style5
        {
        }
        .style6
        {
    }
        .style7
        {
            width: 157px;
        }
    .style8
    {
        color: #FF6600;
    }
    .style9
    {
        font-size: large;
    }
    .style10
    {
        width: 256px;
    }
        .style11
        {
            height: 34px;
        }
    </style>
    <script type="text/javascript">
        function img(i) {

            var imgg = document.getElementById('<%=Image3.ClientID%>');
            imgg.src = i.src;
        
        }
    
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">

     <tr>
            <td class="tblhead" colspan="2">
               

                Item Detail</td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Image ID="Image3" runat="server" Height="282px" Width="285px" 
                    CssClass="vimg" />
            </td>
            <td valign="top" rowspan="2" 
                
                style="border-left-style: solid; border-left-width: thin; border-left-color: #C0C0C0" 
                bgcolor="#EEFBEE">
                <span class="style8"><span class="style9">&nbsp;&nbsp; Item Name : </span>
                </span><span class="style9">
                <asp:Label ID="lblname" runat="server" CssClass="style8"></asp:Label>
                </span>
                <br />
                <br />
                <span class="style9"><span class="style8">&nbsp;&nbsp;
                Item Price :
                </span>
                <asp:Label ID="lblprice" runat="server" CssClass="style8"></asp:Label>
                <br class="style8" />
                <br class="style8" />
                <span class="style8">&nbsp;&nbsp;
                Item Quntity :
                </span>
                <asp:Label ID="lblqnt" runat="server" CssClass="style8"></asp:Label>
                </span>
                <br />
                <br />
                <span class="style9">
                <span class="style8">&nbsp;&nbsp; Item Size :
                </span>
                <asp:Label ID="lblqnt0" runat="server" CssClass="style8"></asp:Label>
                </span>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;
                Detail : 
                <asp:Label ID="lbldetil" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" 
                    Text="Add to Cart" Width="120px" />
                <asp:Label ID="lbleror" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <table class="style2">
                    <tr>
                        <td>
                            <asp:Image ID="Image4" runat="server" Height="80px" Width="70px"  
                                onmouseover="img(this)" CssClass="vimg"/>
                        </td>
                        <td>
                            <asp:Image ID="Image5" runat="server" Height="80px" Width="70px" 
                                onmouseover="img(this)" CssClass="vimg" />
                        </td>
                        <td>
                            <asp:Image ID="Image6" runat="server" Height="80px" Width="70px" 
                                onmouseover="img(this)" CssClass="vimg"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="7" 
                    RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table class="style7">
                            <tr>
                                <td bgcolor="#272727" style="text-align: center" class="style11">
                                    <asp:Label ID="lblinamee" Text='<%#Eval("iname")%>' runat="server" ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Image ID="imgitem" runat="server" CssClass="vimg" Height="80px" ImageUrl='<%#Eval("image") %>'
                                         Width="70px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Button ID="Button3" runat="server" CssClass="btn" Font-Size="Small" 
                                        Height="25px"  CommandArgument='<%#Eval("iid") %>' 
                                        Text="Buy" Width="80px" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

