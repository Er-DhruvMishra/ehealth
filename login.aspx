<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 373px;
            height: 442px;
        }
        .style3
        {
            width: 22px;
        }
        .style7
        {
            text-align: right;
        }
        .style8
        {
            color: #FF3399;
            font-size: xx-large;
        }
        .style9
        {
            height: 69px;
            text-align: center;
        }
        .style5
        {
            color: #FF0066;
            font-size: 50pt;
        }
        </style>
</head>
<body bgcolor="#00ff00">
    <form id="form1" runat="server">
    <div style="height: 600px; width: 1300px; background-color: #00FF00">
    
        <table class="style1">
            <tr>
                <td class="style3" rowspan="6">
                    <img alt="login page" class="style2" longdesc="you are now on login page" 
                        src="img/loginlogo.png" /></td>
                <td colspan="2" class="style9">
                    <span class="style5"><asp:Image ID="Image1" runat="server" ImageUrl="~/img/images1.png" />
                   </span> 
                    </td>
            </tr>
            <tr>
                <td style="font-size: xx-large">
                    Login ID:*</td>
                <td>
                    <asp:TextBox ID="txtloginid" runat="server" Height="34px" Width="295px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: xx-large">
                    Password:*</td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" Height="34px" TextMode="Password" 
                        Width="295px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" Checked="True"/>
                    </td>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="login" 
                        Height="73px" ImageAlign="AbsBottom" ImageUrl="~/img/login.png" 
                        onclick="ImageButton1_Click" Width="297px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    &nbsp;</td>
                <td class="style7">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style8"><strong style="font-size: x-large">&nbsp;not yet listed?</strong></span>
                    <asp:Button ID="btnsignup" runat="server" Height="22px" 
                        onclick="btnsignup_Click" style="margin-left: 57px" Text="SIGN UP HERE" 
                        Width="146px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
