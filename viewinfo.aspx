<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewinfo.aspx.cs" Inherits="viewinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td colspan="3">
                <h1 style="text-align: center">
                    VIEW DETAILED GRID INFORMATION</h1>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="Button1" runat="server" Height="62px" onclick="Button1_Click" 
                    style="text-align: center" Text="AUTHORIZED USER" Width="435px" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="Button3" runat="server" Height="62px" onclick="Button3_Click" 
                    Text="DOCTOR" Width="435px" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="Button4" runat="server" Height="62px" onclick="Button4_Click" 
                    Text="DOCTOR`S TIMESLOT" Width="435px" />
            </td>
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
            <td style="text-align: center">
                <asp:Button ID="Button5" runat="server" Height="62px" 
                    style="text-align: center" Text="APPOINTED OFFLINE" Width="435px" 
                    onclick="Button5_Click" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="Button6" runat="server" Height="62px" 
                    style="text-align: center" Text="APPOINTED ONLINE" Width="435px" 
                    onclick="Button6_Click" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="Button7" runat="server" Height="62px" 
                    style="text-align: center" Text="PATIENTS" Width="435px" 
                    onclick="Button7_Click" />
            </td>
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

