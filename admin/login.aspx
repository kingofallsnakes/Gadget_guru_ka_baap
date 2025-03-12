<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cobra Login</title>
    <script type="text/javascript">
        function caplock(e) {
            var kc = e.keyCode ? e.keyCode : e.which;
            var sk = e.shiftKey ? e.shiftKey : ((kc == 16) ? true : false);
            if (((kc >= 65 && kc <= 90) && !sk) || ((kc >= 97 && kc <= 122) && sk)) {
                document.getElementById('abc').style.visibility = 'visible';
            } else {
                document.getElementById('abc').style.visibility = 'hidden';
            }
        }
    </script>
    <link href="admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        /* 
          1. Black-to-White Gradient Background 
          2. Ensure the page is fully covered and nicely centered
        */
        body {
            background: linear-gradient(-45deg, #000, #fff);
            background-size: cover;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh; /* ensures gradient covers full viewport height */
            margin: 0;
        }

        /* Header container: 1000px wide, 100px tall, centered */
        #header {
            width: 1000px;
            height: 100px;
            margin: 20px auto 0 auto; /* top margin for spacing, auto left/right for centering */
            text-align: center;
            position: relative; /* allows child elements to position absolutely if needed */
        }
        #header img {
            max-height: 100%;
            max-width: 100%;
            /* If you want the image exactly 100px high and 1000px wide, remove max-height/width 
               and set fixed dimensions:
               width: 1000px;
               height: 100px; 
            */
        }

        /* 
          Login container:
          1. Slightly larger width to prevent cutoff
          2. Margin-top for spacing from header
          3. Enough padding to fit the button and content
        */
        #login {
            width: 300px;
            background: rgba(20, 20, 20, 0.9);
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0,0,0,0.4);
            margin: 40px auto; /* 40px from top, auto center horizontally */
        }

        /* Header text inside login container */
        .login-title {
            font-size: 1.4rem;
            color: #ff8c00;
            text-align: center;
            margin-bottom: 15px;
        }

        /* Form controls */
        .txt {
            border: 2px solid #555;
            background-color: #333;
            color: #fff;
            height: 35px;
            width: 100%;
            padding: 5px 10px;
            border-radius: 4px;
            margin-bottom: 15px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        .txt:focus, .txt:hover {
            border-color: #ff8c00;
            box-shadow: 0 0 5px rgba(255, 140, 0, 0.5);
        }

        /* Login button */
        .btn {
            background: #ff8c00;
            color: #fff;
            font-weight: bold;
            border: none;
            border-radius: 4px;
            width: 100%;
            padding: 10px 0;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            margin-bottom: 10px;
        }
        .btn:hover {
            background: #e67e22;
            transform: translateY(-2px);
        }

        /* Label for form fields */
        .lbl {
            color: #ccc;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        /* Caps lock warning */
        #abc {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }

        /* Link styling */
        a {
            color: #ff8c00;
            text-decoration: none;
            font-size: 14px;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header Container -->
        <div id="header">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo1.png" />
        </div>
        
        <!-- Login Container -->
        <div id="login">
            <div class="login-title">ADMIN LOGIN</div>
            <table style="width: 94%;">
                <tr>
                    <td class="lbl">UserName:</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtuname" runat="server" placeholder="Enter User Name" CssClass="txt" 
                            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">Password:</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" placeholder="Enter Password" 
                            CssClass="txt" TextMode="Password" onkeypress="caplock(event)"></asp:TextBox>
                        <div id="abc" style="visibility:hidden">CAPS LOCK ON</div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" 
                            onclick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">
                            Back to Home
                        </asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
