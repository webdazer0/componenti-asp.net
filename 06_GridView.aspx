<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="06_GridView.aspx.cs" Inherits="_02_componenti._06_FormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdMaster" runat="server"

                AutoGenerateSelectButton="true"
                DataKeyNames="Id" 
                OnSelectedIndexChanged="grdMaster_SelectedIndexChanged"

                ></asp:GridView>


            <asp:DetailsView ID="dtlView" runat="server" Height="50px" Width="125px"></asp:DetailsView>
        </div>        
    </form>
</body>
</html>
