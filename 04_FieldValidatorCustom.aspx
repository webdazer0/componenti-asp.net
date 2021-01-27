<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="04_FieldValidatorCustom.aspx.cs" Inherits="_02_componenti._04_FieldValidatorCustom" %>

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
            <fieldset>
                <legend>Validatori Custom</legend>
                <asp:Label ID="lblCommento" runat="server" Text="Commento"></asp:Label>
                <asp:TextBox ID="txtCommento" CausesValidation="true" TextMode="MultiLine" runat="server" ></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtCommento"
                    CssClass="errore"
                    ErrorMessage="Campo Commento è obbligatorio"></asp:RequiredFieldValidator>

                 <asp:CustomValidator 
                     CssClass="errore"
                    ID="CustomValidator1" ControlToValidate="txtCommento" runat="server" 
                    ErrorMessage="Il commento deve essere tra 8 e 50 caratteri" 
                     OnServerValidate="CustomValidator1_ServerValidate"
                     ></asp:CustomValidator>

            </fieldset>

            <fieldset>
                <asp:RadioButtonList ID="rdGenere" runat="server">
                    <asp:ListItem Value="M">Maschio</asp:ListItem>
                    <asp:ListItem Value="F">Femmina</asp:ListItem>
                    <asp:ListItem Value="N">Non Esprimo</asp:ListItem>
                </asp:RadioButtonList>

                <asp:CustomValidator ID="CustomValidator3" 
                    runat="server" 
                    ErrorMessage="Seleziona un opzione"
                    ClientValidationFunction="ValidateRadioList" 
                    >

                </asp:CustomValidator>

            </fieldset>

            <fieldset>
                <legend>Validatori Custom</legend>
                <asp:CheckBoxList ID="chkSport"  CausesValidation="true"                    
                    runat="server">
                    <asp:ListItem Value="R">Rugby</asp:ListItem>
                    <asp:ListItem Value="C">Calcio</asp:ListItem>
                    <asp:ListItem Value="N">Nuoto</asp:ListItem>
                </asp:CheckBoxList>
           
             <asp:CustomValidator 
                    
                    ID="CustomValidator2"  runat="server" 
                    EnableClientScript="true"
                    ErrorMessage="devi selezionare almeno 2 elementi" 
                    ClientValidationFunction="ValidateCheckBoxList" 
                     >

                 </asp:CustomValidator>
             </fieldset>
            
            
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

                function ValidateCheckBoxList(source, args) {

                    var chklist = document.getElementById('<%= chkSport.ClientID %>');
                    var chkListinputs = chklist.getElementsByTagName("input");
                    var contaSel = 0;
                    for (var i = 0; i < chkListinputs.length; i++) {

                        if (chkListinputs[i].checked) {
                            contaSel++;
                        }

                    }
                    if (contaSel >= 2) {
                        args.IsValid = true;
                    } else {
                        args.IsValid = false;    
                    }

                }

            </script>

            <asp:Button ID="btnTest"  runat="server" Text="Clicca per validare" OnClick="btnTest_Click" />
            <asp:Label ID="lblRisultato" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
