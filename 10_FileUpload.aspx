<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10_FileUpload.aspx.cs" Inherits="_02_componenti._10_FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="uplFile"  runat="server" />
            
            <asp:Button ID="btnUpload" OnClick="btnUpload_Click" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
