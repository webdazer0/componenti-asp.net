<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="18_Download.aspx.cs" Inherits="_02_componenti._18_Download" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnRedirect" runat="server" OnClick="btnRedirect_Click" Text="Redirect" />
            <asp:Button ID="btnDownload" OnClick="btnDownload_Click" runat="server" Text="Download" />
        </div>
    </form>
</body>
</html>
