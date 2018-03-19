<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 260px; width: 1012px">
    <form id="form1" runat="server">
    <h2>
        Your ID is created succesfully please contact ADMIN.</h2>
    <p>
&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" AlternateText="LOGIN" ImageUrl="~/img/images.jpg" 
            onclick="ImageButton1_Click" />
    </p>
    </form>
</body>
</html>
