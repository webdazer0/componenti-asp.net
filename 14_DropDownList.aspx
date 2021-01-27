<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="14_DropDownList.aspx.cs" Inherits="_02_componenti._14_DropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <!--
            <select>
                <option value="A" >Valore A</option>
                <option value="B" selected >Valore B</option>
            </select>
        -->

       

        <asp:SqlDataSource ID="dbc" runat="server"></asp:SqlDataSource>

        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="1">A</asp:ListItem>
                <asp:ListItem Value="2">B</asp:ListItem>
                <asp:ListItem Value="3">C</asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


        <asp:DropDownList ID="DropDownList2" runat="server">
                
        </asp:DropDownList>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
