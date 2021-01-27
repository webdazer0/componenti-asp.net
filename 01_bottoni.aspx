<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="01_bottoni.aspx.cs" Inherits="_02_componenti._01_bottoni" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnCiao" runat="server" Text="Button"  OnClick="btnCiao_Click" />
            <asp:Button ID="btnCambiaLabel" runat="server" Text="Cambia Label" OnClick="btnCambiaLabel_Click" />
            <asp:Label ID="lblTest" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
