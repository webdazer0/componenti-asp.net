<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="02_HyperLink.aspx.cs" Inherits="_02_componenti.HyperLink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink runat="server" 
                NavigateUrl="destinazione.aspx"
                Text="Cliccami" 
                ></asp:HyperLink>
            
        </div>
        
    </form>
</body>
</html>
