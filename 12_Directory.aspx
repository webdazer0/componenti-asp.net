﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="12_Directory.aspx.cs" Inherits="_02_componenti._12_Directory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button" />
            <asp:Label ID="lblResultFiles" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblResultDirs" runat="server" Text="Label"></asp:Label>

        </div>
    </form>
</body>
</html>
