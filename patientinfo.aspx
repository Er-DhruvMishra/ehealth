<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="patientinfo.aspx.cs" Inherits="patientinfo" %>

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
            <td colspan="3" style="text-align: center">
                <h2>
                    PATIENT INFORMATION</h2>
            </td>
        </tr>
        <tr>
            <td>
                <h3>
                SPECIALITY:</h3>
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
                DOCTOR NAME:</h3>
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
                TIMESLOT:</h3>
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
                REGISTRATION NO:</h3>
            </td>
            <td>
                <asp:DropDownList ID="ddlregno" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlregno_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:DetailsView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                FATHER&#39;S NAME:</h3>
            </td>
            <td>
                <asp:TextBox ID="txtfathername" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                WEIGHT:</h3>
            </td>
            <td>
                <asp:TextBox ID="txtweight" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                HEIGHT:</h3>
            </td>
            <td>
                <asp:TextBox ID="txtheight" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                AGE:</h3>
            </td>
            <td>
                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                BLOOD PRESSURE:</h3>
            </td>
            <td>
                <asp:TextBox ID="txtbloodpressure" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                OTHERS:</h3>
            </td>
            <td>
                <asp:CheckBoxList ID="chkother" runat="server"
                RepeatDirection="Horizontal">
                    <asp:ListItem>Alcoholic</asp:ListItem>
                    <asp:ListItem>Smoker</asp:ListItem>
                    <asp:ListItem>Diabitic</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                PROBLEM:</h3>
            </td>
            <td>
                <asp:TextBox ID="txtproblem" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <h3>
                OPD FEES:</h3>
            </td>
            <td>
                <h3>
                <asp:Label ID="lblfee" runat="server"></asp:Label>
                </h3>
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
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Height="56px" Text="SUBMIT" 
                    Width="248px" onclick="btnsubmit_Click" />
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

