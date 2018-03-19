<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            background-color: #00FF00;
        }
        .style3
        {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td colspan="3">
                <h2 style="text-align: center">
&nbsp;WELCOME TO APPOINTMENT PAGE</h2>
            </td>
        </tr>
        <tr>
            <td>
                <h3>
                    SPECIALITY</h3>
            </td>
            <td>
                <asp:DropDownList ID="ddlspeciality" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlspeciality_SelectedIndexChanged">
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
                    onselectedindexchanged="ddldoctorname_SelectedIndexChanged">
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
                    onselectedindexchanged="ddltimeslot_SelectedIndexChanged">
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
                <asp:TextBox ID="txtpatientname" runat="server"></asp:TextBox>
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
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
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
                <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                    APPONTMENT TYPE</h3>
            </td>
            <td>
                <asp:RadioButtonList ID="radioapptype" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>By walk</asp:ListItem>
                    <asp:ListItem>By phone</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblmsg" runat="server" ForeColor="#FF0066"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="confirm appointment" 
                    onclick="btnsubmit_Click" />
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
</asp:Content>

