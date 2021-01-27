<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="08_AccessoDB.aspx.cs" Inherits="_02_componenti._08_AccessoDB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

</head>
<body>
    <!--

        Create
        Read
        Update 
        Delete

    -->
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="dbc" runat="server"></asp:SqlDataSource>

            <asp:Panel ID="pnlInsert" runat="server">
                <fieldset>
                    <legend>Creazione utente</legend>                
                    <div>
                        <label for="txtNome">Nome</label>
                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <label for="txtNome">Cognome</label>
                        <asp:TextBox ID="txtCognome" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <label for="txtNome">Eta</label>
                        <asp:TextBox ID="txtEta" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <label for="txtNome">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnSalva" runat="server" OnClick="btnSalva_Click" Text="Salva" />
                </fieldset>
                
            </asp:Panel>

            <asp:Panel ID="pnlSalvato" Visible="false" runat="server">
                <h2>Dati salvati correttamente</h2>
            </asp:Panel>                

        </div>
    </form>
</body>
</html>
