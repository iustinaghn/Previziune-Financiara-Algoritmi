<%@ Page Title="Autentificare" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Autentificare.aspx.cs" Inherits="Licenta.Autentificare" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <h3>
    <font face="Verdana">Pagina de autentificare</font>
</h3>
     <%--<form method="post" action="...">--%>
 <asp:Panel role="tabpanel" runat="server" class="tab-pane active" id="personal">
                    <br />
                     <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label1" runat="server" Text="Utilizator"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox1" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        <ASP:RequiredFieldValidator ControlToValidate="TextBox1"
            Display="Static" ErrorMessage="*" runat="server" 
            ID="vUserName" />
                    </asp:TableRow>
       <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label2" runat="server" Text="Parola"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox2" type="password" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        <td><ASP:RequiredFieldValidator ControlToValidate="TextBox2"
                            Display="Static" ErrorMessage="*" runat="server"
                            ID="vUserPass" />
                    </asp:TableRow>
    <br />
      <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify">
           
     <asp:Button ID="button1Login" runat="server" Text="Autentificare" onclick="Button1Login_Click"/><br />
                            </asp:TableCell>
          </asp:TableRow>
<asp:Label id="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" />

     </asp:Panel>
         <%--</form>--%>

    </asp:Content>
