<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="13_Bulletlist.aspx.cs" Inherits="_02_componenti._13_Bulletlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:BulletedList ID="bltList" BulletStyle="Numbered" runat="server">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
            </asp:BulletedList>

            <asp:Button ID="btnAdd" OnClick="btnAdd_Click" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
