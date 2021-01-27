<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="destinazione_protetta.aspx.cs" Inherits="_02_componenti.destinazione_protetta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LoginName ID="LoginName1" runat="server" />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
            
            Pagina visibile solo se si è autenticati
        </div>
    </form>
</body>
</html>
