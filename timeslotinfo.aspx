<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="timeslotinfo.aspx.cs" Inherits="timeslotinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            background-color: #00FF00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td colspan="3" style="text-align: center">
                <h2>
                    DOCTOR&#39;S TIME SLOT INFORMATION PAGE</h2>
            </td>
        </tr>
        <tr>
            <td>
                <h3>
                    SPECIALITY:*</h3>
            </td>
            <td>
                <asp:DropDownList ID="ddlspeciality" runat="server" 
                    onselectedindexchanged="ddlspeciality_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                    DOCTOR NAME:*</h3>
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
                    DAY:*</h3>
            </td>
            <td>
                <asp:DropDownList ID="ddlday" runat="server">
                    <asp:ListItem>sunday</asp:ListItem>
                    <asp:ListItem>monday</asp:ListItem>
                    <asp:ListItem>tuesday</asp:ListItem>
                    <asp:ListItem>wednesday</asp:ListItem>
                    <asp:ListItem>thursday</asp:ListItem>
                    <asp:ListItem>thursday</asp:ListItem>
                    <asp:ListItem>friday</asp:ListItem>
                    <asp:ListItem>saturday</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                    START TIME:*</h3>
            </td>
            <td>
                <asp:DropDownList ID="ddlstartime" runat="server">
                    <asp:ListItem>--select IST time--</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>9:30</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>10:30</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>11:30</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>12:30</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>13:30</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>14:30</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>15:30</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                    END TIME:*</h3>
            </td>
            <td>
                <asp:DropDownList ID="ddlendtime" runat="server">
                    <asp:ListItem>--select IST time--</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>9:30</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>10:30</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>11:30</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>12:30</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>13:30</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>14:30</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>15:30</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                    NO. OF PATIENT:*</h3>
            </td>
            <td>
                <asp:TextBox ID="txtpatient" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Height="47px" 
                    onclick="btnsubmit_Click" style="font-size: medium" Text="SAVE IT" 
                    Width="198px" />
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
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

