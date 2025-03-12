<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cobra World</title>
    <link href="meera.css?v=2" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="engine1/style.css?v=2" media="screen" />
    <script type="text/javascript" src="engine1/jquery.js"></script>
    <style type="text/css">
        .style2 {
            width: 100%;
            height: 47px;
        }
        .style3 {
            width: 380px;
        }
        .style4 {
            width: 541px;
        }
        .style6 {
            width: 122px;
        }
        .style7 {
            width: 996px;
        }
        .style8 {
            width: 554px;
        }
        .style9 {
            width: 383px;
        }
    </style>

    <script language="javascript" type="text/javascript">
        
        function wows0_onclick() {
           
        }
    </script>
</head>

<body>
    <form id="form1" runat="server">
        <!-- HEADER / TOP -->
        <div id="top">
            <!-- Logo + Search -->
            <table class="style7">
                <tr>
                    <td class="style8">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/logo1.png" />
                    </td>
                    <td>
                        <table class="style9">
                            <tr>
                                <td>
                                    <asp:TextBox 
                                        ID="txtsearch" 
                                        runat="server" 
                                        Width="300px" 
                                        BorderColor="#272727"
                                        BorderStyle="Solid" 
                                        BorderWidth="1px" 
                                        Height="25px">
                                    </asp:TextBox>
                                </td>
                                <td>
                                    <asp:Button 
                                        ID="Button2" 
                                        runat="server" 
                                        Text="Search" 
                                        OnClick="Button2_Click"
                                        Width="78px" 
                                        CssClass="btn" 
                                        CausesValidation="False" 
                                        Height="30px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>

        <!-- MENU BAR -->
        <div id="menu">
            <table class="style2">
                <tr>
                    <td>
                        <asp:Button 
                            ID="Button3" 
                            runat="server" 
                            Text="HOME" 
                            CssClass="btnmenu"
                            CausesValidation="False" 
                            PostBackUrl="~/Home.aspx" />
                    </td>
                    <td>
                        <asp:Button 
                            ID="Button4" 
                            runat="server" 
                            Text="SIGN UP" 
                            CssClass="btnmenu"
                            CausesValidation="False" 
                            PostBackUrl="~/Registration.aspx" />
                    </td>
                    
                    <td>
                        <asp:Button 
                            ID="Button5" 
                            runat="server" 
                            Text="LOGIN" 
                            CssClass="btnmenu"
                            CausesValidation="False" 
                            PostBackUrl="~/Login.aspx" />
                    </td> 
                    
                    <td>
                        <asp:Button 
                            ID="Button6" 
                            runat="server" 
                            Text="PRODUCT" 
                            CssClass="btnmenu"
                            CausesValidation="False" 
                            PostBackUrl="~/PRODUCT.aspx" />
                    </td>
                    <td>
                        <asp:Button 
                            ID="Button7" 
                            runat="server" 
                            Text="FEEDBACK" 
                            CssClass="btnmenu"
                            CausesValidation="False" 
                            PostBackUrl="~/Feedback.aspx" />
                    </td>
                    <td>
                        <asp:Button 
                            ID="Button8" 
                            runat="server" 
                            Text="ADMIN Login" 
                            CssClass="btnmenu"
                            CausesValidation="False" 
                            PostBackUrl="~/admin/login.aspx" />
                    </td>
                </tr>
            </table>
        </div>

        <!-- SECOND CONTAINER -->
        <div id="second">
            <!-- WOWSLIDER SLIDESHOW -->
            <div id="slide">
                <div id="wowslider-container1">
                    <div class="ws_images">
                        <a href="#"><img src="data1/images/1.jpg" alt="" title="" id="wows0" /></a>
                        <a href="#"><img src="data1/images/3.jpg" alt="" title="" id="wows1" /></a>
                        <a href="#"><img src="data1/images/14.jpg" alt="" title="" id="wows2" /></a>
                        <a href="#"><img src="data1/images/12.jpg" alt="" title="" id="wows3" /></a>
                        <a href="#"><img src="data1/images/11.jpg" alt="" title="" id="wows4" /></a>
                        <a href="#"><img src="data1/images/6.jpg" alt="" title="" id="wows5" /></a>
                        <a href="#"><img src="data1/images/8.jpg" alt="" title="" id="wows6" /></a>
                    </div>
                    <div class="ws_bullets">
                        <div>
                            <a href="#wows0" title=""><img src="data1/tooltips/1.jpg" alt="" />1</a>
                            <a href="#wows1" title=""><img src="data1/tooltips/3.jpg" alt="" />2</a>
                            <a href="#wows2" title=""><img src="data1/tooltips/14.jpg" alt="" />3</a>
                            <a href="#wows3" title=""><img src="data1/tooltips/12.jpg" alt="" />4</a>
                            <a href="#wows4" title=""><img src="data1/tooltips/11.jpg" alt="" />5</a>
                            <a href="#wows5" title=""><img src="data1/tooltips/6.jpg" alt="" />6</a>
                            <a href="#wows6" title=""><img src="data1/tooltips/8.jpg" alt="" />7</a>
                        </div>
                    </div>
                    
                </div>
                <script type="text/javascript" src="engine1/script.js"></script>
            </div>

            <!-- LOGIN SECTION -->
            <div id="login">
                <table class="style2">
                    <tr>
                        <td width="45%">
                            <table class="style3">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="style4">
                                <tr>
                                    <td style="text-align: right; color: #000000;">
                                        UserName :
                                    </td>
                                    <td>
                                        <asp:TextBox 
                                            ID="txtuname" 
                                            runat="server" 
                                            CssClass="txt">
                                        </asp:TextBox>
                                    </td>
                                    <td style="text-align: right; color: #000000;">
                                        Password :
                                    </td>
                                    <td>
                                        <asp:TextBox 
                                            ID="txtupass" 
                                            runat="server" 
                                            CssClass="txt" 
                                            TextMode="Password">
                                        </asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Button 
                                            ID="btnlogin" 
                                            runat="server" 
                                            CssClass="btn" 
                                            Text="Login"
                                            OnClick="btnlogin_Click" 
                                            CausesValidation="False" />
                                        <asp:Label 
                                            ID="lbll" 
                                            runat="server" 
                                            ForeColor="White">
                                        </asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>

            <!-- MAIN CONTENT AREA -->
            <div id="main">
                <div id="cate">
                    <table class="tbl">
                        <tr>
                            <td class="tblhead">COMPANY</td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:GridView 
                                    ID="GridView1" 
                                    runat="server" 
                                    AutoGenerateColumns="False" 
                                    ShowHeader="False"
                                    Width="100%" 
                                    CellPadding="6" 
                                    ForeColor="#272727" 
                                    GridLines="None"
                                    OnRowCommand="GridView1_RowCommand" 
                                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton 
                                                    runat="server" 
                                                    Text='<%#Eval("Cname") %>' 
                                                    CssClass="cgrid" 
                                                    ForeColor="#272727" 
                                                    ID="lnkcate" 
                                                    CommandName="cate" 
                                                    CommandArgument='<%#Eval("Cname") %>'>
                                                </asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle 
                                        BackColor="#FFCC66" 
                                        ForeColor="#272727" 
                                        HorizontalAlign="Center" />
                                    <RowStyle 
                                        BorderColor="White" 
                                        BorderStyle="None" 
                                        BorderWidth="0px"
                                        Font-Size="Medium" 
                                        Height="30px" 
                                        HorizontalAlign="Center" 
                                        BackColor="#FFFBD6" 
                                        ForeColor="#272727" />
                                    <SelectedRowStyle 
                                        BackColor="#FFCC66" 
                                        ForeColor="#272727" 
                                        Font-Bold="True" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">&nbsp;</td>
                        </tr>
                    </table>
                </div>

                <div id="item">
                    <!-- First DataList 
                    <asp:DataList 
                        ID="DataList1" 
                        runat="server" 
                        RepeatColumns="4"
                        RepeatDirection="Horizontal" 
                        Width="100%"
                        OnItemCommand="DataList1_ItemCommand" 
                        OnSelectedIndexChanged="DataList1_SelectedIndexChanged"
                        BackColor="#DEBA84" 
                        BorderColor="#DEBA84" 
                        BorderWidth="1px"
                        CellPadding="3" 
                        BorderStyle="None" 
                        CellSpacing="2" 
                        GridLines="Both">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <ItemStyle 
                            CssClass="igrid" 
                            BackColor="#FFF7E7" 
                            ForeColor="#8C4510" />
                        <ItemTemplate>
                            <table class="tbl">
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Image 
                                            ID="Image2" 
                                            runat="server" 
                                            CssClass="img" 
                                            ImageUrl='<%#Eval("image") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Name :
                                        <asp:Label 
                                            ID="Label1" 
                                            runat="server" 
                                            Text='<%#Eval("iname") %>'>
                                        </asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Price :
                                        <asp:Label 
                                            ID="Label2" 
                                            runat="server" 
                                            Text='<%#Eval("price") %>'>
                                        </asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:LinkButton 
                                            ID="LinkButton1" 
                                            runat="server" 
                                            CommandArgument='<%#Eval("iid") %>'>
                                            View..
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle 
                            BackColor="#738A9C" 
                            ForeColor="White" 
                            Font-Bold="True" />
                    </asp:DataList>-->

                    <!-- Second DataList (If you need it) -->
                    <asp:DataList 
                        ID="DataList2" 
                        runat="server" 
                        RepeatColumns="4"
                        RepeatDirection="Horizontal"
                        OnItemCommand="DataList1_ItemCommand1">
                        <ItemTemplate>
                            <table style="border: thin solid #339966" width="180">
                                <tr>
                                    <td class="tblhead">
                                        <asp:Label 
                                            ID="lblname" 
                                            runat="server" 
                                            Text='<%#Eval("iname") %>'>
                                        </asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Image 
                                            ID="Image4" 
                                            runat="server" 
                                            Height="135px" 
                                            ImageUrl='<%#Eval("image") %>'
                                            Width="112px" 
                                            style="text-align: center" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-top: thin solid #339966">
                                        <table width="100%">
                                            <tr>
                                                <td class="style6">
                                                    Price :
                                                    <asp:Label 
                                                        ID="lblprice" 
                                                        runat="server" 
                                                        Text='<%#Eval("price") %>'>
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Button 
                                                        ID="Button9" 
                                                        runat="server" 
                                                        CssClass="btnmenu"
                                                        CommandArgument='<%#Eval("iid") %>' 
                                                        Height="25px"
                                                        Text="View" 
                                                        Width="70px" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>

        <!-- FOOTER -->
        <div id="foot">
            All Rights Reserved @Cobra
        </div>
    </form>
</body>
</html>
