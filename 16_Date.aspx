<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="16_Date.aspx.cs" Inherits="_02_componenti._16_Date" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/jquery-ui.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.12.4.min.js"></script>
    <script src="Scripts/jquery-ui.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtDatepicker" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <script>
                $(document).ready(OnLoad)

                function OnLoad() {
                    console.log("DatePicker")
                    $('#<%= txtDatepicker.ClientID %>').datepicker({ dateFormat:"dd/mm/yy"});  
                }
               
            </script>
        </div>
    </form>
</body>
</html>
