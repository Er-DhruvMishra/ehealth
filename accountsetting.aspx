<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="accountsetting.aspx.cs" Inherits="accountsetting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;
    <table class="style1" style="background-color: #00FF00">
        <tr>
            <td colspan="3" style="text-align: center">
                <h2>
                    ACCOUNT SETTING</h2>
            </td>
        </tr>
        <tr>
            <td>
                <h3 style="text-align: right">
                    LOGIN ID:</h3>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="ddlloginid" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlloginid_SelectedIndexChanged">
                </asp:DropDownList>
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
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" Height="50px" Width="125px">
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:DetailsView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnupdate" runat="server" Height="20px" 
                    onclick="btnupdate_Click" Width="199px" Text="update" />
            </td>
        </tr>
    </table>
</asp:Content>

