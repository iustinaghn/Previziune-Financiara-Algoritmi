<%@ Page Title="AplicareCredit" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AplicareCredit.aspx.cs" Inherits="Licenta.AplicareCredit" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    h3 {
  width: 500px;
  font: 30px Arial black;
  font-weight: normal; 
  /*text-align: right;*/
  position: relative;
}

h3 span {
  background: #fff; 
  margin-right: 25%;
  padding: 0 20px;
}

.h-divider{
 margin-top:5px;
 margin-bottom:5px;
 height:1px;
 width:100%;
 border-top:1px solid gray;
}

    .dtHorizontalVerticalExampleWrapper {
max-width: 300px;
margin: 0 auto;
}
#dtHorizontalVerticalExample th, td {
white-space: nowrap;
}
table.dataTable thead .sorting:after,
table.dataTable thead .sorting:before,
table.dataTable thead .sorting_asc:after,
table.dataTable thead .sorting_asc:before,
table.dataTable thead .sorting_asc_disabled:after,
table.dataTable thead .sorting_asc_disabled:before,
table.dataTable thead .sorting_desc:after,
table.dataTable thead .sorting_desc:before,
table.dataTable thead .sorting_desc_disabled:after,
table.dataTable thead .sorting_desc_disabled:before {
bottom: .5em;
}

