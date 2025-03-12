<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" Runat="Server">
    <link href="meera.css?v=2" rel="stylesheet" type="text/css" />  
    <style type="text/css">
        .fullWidth {
            width: 100%;
        }
        .imageContainer {
            width: 318px;
        }
        .textBlack {
            color: #000000;
        }
        .largeText {
            font-size: large;
        }
    </style>
    <script type="text/javascript">
        function changeImage(sourceImage) {
            var mainImage = document.getElementById('<%=Image3.ClientID%>');
            mainImage.src = sourceImage.src;
        }
    </script>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="fullWidth">
        <tr>
            <td class="tblhead" colspan="2">
                PRODUCT DETAIL
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="imageContainer">
                <asp:Image ID="Image3" runat="server" Height="282px" Width="285px" CssClass="vimg" />
            </td>
            <td valign="top" rowspan="2"
                style="border-left: thin solid #C0C0C0; background-color: #FCFEFC;">
                <div class="textBlack largeText">
                    &nbsp;&nbsp; Item Name:
                    <asp:Label ID="lblname" runat="server" CssClass="textBlack"></asp:Label>
                    <br /><br />
                    &nbsp;&nbsp; Item Price:
                    <asp:Label ID="lblprice" runat="server" CssClass="textBlack"></asp:Label>
                    <br /><br />
                    &nbsp;&nbsp; Item Quantity:
                    <asp:Label ID="lblqnt" runat="server" CssClass="textBlack"></asp:Label>
                    <br /><br />
                    &nbsp;&nbsp; Item Size:
                    <asp:Label ID="lblqnt0" runat="server" CssClass="textBlack"></asp:Label>
                    <br /><br /><br /><br />
                    &nbsp;&nbsp; Detail:
                    <asp:Label ID="lbldetil" runat="server"></asp:Label>
                    <br /><br /><br /><br /><br /><br />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" CssClass="btn" OnClick="Button3_Click" 
                        Text="Buy Now" Width="140px" PostBackUrl="~/Login.aspx" Height="35px" />
                </div>
            </td>
        </tr>
        <tr>
            <td class="imageContainer">
                <table class="fullWidth">
                    <tr>
                        <td>
                            <asp:Image ID="Image4" runat="server" Height="80px" Width="70px"  
                                OnMouseOver="changeImage(this)" CssClass="vimg" />
                        </td>
                        <td>
                            <asp:Image ID="Image5" runat="server" Height="80px" Width="70px" 
                                OnMouseOver="changeImage(this)" CssClass="vimg" />
                        </td>
                        <td>
                            <asp:Image ID="Image6" runat="server" Height="80px" Width="70px" 
                                OnMouseOver="changeImage(this)" CssClass="vimg" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="imageContainer">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>





