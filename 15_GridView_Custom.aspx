<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="15_GridView_Custom.aspx.cs" Inherits="_02_componenti._15_GridView_Custom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- AllowPaging determina se l'elemento è Paginato o no -->
             <asp:GridView ID="grdMaster" runat="server"

                AutoGenerateColumns="false"
                DataKeyNames="Id" 
                AllowPaging="true"
                OnPageIndexChanging="grdMaster_PageIndexChanging"
                >

                 <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" /> 
                    <asp:BoundField DataField="Cognome" HeaderText="Cognome" />   
                    <asp:BoundField DataField="Nome" HeaderText="Nome" />       
                    
                    <asp:TemplateField HeaderText="Immagine">
                        <ItemTemplate>
                            <asp:image runat="server" ID="Label1" Width="150px" ImageUrl='<%# string.Concat("/Upload/" , Eval("Immagine")) %>'></asp:image>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:ButtonField ButtonType="Button" HeaderText="" CommandName="Delete" text="Cancella" />
                    <asp:ButtonField ButtonType="Button" HeaderText="" CommandName="Select" text="Modifica" />
                </Columns>
                
                 <PagerSettings PageButtonCount="15" />
             </asp:GridView>
        </div>
    </form>
</body>
</html>