</style>
     <asp:Panel ID="pnlFormFields" runat="server">
             </asp:Panel>
    <br />
    <br />

    <div class="h-divider">
    <h3 class="progress-title">Scorul tau este </h3>
            <%--<div class="progress">
                <div id="progressBar" runat="server" class="progress-bar progress-bar-striped bg-success" aria-valuenow="75" aria-valuemin="0" aruia-valuemax="100" style="width: 75%" >
                    
                    475
                </div>
            </div>--%>

            <div class="progress">
              <div class="progress-bar bg-success" runat="server" id="progressBar" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
    <br />
    <br />
    <br />
    <div class="h-divider">
       <form method="post" action="...">
                                
                              <div class="d-flex flex-column justify-content-center">

                                  <h1>Calculeaza ratele pentru creditul tau</h1>
                               </div>

                             <asp:TableRow><asp:HiddenField id="myHiddenInput" runat="server" /></asp:TableRow>

                             <asp:TableRow><asp:HiddenField id="HiddenField1" runat="server" /></asp:TableRow>
           <div style="float:right;">
        <img src="pf.png" height="554px" width="600px" />
    </div>
                     <asp:TableRow>
              <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label9" runat="server" Font-Bold="true" Text="Dobanda creditului"></asp:Label></b></asp:TableCell>
            
                         <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label10" runat="server"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox2" runat="server" type="text" Font-Bold="true" class="form-control"  Text="10 %"  readonly></asp:TextBox>
                                     
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                         <p ><asp:Label ID="Label11" runat="server" Font-Italic="true" Font-Size ="Small" Text="* Procent fix din suma acordata"></asp:Label></p>

         </asp:TableRow>

           <asp:TableRow>
              <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Tipul de credit"></asp:Label></b></asp:TableCell>
            
                         <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label2" runat="server"></asp:Label></b></asp:TableCell>
            
                               <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList1" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                        

         </asp:TableRow>
         <asp:TableRow>
              <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label101" runat="server" Font-Bold="true" Text="Valuta creditului"></asp:Label></b></asp:TableCell>
            
                         <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label100" runat="server"></asp:Label></b></asp:TableCell>
            
                               <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:DropDownList ID="DropDownList13" runat="server" Width="600px" class="form-control"> </asp:DropDownList>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                        

         </asp:TableRow>
                             <asp:TableRow>
              <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label41" runat="server" Font-Bold="true" Text="Suma creditului"></asp:Label></b></asp:TableCell>
            
                         <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label42" runat="server"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox5"  type="number" class="form-control" minVal="20" maxVal="50" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        

         </asp:TableRow>

             <asp:TableRow>
              <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label43" runat="server" Font-Bold="true" Text="Perioada"></asp:Label></b></asp:TableCell>
            
                         <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label44" runat="server"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox6"  type="number" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                        <p ><asp:Label ID="Label59" runat="server" Font-Italic="true" Font-Size ="Small" Text="* Luni"></asp:Label></p>
         </asp:TableRow>

                              <asp:TableRow>
              <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label45" runat="server" Font-Bold="true" Text="Salariul meu net este"></asp:Label></b></asp:TableCell>
            
                         <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label46" runat="server"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox26"  type="number" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        
                            <p ><asp:Label ID="Label58" runat="server" Font-Italic="true" Font-Size ="Small" Text="* RON"></asp:Label></p>
         </asp:TableRow>

             <asp:TableRow>
              <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label47" runat="server" Font-Bold="true" Text="Ratele mele in prezent insumeaza"></asp:Label></b></asp:TableCell>
            
                         <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label48" runat="server"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox28"  type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                            <p ><asp:Label ID="Label54" runat="server" Font-Italic="true" Font-Size ="Small" Text="* RON/Luna"></asp:Label></p>

             
                                 </asp:TableRow>

                        <%--      <asp:TableRow>
              <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label49" runat="server" Font-Bold="true" Text="Varsta mea este de "></asp:Label></b></asp:TableCell>
            
                         <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label50" runat="server"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox29"  type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                        <p ><asp:Label ID="Label55" runat="server" Font-Italic="true" Font-Size ="Small" Text="* Ani"></asp:Label></p>

         </asp:TableRow>--%>

             <asp:TableRow>
              <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label51" runat="server" Font-Bold="true" Text="Am limite de credit in valoare de"></asp:Label></b></asp:TableCell>
            
                         <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label52" runat="server"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox30"  type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                 <p ><asp:Label ID="Label56" runat="server" Font-Italic="true" Font-Size ="Small" Text="* RON"></asp:Label></p>
            
                                 <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label53" runat="server" Font-Italic="true" Font-Size ="X-Small" Text="Ex: dacă ai o limită card de credit de 1.200 lei și un descoperit" ></asp:Label></br>
                                     <asp:Label ID="Label57" runat="server" Font-Italic="true" Font-Size ="X-Small" Text=" de cont (overdraft) de 3.000 lei, trebuie să completezi 4.200 leii)"></asp:Label>
                                                                          </b></asp:TableCell>
   
         </asp:TableRow>
           <br /><br>
           <asp:TableRow>
              <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label3" runat="server" Font-Bold="true" Text="Vreau sa beneficiez de amanare la plata"></asp:Label></b></asp:TableCell>
            
                         <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label4" runat="server"></asp:Label></b></asp:TableCell>
            
                            <asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:UpdatePanel runat="server">
                                 <ContentTemplate><asp:TextBox id="TextBox1"  type="text" class="form-control" runat="server" required></asp:TextBox>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                                     </ContentTemplate>
                             </asp:UpdatePanel>
                <p ><asp:Label ID="Label8" runat="server" Font-Italic="true" Font-Size ="Small" Text="* Luni (max. 3)"></asp:Label></p>

                            <asp:TableCell HorizontalAlign="Justify"><b><asp:Label ID="Label6" runat="server" Font-Italic="true" Font-Size ="X-Small" Text="Prin derogare de la prevederile Ordonanței de urgență" ></asp:Label></br>
                                     <asp:Label ID="Label7" runat="server" Font-Italic="true" Font-Size ="X-Small" Text=" a Guvernului nr. 50/2010 privind contractele de credit"></asp:Label><br />
                                    <asp:Label ID="Label5" runat="server" Font-Italic="true" Font-Size ="X-Small" Text=" pentru consumatori."></asp:Label>
                                                                          </b></asp:TableCell>

                            
             
                                 </asp:TableRow>
           
            <asp:TableRow>
                <br />
                <br />
                 <asp:TableCell HorizontalAlign="Justify"><b>
                <%--<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="info.png" Height="22px" Width="22px" />--%>
                 <asp:Button runat="server" class ="btn btn-success " ID="Button1" Text="Calculeaza"  OnClick="ButtonSubmit1_Click" />
                     <br />

                     </asp:TableCell>
            </asp:TableRow>
           <br /><br />`

          
     </form>
        <formview>
         <asp:Label ID="Label12" runat="server" Font-Size="X-Large" Font-Bold="true" Text="Grafic de rambursare"></asp:Label>
       <%--<div id="divspan4" style="float:right">--%>
         <%--<asp:ImageButton ID="ButtonExcel" runat="server"  ImageUrl="excel.png"  ImageAlign="right" width="20%" Height="20%"  OnClick="Export_Click"/>--%>   
              <%--</div> <br />--%>

          
         <%--<asp:ImageButton ID="Button2"  ImageUrl="excel.png"  ImageAlign="left" runat="server" width="20%" Height="20%"  OnClick="Export"/>--%>   
         

            <br />
         <%--<asp:Button ID="btnExportExcel" runat="server" Text="Export to excel" Height="30px" OnClick="btnExportExcel_Click" CausesValidation="false" />--%>
            <div style="height:800px; overflow:auto">
         <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="false" Height="100%" CellPadding="4" Width="80%" BackColor="White"
               BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"  class="table table-bordered table-sm table-hover text-center">
               <Columns>
                   <asp:BoundField DataField="SOLD_INIT" HeaderText="Sold initial"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="NR_RATA" HeaderText="Nr."  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="DATA_RATA" HeaderText="Data"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="COMISION" HeaderText="Comision"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="PRINCIPAL" HeaderText="Principal"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="DOBANDA" HeaderText="Dobanda"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="TOTAL_DE_PLATA" HeaderText="Total de plata"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="SOLD" HeaderText="Sold final"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
               </Columns>
           </asp:GridView>
                </div>
            </formview>
    </asp:Content>

