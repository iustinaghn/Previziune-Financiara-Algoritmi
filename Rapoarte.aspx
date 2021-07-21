

<%@ Page Title="Rapoarte" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Rapoarte.aspx.cs" Inherits="Licenta.Rapoarte" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <h3>
    <font face="Helvetica">Generare rapoarte</font>
</h3>

 <asp:Panel role="tabpanel" runat="server" class="tab-pane active" id="personal">


             <div style="float:left; width:400px">
                  <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="false" Height="80%" Width="80%" CellPadding="4" BackColor="white" OnRowDataBound = "OnRowDataBound"
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"  class="table table-bordered table-sm table-hover text-center" 
                    EnableModelValidation="False" OnSelectedIndexChanged = "OnSelectedIndexChanged"
                    SortedAscendingCellStyle-BackColor="WhiteSmoke"
                  SortedDescendingCellStyle-BackColor="WhiteSmoke">
                 <Columns >
                   <asp:BoundField DataField="RAPORT_ID"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Height="30px" HeaderStyle-BorderWidth="2px" HeaderStyle-Font-Bold="true" ItemStyle-Height="50px"/>
                     <asp:BoundField DataField="RAPORT_NUME" HeaderText="Alege un raport" HeaderStyle-Height="30px" HeaderStyle-BorderWidth="2px" HeaderStyle-Font-Bold="true" ItemStyle-Height="50px"/>
               </Columns>
           </asp:GridView>

             </div>

            <asp:ImageButton ID="Button2"  ImageUrl="excel.png"  ImageAlign="left" runat="server" width="5%" Height="5%" OnClick="Excel_exp" style="float:right" />  <br />
             <asp:Label ID="Label12" runat="server" Font-Size="X-Large" Font-Bold="true" ></asp:Label>
            <div style="height:1200px; overflow:auto" >
                <formview runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Height="110%" CellPadding="4" Width="100%" BackColor="White" 
               BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"  class="table table-bordered table-sm table-hover text-center" 
        AllowSorting="True"  EnableModelValidation="False" OnSelectedIndexChanged = "OnSelectedIndexChanged" 
        SortedAscendingCellStyle-BackColor="WhiteSmoke"
      SortedDescendingCellStyle-BackColor="WhiteSmoke">


               <Columns>
                  <%-- <asp:DynamicField Visible="true" DataField="R1" HeaderText="Id Client" HeaderStyle-HorizontalAlign="Center"  HeaderStyle-Font-Bold="true" />
                  <asp:DynamicField Visible="true" DataField="R1" HeaderText="Id Client"  HeaderStyle-HorizontalAlign="Center"  HeaderStyle-Font-Bold="true" />
                   <asp:DynamicField Visible="true" DataField="R2" HeaderText="Nume"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:DynamicField Visible="true" DataField="R3" HeaderText="Puncte KYC"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:DynamicField Visible="true" DataField="R4" HeaderText="Risc"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:DynamicField Visible="true" DataField="R5" HeaderText="CNP"   HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:DynamicField Visible="true" DataField="R6" HeaderText="Sex"   HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:DynamicField Visible="true" DataField="R7" HeaderText="Cetatenie"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:DynamicField Visible="true" DataField="R8" HeaderText="Telefon"   HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:DynamicField Visible="true" DataField="R9"  HeaderText="E-mail"   HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>--%>

               </Columns>
           </asp:GridView>
               </formview> 
                </div>


     </asp:Panel>


    </asp:Content>
