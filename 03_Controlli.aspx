<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="03_Controlli.aspx.cs" Inherits="_02_componenti._03_TextBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />


            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox2" TextMode="MultiLine" Columns="5" Rows="10" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox3" TextMode="Password" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox4" TextMode="Color" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox5" TextMode="Date" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox6" TextMode="Email" runat="server"></asp:TextBox><br />


            <asp:RadioButtonList ID="rdGenere" runat="server">
                <asp:ListItem Value="M">Maschio</asp:ListItem>
                <asp:ListItem Value="F">Femmina</asp:ListItem>
                <asp:ListItem Value="N">Non Esprimo</asp:ListItem>
            </asp:RadioButtonList>

            <asp:CheckBoxList ID="chkSport" runat="server">
                <asp:ListItem Value="R">Rugby</asp:ListItem>
                <asp:ListItem Value="C">Calcio</asp:ListItem>
                <asp:ListItem Value="N">Nuoto</asp:ListItem>
            </asp:CheckBoxList>

            <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>

            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
