<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 100px;
        }
        .style3
        {
            height: 100px;
            width: 500px;
        }
        .style4
        {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style3">
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/img/doctor.png" 
                onclick="ImageButton3_Click" />
        </td>
        <td style="text-align: right" rowspan="3">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/img/WalkingMan.gif" />
        </td>
        <td style="text-align: right" class="style2">
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/img/account.png" 
                style="text-align: left" onclick="ImageButton4_Click" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/img/timeslot.jpg" 
                onclick="ImageButton5_Click" />
        </td>
        <td style="text-align: right">
            <asp:ImageButton ID="ImageButton6" runat="server" 
                ImageUrl="~/img/APPOINTMENT.png" onclick="ImageButton6_Click" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            <asp:ImageButton ID="ImageButton7" runat="server" Height="101px" 
                ImageUrl="~/img/patient.jpg" onclick="ImageButton7_Click" Width="500px" />
        </td>
        <td>
            <asp:ImageButton ID="ImageButton8" runat="server" ImageAlign="Right" 
                ImageUrl="~/img/viwinfo.jpg" onclick="ImageButton8_Click" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

