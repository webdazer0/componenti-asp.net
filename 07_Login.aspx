<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="07_Login.aspx.cs" Inherits="_02_componenti._07_Login" %>

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
            <asp:Login ID="Login1" 
                runat="server"
                OnAuthenticate="Login1_Authenticate"
                DestinationPageUrl="~/protette/destinazione_protetta.aspx"
                CssClass="LoginControl"
                InstructionText="Accedi con lorenzo e 1234"
                Orientation="Vertical"></asp:Login>
        </div>
       
    </form>
    
</body>
</html>
