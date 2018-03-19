<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 98%;
            height: 493px;
            background-color: #00FF00;
        }
        .style2
        {
            font-size: 50pt;
        }
        .style3
        {
            font-size: medium;
            font-family: Vrinda;
        }
    </style>
</head>
<body style="height: 620px; width: 1255px; background-color: #00FF00;" 
    bgcolor="#00ff00">
    <form id="form1" runat="server">
    <div style="height: 512px; width: 1279px">
    
            <table class="style1">
                <tr>
                    <td class="style2" colspan="3">
                        <h2 style="text-align: center">
                            REGISTRATION FORM:<span class="style3"></span></h2>
                        </td>
                </tr>
                <tr>
                    <td>
                        <h3>
                            FULL NAME*:</h3>
                    </td>
                    <td>
                        <asp:TextBox ID="txtfullname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtfullname" ErrorMessage="Required Field" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>
                            LOGIN ID*:</h3>
                    </td>
                    <td>
                        <asp:TextBox ID="txtloginid" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtloginid" ErrorMessage="Required Field" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>
                            PASSWORD*:</h3>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtpassword" ErrorMessage="Required Field" 
                            ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>
                            CONFIRM PASSWORD*:</h3>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtpassword" ControlToValidate="txtcpassword" 
                            ErrorMessage="password didn`t matched" ForeColor="#FF3300"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>
                            ADDRESS*:</h3>
                    </td>
                    <td bgcolor="Lime">
                        <asp:TextBox ID="txtaddress" runat="server" 
                            ontextchanged="TextBox5_TextChanged" TextMode="MultiLine" Width="151px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtaddress" ErrorMessage="Required Field" 
                            ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>
                            PIN(POSTAL)/ZIP CODE*:</h3>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpincode" runat="server" 
                            ontextchanged="TextBox5_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtpincode" ErrorMessage="invalid pincode" 
                            ForeColor="#FF3300" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>
                            MOBILE NO.*:</h3>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmobileno" runat="server" 
                            ontextchanged="TextBox5_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtmobileno" ErrorMessage="invalid mobile no" 
                            ForeColor="#FF3300" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>
                            EMAIL ID*:</h3>
                    </td>
                    <td>
                        <asp:TextBox ID="txtemailid" runat="server" 
                            ontextchanged="TextBox5_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtemailid" ErrorMessage="invalid Email id" 
                            ForeColor="#FF3300" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="130px" 
                            ImageUrl="~/img/SIGNUP.png" onclick="ImageButton1_Click" Width="243px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
