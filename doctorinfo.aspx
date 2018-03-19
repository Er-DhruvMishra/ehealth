<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="doctorinfo.aspx.cs" Inherits="doctorinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
            background-color: #00FF00;
        }
        #Reset1
        {
            height: 38px;
            width: 81px;
            font-size: xx-large;
            color: #33CC33;
            background-color: #FF3300;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            margin-left: 0px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    -<table class="style2" frame="void">
    <tr>
        <td colspan="3" style="text-align: center">
            <h2 class="style3">
                DOCTOR INFORMATION</h2>
        </td>
    </tr>
    <tr>
        <td>
            <h3>
                DOCTOR NAME:*</h3>
        </td>
        <td>
            <asp:TextBox ID="txtdoctorname" runat="server" 
                ontextchanged="txtdoctorname_TextChanged"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtdoctorname" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <h3>
                DOCTOR IMAGE:</h3>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:ImageButton ID="ImageButton3" runat="server" Height="30px" 
                ImageUrl="~/img/upload.png" onclick="ImageButton3_Click" Width="75px" 
                CssClass="style4" />
            <asp:Label ID="lblimg" runat="server" ForeColor="#FF6600"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <h3>
                SPECIALITY&nbsp;:*</h3>
        </td>
        <td>
            <asp:DropDownList ID="ddlspeciality" runat="server" Width="150px">
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>coroner</asp:ListItem>
                <asp:ListItem>dentist</asp:ListItem>
                <asp:ListItem>internists</asp:ListItem>
                <asp:ListItem>neurologist</asp:ListItem>
                <asp:ListItem>oncologist</asp:ListItem>
                <asp:ListItem>pathologist</asp:ListItem>
                <asp:ListItem>psychologist</asp:ListItem>
                <asp:ListItem>radiologist</asp:ListItem>
                <asp:ListItem>surgeon</asp:ListItem>
                <asp:ListItem>urologist</asp:ListItem>
                <asp:ListItem>viralogist</asp:ListItem>
                <asp:ListItem>झोला छाप</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <h3>
                OPD fees:*</h3>
        </td>
        <td>
            <asp:TextBox ID="txtopdfee" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtopdfee" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <h3>
                ADDRESS:*</h3>
        </td>
        <td>
            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtaddress" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <h3>
                PIN CODE:*</h3>
        </td>
        <td>
            <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtpincode" ErrorMessage="invalid pin/zip code" 
                ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <h3>
                MOBILE NO:*</h3>
        </td>
        <td>
            <asp:TextBox ID="txtmobileno" runat="server" 
                ontextchanged="TextBox5_TextChanged"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtmobileno" ErrorMessage="invalid mobile no" 
                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <h3>
                CONTACT NO:</h3>
        </td>
        <td>
            <asp:TextBox ID="txtcontactno" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <h3>
                Email ID:*</h3>
        </td>
        <td>
            <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ErrorMessage="invalid email id" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ControlToValidate="txtemailid"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Button ID="btnsubmit" runat="server" Height="41px" 
                onclick="btnsubmit_Click" Text="SAVE IT" Width="150px" />
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
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <input id="Reset1" type="reset" value="reset" onclick="return Reset1_onclick()" /><asp:Button 
                ID="btnreset" runat="server" Height="37px" onclick="btnreset_Click" 
                Text="reset" Width="90px" />
        </td>
    </tr>
</table>
</asp:Content>

