<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="00_label.aspx.cs" Inherits="_02_componenti._00_label" %>

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
            <h1>
                <asp:Label ID="lblHello" Text="Ciao sono una label" runat="server" CssClass="pippo"></asp:Label>
            </h1>
        </div>        
    </form>
</body>
</html>
