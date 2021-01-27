<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="13_Esercizio.aspx.cs" Inherits="_02_componenti._13_Esercizio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:BulletedList ID="bltElencoFile" runat="server">
            </asp:BulletedList>

            <asp:FileUpload ID="uplFileutente" runat="server" />
            <asp:Button ID="btnUpload" OnClick="btnUpload_Click" runat="server" Text="Salva" />
        </div>
    </form>
</body>
</html>
