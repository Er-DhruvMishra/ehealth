<%@ Page Language="C#" AutoEventWireup="true" CodeFile="onlineappointment.aspx.cs" Inherits="onlineappointment" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style2
        {
            width: 100%;
        }
    </style>
</head>
<body bgcolor="#ffffcc">
    <form id="form1" runat="server">
    <div>
    
    <table class="style2">
        <tr>
            <td colspan="3">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/EHEALTHLOGO.png" 
                    meta:resourcekey="Image1Resource1" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <h2 style="text-align: center">
&nbsp;WELCOME TO ONLINE-APPOINTMENT PAGE</h2>
            </td>
        </tr>
        <tr>
            <td>
                <h3>
                    SPECIALITY</h3>
            </td>
            <td>
                <asp:DropDownList ID="ddlspeciality" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlspeciality_SelectedIndexChanged" 
                    meta:resourcekey="ddlspecialityResource1">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                    DOCTOR NAME</h3>
            </td>
            <td>
                <asp:DropDownList ID="ddldoctorname" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddldoctorname_SelectedIndexChanged" 
                    meta:resourcekey="ddldoctornameResource1">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                    TIME SLOT</h3>
            </td>
            <td>
                <asp:DropDownList ID="ddltimeslot" runat="server" AutoPostBack="True" 
                    meta:resourcekey="ddltimeslotResource1">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                    PATIENT NAME</h3>
            </td>
            <td>
                <asp:TextBox ID="txtpatientname" runat="server" 
                    meta:resourcekey="txtpatientnameResource1"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                    ADDRESS</h3>
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" 
                    meta:resourcekey="txtaddressResource1"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                    MOBILE NO</h3>
            </td>
            <td>
                <asp:TextBox ID="txtmobileno" runat="server" 
                    meta:resourcekey="txtmobilenoResource1"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="INVALID MOBILE NO." ForeColor="Red" 
                    ValidationExpression="\d{10}" ControlToValidate="txtmobileno" 
                    meta:resourcekey="RegularExpressionValidator1Resource1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server" meta:resourcekey="lblmsgResource1"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="confirm appointment" 
                    onclick="btnsubmit_Click" meta:resourcekey="btnsubmitResource1" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
