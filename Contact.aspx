<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Licenta.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="pnlFormFields" runat="server">
     <style>h1 { font-family: "Times New Roman", Georgia, Bold, Serif; font-size: 40px; font-weight: 1000; line-height: 50.4px; }
.modal-body {
  height: 70vh;
  overflow-y: auto;
}
prene {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

prene:hover {
  background-color: #ddd;
  color: black;
}

.previous {
  background-color: #f1f1f1;
  color: black;
}

.next {
  background-color: #04AA6D;
  color: white;
}

.round {
  border-radius: 50%;
}

.progress-title {
    font-size: 16px;
    font-weight: 700;
    color: #333;
    margin: 0 0 20px
}

.progress {
    height: 20px;
    background: #333;
    border-radius: 0;
    box-shadow: none;
    margin-bottom: 30px;
    overflow: visible
}

.progress .progress-bar {
    position: relative;
    -webkit-animation: animate-positive 2s;
    animation: animate-positive 2s
}

.progress .progress-value {
    display: block;
    font-size: 18px;
    font-weight: 500;
    color: black;
    position: absolute;
    top: -30px;
    right: -25px
}

.progress .progress-bar:after {
    content: "";
    display: inline-block;
    width: 10px;
    background: #fff;
    position: absolute;
    top: -10px;
    bottom: -10px;
    right: -5px;
    z-index: 1;
    transform: rotate(35deg)
}
.h-divider{
 margin-top:5px;
 margin-bottom:5px;
 height:1px;
 width:100%;
 border-top:1px solid gray;
}
         </style>
        
   <div class="d-flex flex-column justify-content-center">
       <div class="h-divider">
          <h1>Completeaza formularul</h1>
       </div>
    <br />
    <br />
        <br />
       <br />
       <br />
       <form method="post" action="...">



        <div id="wizard">
            <%--<button class="btn btn-danger pull-right">Salveaza datele</button>--%>
            <button type="button" class ="btn btn-success pull-right" ID="Button6" data-toggle="modal"  data-target="#gdpr" style="background-color:royalblue" >Salveaza informatiile personale</button> 
            <div id="gdpr" class="modal fade" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Informare GDPR</h4>
                  </div>
                  <div class="modal-body">
                      <asp:Label ID="Label40" runat="server"> </asp:Label>
                      
                     <asp:CheckBox class="form-check" ID="chkisReadCovid19Information" runat="server" Checked="False" ClientIDMode="Static" CssClass="policy" />
                      Sunt de acord ca datele mele cu caracter personal sa fie prelucrate de Active Bank.


                  </div>
                  <div class="modal-footer">

                      <asp:Button runat="server" CssClass ="btn btn-success pull-right" ID="btnAccept"  disabled Text="Salveaza datele si calculeaza" OnClick="ButtonSubmit1_Click" 
                        />
                    <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                     <%-- <asp:Button runat="server" CssClass ="btn btn-success pull-right" ID="btnAccept"  disabled Text="Salveaza datele si calculeaza" OnClick="ButtonSubmit1_Click" 
                        /> --%>
                  </div>
                </div>

              </div>
            </div>
            <!-- Tabstrip -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active">
                    <a href="#personal" role="tab" data-toggle="tab">Informatii personale</a>
                </li>
                <li role="presentation">
                    <a href="#hobbies" role="tab" data-toggle="tab">Confirmarea identitatii</a>
                </li>
                <li role="presentation">
                    <a href="#address" role="tab" data-toggle="tab">Adresa</a>
                </li>
                <li role="presentation">
                    <a href="#details" role="tab" data-toggle="tab">Mai multe detalii</a>
                </li>
                <li role="presentation">
                    <a href="#kyc" role="tab" data-toggle="tab">Cunoasterea clientului</a>
                </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <asp:Panel role="tabpanel" class="tab-pane active" id="personal">
                    <br />
                     <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label1" runat="server" Text="Nume"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox1" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                  <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label2" runat="server" Text="Prenume"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox2" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                   <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label3" runat="server" Text="Data nasterii" ></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox3" type="date" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                     <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label4" runat="server" Text="Cod numeric personal"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox4" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

             <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label5" runat="server" Text="Sex"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:RadioButton id="RadioButton6" Text="Feminin" Checked="True" GroupName="RadioGroup4" runat="server"    />
                                     <asp:RadioButton id="RadioButton7" Text="Masculin" Checked="True" GroupName="RadioGroup4" runat="server" />
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                           <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label6" runat="server" Text="Tara rezidenta"  ></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList26" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                                        <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label7" runat="server" Text="Telefon"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox7"  type="tel" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                                        <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label8" runat="server" Text="E-mail"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox8" type="email" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>
         <asp:TableRow>
             <asp:TableCell>
                 <br />
                   <%--<asp:Button runat="server" class ="btn btn-success" ID="Button1" Text="Salveaza informatiile personale" OnClick="ButtonSubmit_Click" /> --%> 
                 <asp:Button runat="server" class ="btn btn-danger" ID="Button5" Text="Renunta" OnClientClick="this.form.reset();return false;" />
             </asp:TableCell>
         </asp:TableRow>
                </asp:Panel>
               <div role="tabpanel" class="tab-pane" id="hobbies">
                    <!-- Input fields -->
                     <br />
                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label15" runat="server" Text="Tip act de identitate"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox15" type="text" class="form-control" runat="server" Text="Buletin" readonly></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>
                     <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label9" runat="server" Text="Serie"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox9" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label10" runat="server" Text="Numar"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox10" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label11" runat="server" Text="Data emitere" ></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox11" type="date" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                   <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label12" runat="server" Text="Data expirare"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox12" type="date" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label13" runat="server" Text="Tara emitenta"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList11" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label14" runat="server" Text="Institutia emitenta"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox14" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>
                     <asp:TableRow>
             <asp:TableCell>
                 <br />
                    
                 <asp:Button runat="server" class ="btn btn-danger" ID="Button3" Text="Renunta" OnClientClick="this.form.reset();return false;" />
             </asp:TableCell>
         </asp:TableRow>
                </div>
                  
                <div role="tabpanel" class="tab-pane" id="address">
                    <!-- Input fields -->
                    <br />
                     <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label16" runat="server" Text="Tara"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList12" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label17" runat="server" Text="Judet"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox17" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label18" runat="server" Text="Oras" ></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox18" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                   <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label19" runat="server" Text="Cod postal"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox19" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label20" runat="server" Text="Strada"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox20" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label21" runat="server" Text="Numar"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox21" type="number" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                                        <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label22" runat="server" Text="Bloc"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox22"  type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                                        <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label23" runat="server" Text="Scara"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox23" type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>
                     <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label24" runat="server" Text="Numar apartament"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox24"  type="number" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                                        <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label25" runat="server" Text="Etaj"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox25" type="number" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>
                    <asp:TableRow>
             <asp:TableCell>
                 <br />
                    
                 <asp:Button runat="server" class ="btn btn-danger" ID="Button4" Text="Renunta" OnClientClick="this.form.reset();return false;" />
             </asp:TableCell>
         </asp:TableRow>
                </div>

                  <div role="tabpanel" class="tab-pane" id="details">
                    <!-- Input fields -->
                     <br />
                     <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label26" runat="server" Text="Status social"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList1" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label27" runat="server" Text="Numarul membrilor familiei"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox27" type="number" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label28" runat="server" Text="Mediu social" ></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate> <asp:DropDownList ID="DropDownList2" runat="server" Width="600px" class="form-control">  </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                   <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label29" runat="server" Text="Tipul locuintei"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList3" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label30" runat="server" Text="Educatie"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate> <asp:DropDownList ID="DropDownList4" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label31" runat="server" Text="Ocupatie"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList5" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                                        <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label32" runat="server" Text="Venit mediu lunar"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate> <asp:DropDownList ID="DropDownList6" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                                        <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label33" runat="server" Text="Tipul angajatorului"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList7" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>
                     <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label34" runat="server" Text="Domeniu de activitate"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList8" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>

                                        <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label35" runat="server" Text="Numarul de angajati ai angajatorului"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList9" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>
                      <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label36" runat="server" Text="Perioada de timp lucrata"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList10" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>
                    
            <asp:TableRow>
             <asp:TableCell>
                 <br />
                    
                 <asp:Button runat="server" class ="btn btn-danger" ID="Button2" Text="Renunta" OnClientClick="this.form.reset();return false;" />
             </asp:TableCell>
         </asp:TableRow>
                </div>

                 <div role="tabpanel" class="tab-pane" id="kyc">
                    <!-- Input fields -->
                     <br />
                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label37" runat="server" Font-Size ="Large" Font-Bold="true" Text="Beneficiar real"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:RadioButton id="Radio1" Text="Da"  Font-Bold="false" Checked="True" GroupName="RadioGroup1" runat="server"      /> 
                                     <asp:RadioButton id="Radio2" Text="Nu" Checked="True" Font-Bold="false" GroupName="RadioGroup1" runat="server" />
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>
                     <br />
                     <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label38" runat="server" Font-Size ="Large" Font-Bold="true" Text="Persoana expusa politic"></asp:Label></b></asp:TableCell>
             <%--            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="info.png" Height="22px" Width="22px" />--%>
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:RadioButton id="RadioButton1" Font-Bold="false" Text="Da" Checked="True" GroupName="RadioGroup2" runat="server"    />
                                     <asp:RadioButton id="RadioButton2" Font-Bold="false" Text="Nu" Checked="True" GroupName="RadioGroup2" runat="server" />
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>

                    </asp:TableRow>
                     <br />

                     <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Justify"><asp:Label ID="Label39" runat="server" Font-Size ="Large" Font-Bold="true"  Text ="Sursa veniturilor/fondurilor"></asp:Label></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:RadioButton id="RadioButton3" Font-Bold="false"  Text="Salariu / Pensie / Credit" Checked="True" GroupName="RadioGroup3" runat="server"    />
                                     <br />
                                     <asp:RadioButton id="RadioButton4" Font-Bold="false" Text="Dividente / Chirii" Checked="True" GroupName="RadioGroup3" runat="server"     />
                                     <br />
                                     <asp:RadioButton id="RadioButton5" Font-Bold="false" Text="Economii / Donatii"  Checked="True" GroupName="RadioGroup3" runat="server"     />
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                    </asp:TableRow>
                     <asp:TableRow>
                     </asp:TableRow>
                     <asp:TableRow>
             <asp:TableCell>
                 <br />

                   <asp:Button runat="server" class ="btn btn-danger" ID="Button7" Text="Renunta" OnClientClick="this.form.reset();return false;" />
                 <br />
                 <br />
                 <br />
                  <br />
                 <br />
   

             </asp:TableCell>

            </div>
                </div>
        </div>

            </asp:TableRow>
                            <asp:TableRow></asp:TableRow>
                 <asp:TableRow></asp:TableRow>

           <asp:TableRow></asp:TableRow>
<%--            <iframe allowtransparency="true" style="background: #FFFFFF;" 
    src="informare-gdpr.pdf" 
    frameborder="0" height="184" width="100%">
rrame>
    
           <embed src="informare-gdpr.pdf" width="500" height="375">--%>
          
<br />

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('.policy').on('click', function () {
            if ($('#chkisReadCovid19Information').is(":checked") && $('#chkisReadCovid19Information').is(":checked")) {
                $('[id*=btnAccept]').removeAttr("disabled");
            } else {
                $('[id*=btnAccept]').attr("disabled", "disabled");
            }
        });
    });
</script>

    </form>
       
        
    </asp:Panel>
    
</asp:Content>

