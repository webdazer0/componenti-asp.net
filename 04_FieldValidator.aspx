<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="04_FieldValidator.aspx.cs" Inherits="_02_componenti._04_FieldValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Validatori Required & Reg Exp</legend>

                <asp:Label ID="lblCognome" runat="server" Text="Cognome"></asp:Label>
                <asp:TextBox ID="txtCognome" CausesValidation="true" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    ControlToValidate="txtCognome"
                    runat="server"
                    CssClass="errore"
                    ErrorMessage="Campo Cognome obbligatorio"></asp:RequiredFieldValidator>

                <br />

                
                <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
                <asp:TextBox ID="txtNome" CausesValidation="true" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtNome"
                    runat="server" ErrorMessage="Campo Nome obbligatorio"></asp:RequiredFieldValidator>
                <br />


                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" CausesValidation="true" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtEmail"
                    runat="server" ErrorMessage="Campo Email obbligatorio"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="txtEmail"
                    ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                    ID="RegularExpressionValidator1" runat="server" ErrorMessage="Mail non Valida">
                </asp:RegularExpressionValidator>

            </fieldset>

            <br />

            <fieldset>
                <legend>Validatori Range</legend>
                <asp:Label ID="lblEta" runat="server" Text="Eta"></asp:Label>
                <asp:TextBox ID="txtEta" CausesValidation="true" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtEta"
                    runat="server" ErrorMessage="Campo Eta obbligatorio"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1"
                    ControlToValidate="txtEta"
                    MinimumValue="18"
                    MaximumValue="99"
                    runat="server" ErrorMessage="Deve essere tra 18 e 99"></asp:RangeValidator>
            </fieldset>

            <br />

            <fieldset>
                <legend>Validatori Comparazione</legend>
                <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPwd1" CausesValidation="true" TextMode="Password" runat="server"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Conferma Password"></asp:Label>
                <asp:TextBox ID="txtPwd2" CausesValidation="true" TextMode="Password" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtPwd1"
                    runat="server" ErrorMessage="Campo Password obbligatorio"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1"
                    ControlToValidate="txtPwd1"
                    ControlToCompare="txtPwd2"
                    runat="server" ErrorMessage="Le password inserite non coincidono"></asp:CompareValidator>

            </fieldset>
            <br />



            <asp:Button ID="btnTest" runat="server" Text="Clicca per validare" OnClick="btnTest_Click" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

            <asp:Label ID="lblRisultato" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
