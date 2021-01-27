<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="05_Esercizio.aspx.cs" Inherits="_02_componenti._05_Esercizio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnlModulo" Visible="true" runat="server">

                 <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
                    <asp:TextBox ID="txtNome" CausesValidation="true" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                        ControlToValidate="txtCognome"
                        runat="server"
                        CssClass="errore"
                        ErrorMessage="Campo Nome obbligatorio"></asp:RequiredFieldValidator>

                    <br />

                 <asp:Label ID="lblCognome" runat="server" Text="Cognome"></asp:Label>
                    <asp:TextBox ID="txtCognome" CausesValidation="true" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        ControlToValidate="txtCognome"
                        runat="server"
                        CssClass="errore"
                        ErrorMessage="Campo Cognome obbligatorio"></asp:RequiredFieldValidator>

                    <br />

                 <asp:Label ID="lblEta" runat="server" Text="Eta"></asp:Label>
                    <asp:TextBox ID="txtEta" CausesValidation="true" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtEta"
                        runat="server" ErrorMessage="Campo Eta obbligatorio"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1"
                        ControlToValidate="txtEta"
                        MinimumValue="16"
                        MaximumValue="99"
                        runat="server" ErrorMessage="Deve essere tra 16 e 99"></asp:RangeValidator>


                <asp:CheckBoxList ID="chkMaterie"  CausesValidation="true"                    
                        runat="server">
                        <asp:ListItem Value="PHP">PHP</asp:ListItem>
                        <asp:ListItem Value="NET">.NET</asp:ListItem>
                        <asp:ListItem Value="JS">JS</asp:ListItem>
                        <asp:ListItem Value="CSS">CSS</asp:ListItem>
                        <asp:ListItem Value="Java">Java</asp:ListItem>
                        <asp:ListItem Value="Python">Python</asp:ListItem>
                    </asp:CheckBoxList>
            
                <asp:CustomValidator ID="CustomValidator1" 
                        runat="server" 
                        EnableClientScript="true"                        
                        ErrorMessage="Seleziona almeno 3 opzioni"
                        ClientValidationFunction="Pippo" 
                        >

                    </asp:CustomValidator>
                <!--
                    <asp:Label ID="lblErrMaterie" runat="server"></asp:Label>
                -->
               

                 <asp:RadioButtonList ID="rdGenere" runat="server">
                        <asp:ListItem Value="M">Maschio</asp:ListItem>
                        <asp:ListItem Value="F">Femmina</asp:ListItem>
                 </asp:RadioButtonList>

                    <asp:CustomValidator ID="CustomValidator3" 
                        runat="server" 
                        ErrorMessage="Seleziona un opzione"
                        ClientValidationFunction="ValidateRadioList" 
                        >

                    </asp:CustomValidator>
            
                    <br />

                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail" CausesValidation="true" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtEmail"
                        runat="server" ErrorMessage="Campo Email obbligatorio"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="txtEmail"
                        ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                        ID="RegularExpressionValidator1" runat="server" ErrorMessage="Mail non Valida">
                    </asp:RegularExpressionValidator>

                    <br />
                
                    <asp:Button ID="btnSalva" runat="server" OnClick="btnSalva_Click" Text="Salva" />
                </asp:Panel>
                
                <asp:Panel ID="pnlRisultati" Visible="false" runat="server">
                    <h2>Hai inserito</h2>
                    <asp:Label runat="server" ID="lblResult"></asp:Label>
                </asp:Panel>
            <script>
                function ValidateRadioList(source, args) {

                    var chklist = document.getElementById('<%= rdGenere.ClientID %>');
                    var chkListinputs = chklist.getElementsByTagName("input");
                    var contaSel = 0;
                    for (var i = 0; i < chkListinputs.length; i++) {

                        if (chkListinputs[i].checked) {
                            args.IsValid = true;
                            return;
                        }

                    }
                   
                   args.IsValid = false;
                   

                }

                function Pippo(source, args) {
                    

                    var chklist = document.getElementById('<%= chkMaterie.ClientID %>');
                    var checkList = chklist.getElementsByTagName("input")
                    //console.log(radioList);
                    var contaSel = 0;
                    
                    for (var i = 0; i < checkList.length; i++) {
                        if (checkList[i].checked) {
                            contaSel++;
                        }
                    }
                   
                    if (contaSel >= 3) {
                        args.IsValid = true;
                    } else {
                        args.IsValid = false;
                    }

                }

            </script>
        </div>
    </form>
</body>
</html>
