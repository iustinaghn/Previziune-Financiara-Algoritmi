<%@ Page Title="AutentificareNeautorizata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AutentificareNeautorizata.aspx.cs" Inherits="Licenta.AutentificareNeautorizata" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <h3>
    <font face="Verdana">Atentie!</font>
</h3>
    <br />
    <br />
     <form method="post" action="...">
 <asp:Panel role="tabpanel" runat="server" class="tab-pane active" id="personal">
      <asp:Label id="lblMsg" ForeColor="#cc0000" Font-Name="Verdana" Font-Size="14" runat="server" Font-Italic="true" 
          Text="Pagina solicitata nu poate fi accesata, deoarece credentialele de autentificare nu au fost furnizate."/>
     <br />
      <asp:Label id="Label1" ForeColor="#cc0000" Font-Name="Verdana" Font-Size="14" runat="server" Font-Italic="true" 
          Text="Pentru a continua te rugam sa te autentifici."/>
     </asp:Panel>
         </form>

    </asp:Content>
