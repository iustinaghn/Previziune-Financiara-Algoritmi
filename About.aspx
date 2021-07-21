<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Licenta.About" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent"  runat="server">
        <style>
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


@import url(https://fonts.googleapis.com/css?family=Montserrat);

htmltit, bodytit{
  height: 100%;
  font-weight: 800;
}

bodytit{
  background: #030321;
  font-family: Arial;
}

svg {
    display: block;
    font: 10.5em 'Montserrat';
    width: 960px;
    height: 300px;
    margin: 0 auto;
}

.text-copy {
    fill: none;
    stroke: white;
    stroke-dasharray: 6% 29%;
    stroke-width: 5px;
    stroke-dashoffset: 0%;
    animation: stroke-offset 5.5s infinite linear;
}

.text-copy:nth-child(1){
  stroke: #4D163D;
  animation-delay: -1;
}

.text-copy:nth-child(2){
  stroke: #840037;
  animation-delay: -2s;
}

.text-copy:nth-child(3){
  stroke: #BD0034;
  animation-delay: -3s;
}

.text-copy:nth-child(4){
  stroke: #BD0034;
  animation-delay: -4s;
}

.text-copy:nth-child(5){
  stroke: #FDB731;
  animation-delay: -5s;
}

@keyframes stroke-offset{
  100% {stroke-dashoffset: -35%;}
}

.table tbody tr.highlight td {
  background-color: #e3d7e9;
}

.bg-size-rs {
    font-size: 20px;
    background:cadetblue;
    color:white;
}

.bg-size-rm {
    font-size: 20px;
    background:burlywood;
    color:white;
}

.bg-size-rr {
    font-size: 20px;
    background:darkred;
    color:white;
}
.bg-size-scor {
    font-size: 20px;
    background:blueviolet;
    color:white;
}
@donut-radius: 100px;
@meter-rotate: 123deg;

.criteriobox {
    height: @donut-radius;
    overflow: hidden;
}

.criteriometer {
    width: @donut-radius;
    height: @donut-radius / 2;
    border-top-left-radius: @donut-radius;
    border-top-right-radius: @donut-radius;
    border: @donut-radius / 2 solid transparent;
    border-bottom: 0;
    position: relative;

    .meter {
        width: 100%;
        height: @donut-radius / 20;
        background-color: #111;
        position: absolute;
        bottom: 0;
        left: -50%;
        transform: rotate(@meter-rotate);
        transform-origin: right bottom;
    }

    span {
        display: inline-block;
        width: @donut-radius / 2;
        height: @donut-radius / 2;
        border-top-left-radius: @donut-radius;
        border-width: @donut-radius / 2;
        border-style: solid;
        border-bottom: 0 !important;
        border-right: 0 !important;
        position: absolute;
        top: -@donut-radius / 2;
        left: -@donut-radius / 2;
        transform-origin: right bottom;

        // from right to left to solve z-index
        &:nth-child(1) {
            border-color: green;
            transform: rotate(90deg);
        }
        &:nth-child(2) {
            border-color: yellow;
            transform: rotate(45deg);
        }
        &:nth-child(3) {
            border-color: orange;
            transform: rotate(0deg);
        }
        &:nth-child(4) {
            border-color: red;
            transform: rotate(-45deg);
        }
    }
}

body {
  display: flex;
  justify-content: center;
}
</style>
    <div style="float:right;"> <img src="customer.png" alt="Avatar" style="width:300px;height:250px;"></div>

      
    <br />
    <br />
<%--    <div id ="Layer0" style="float:left; width:1000px; height:50px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size:x-large;" >
   &quot;At its core, banking is not simply about profit, but about personal relationships.&quot;
        </div>--%>
 <br />
    <br />
<div id ="Layer1" style="positon:relative; width:500px; height:50px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size:xx-large" >
   Portofoliu Clienti
</div>
    <div>
     

    <asp:Button runat="server" class ="btn" BackColor="LightGreen" ID="Button1" Text="Afiseaza Portofoliu Clienti"  OnClick="ButtonSubmit_Click" />

    <%--<asp:Button runat="server" class ="btn btn-success " BackColor="LightGreen" ID="btnExportDoc_Click" Text="Exporta (.doc)" CausesValidation="false" />--%>

    <div class="criteriobox">
  <div class="criteriometer">
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <div class="meter"></div>
  </div>
</div>
<br />
    <br />

  <asp:TextBox ID="txtSearch" class="form-control" runat="server" />
<asp:Button ID="btnSearch" class="btn btn-secondary" Text="Cauta" runat="server" OnClick="Search"/>
     
        


    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Height="100%" CellPadding="4" Width="100%" BackColor="White" 
               BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"  class="table table-bordered table-sm table-hover text-center" AllowPaging="true" PageSize="10" OnPageIndexChanging="OnPageIndexChanging"
       OnRowDataBound = "OnRowDataBound" AllowSorting="True" AutoGenerateSelectButton="True" EnableModelValidation="False" OnSelectedIndexChanged = "OnSelectedIndexChanged"
        SortedAscendingCellStyle-BackColor="WhiteSmoke"
      SortedDescendingCellStyle-BackColor="WhiteSmoke">
        
    <PagerSettings Mode="NextPrevious" PageButtonCount="4" PreviousPageText="Inapoi     " NextPageText="     Inainte" />  
        
               <Columns>
                   <asp:BoundField DataField="CLIENT_ID" HeaderText="Id Client"  HeaderStyle-HorizontalAlign="Center"  HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="CLIENT_NUME" HeaderText="Nume"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="CLIENT_PRENUME" HeaderText="Prenume"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="CLIENT_DATA_NASTERE" HeaderText="Data de nastere"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="CLIENT_CNP" HeaderText="CNP"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="CLIENT_SEX" HeaderText="Sex"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="CLIENT_CETATENIE" HeaderText="Cetatenie"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="CLIENT_TELEFON" HeaderText="Telefon"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="CLIENT_EMAIL" HeaderText="E-mail"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>

               </Columns>
           </asp:GridView>

      <div id="divspan4" style="float:left">
         <asp:ImageButton ID="Button2"  ImageUrl="excel.png"  ImageAlign="left" runat="server" width="20%" Height="20%"  OnClick="Export"/>   
              </div>

    <div id="divspan" style="float:right;">
       <%--<asp:Label runat="server" ID="Label2" Font-Bold="true" Text="Gradul de risc" Font-Underline="true" Font-Size="Large"> </asp:Label>--%>
        
    <span id="spanrs" runat="server" class="badge rounded-pill bg-success bg-size-rs" >Risc Scazut</span>
    <span id="spanrm"  runat="server" class="badge rounded-pill bg-secondary bg-size-rm" >Risc Mediu</span>
    <span id="spanrr"  runat="server" class="badge rounded-pill bg-danger bg-size-rr">Risc Ridicat</span>

            
    </div>
        <br /><br />
        
    <div id="divspan2" style="float:right">
         <span id="span1"  runat="server" class="badge rounded-pill bg-danger bg-size-scor">
             Scorul clientului este
         </span>
    </div>
    <br />
        <br />
         <div id="divspan3" style="float:right">
            <asp:ImageButton id="ImageButton1" runat="server" ImageUrl="idcard.png" width="10%" Height="10%" ImageAlign="Right" data-toggle="modal" data-target="#myModal"  OnClientClick="return false;" />
             
             <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><b>Carte de identitate</b></h4>
                            </div>
                            <div class="modal-body">
                                 <div class="container-fluid">
                                    <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Tip act de identitate"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox1" Font-Bold="true" readonly="true" type="text" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                                                      
                                      <div class="row">
                                          <div class="col-md-4">
                                           <asp:Label runat="server" Font-Bold="true" Text="Serie"></asp:Label>
                                            <asp:TextBox runat="server" ID="TextBox2" Font-Bold="true" readonly="true" Width="60px" class="form-control"></asp:TextBox>
                                          </div>
                                          <div class="col-md-4">
                                           <asp:Label runat="server" Font-Bold="true" Text="Numar"></asp:Label>
                                            <asp:TextBox runat="server" ID="TextBox3" Font-Bold="true" readonly="true"  type="number" class="form-control"></asp:TextBox>
                                          </div>
                                        </div>
                                   
                                       <div class="row">
                                          <div class="col-md-4">
                                           <asp:Label runat="server" Font-Bold="true" Text="Data emitere"></asp:Label>
                                            <asp:TextBox runat="server" ID="TextBox4" Font-Bold="true" readonly="true" width="105%" type="date" class="form-control"></asp:TextBox>
                                          </div>
                                          <div class="col-md-4">
                                           <asp:Label runat="server" Font-Bold="true" Text="Data expirare"></asp:Label>
                                            <asp:TextBox runat="server" ID="TextBox5" Font-Bold="true" readonly="true" width="105%" type="date" class="form-control"></asp:TextBox>
                                          </div>
                                        </div>

                                     <br />

                                   <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Tara emitenta"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox6" Font-Bold="true" readonly="true" type="text" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                     <br />
                                     <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Institutia emitenta"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox7" Font-Bold="true" readonly="true" type="text" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>

                                  </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div> 

            <asp:ImageButton id="ImageButton2" runat="server" ImageUrl="detalii3.png" ImageAlign="Right" width="10%" Height="10%" data-toggle="modal" data-target="#myModal2"  OnClientClick="return false;"   />

             <div id="myModal2" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><b>Informatii Solicitant</b></h4>
                            </div>
                            <div class="modal-body">
                                 <div class="container-fluid">
                                    <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Status social"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox8" Font-Bold="true" readonly="true" Width="120%" type="text" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                         <br />                             
                                      <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Numar membri familie"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox9" Font-Bold="true" readonly="true" type="number" width="40%" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                   <br />
                                      <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Mediu social"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox10" Font-Bold="true" readonly="true" type="text" Width="60%" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                     <br />
                                      <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Tip locuinta"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox11" Font-Bold="true" readonly="true" type="text" Width="160%" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                     <br />
                                        <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Educatie"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox12" Font-Bold="true" readonly="true" type="text" Width="180%" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                     <br />
                                      <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Ocupatie"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox15" Font-Bold="true" readonly="true" type="text" Width="160%" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                     <br />
                                      <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Venitul mediu lunar"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox13" Font-Bold="true" readonly="true" type="text" Width="120%" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                     <br />

                                      <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Tipul angajatorului"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox14" Font-Bold="true" readonly="true" type="text"  Width="120%" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                     <br />
                                      <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Domeniul angajatorului"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox16" Font-Bold="true" readonly="true" type="text" Width="180%" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                     <br />
                                      <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Numarul de angajati ai angajatotorului"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox17" Font-Bold="true" readonly="true" type="text" Width="80%" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                     <br />
                                      <div class="row">
                                      <div class="col-md-4">
                                          <asp:Label runat="server" Font-Bold="true" Text="Perioada lucrata"></asp:Label>
                                      </div>
                                      <div class="col-md-4 ms-auto">
                                          <asp:TextBox runat="server" ID="TextBox18" Font-Bold="true" readonly="true" type="text" Width="100%" class="form-control"></asp:TextBox>
                                      </div>
                                    </div>
                                  </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div> 
        </div>
       
<!-- Modal -->
 
        <%--<asp:Button runat="server" class ="btn btn-success " BackColor="LightGreen" ID="btnExportDoc_Click" Text="Exporta (.doc)" CausesValidation="false" />--%>               
                   
                      
   <%--<asp:ImageButton id="ImageButton3" runat="server" ImageUrl="detalii3.png" ImageAlign="Right" width="10%" Height="10%" data-toggle="modal" data-target="#myModal2"  OnClientClick="return false;"   />--%>


     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" Height="100%" Width="50%" CellPadding="4" BackColor="White"
               BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"  class="table table-bordered table-sm table-hover text-center" >
        
                 <Columns>
                   <asp:BoundField DataField="CLI_TARA" HeaderText="Tara"  HeaderStyle-HorizontalAlign="Center"  HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="CLI_JUDET" HeaderText="Judet"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="CLI_ORAS" HeaderText="Oras"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   <asp:BoundField DataField="CLI_COD_POSTAL" HeaderText="Cod Postal"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true"/>
                   

               </Columns>
           </asp:GridView>


  
    <script type="text/javascript" src=" https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js "></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable({
                initComplete: function () {
                    this.api().columns().every(function () {
                        var column = this;
                        var select = $('<select><option value=""></option></select>')
                            .appendTo($(column.footer()).empty())
                            .on('change', function () {
                                var val = $.fn.dataTable.util.escapeRegex(
                                    $(this).val()
                                );

                                column
                                    .search(val ? '^' + val + '$' : '', true, false)
                                    .draw();
                            });

                        column.data().unique().sort().each(function (d, j) {
                            select.append('<option value="' + d + '">' + d + '</option>')
                        });
                    });
                }
            });
        }
            , function () {
                $('#sortTable').DataTable();
            });
        
    </script>
    <script>
        $('#example').on('click', 'tbody tr', function (event) {
            $(this).addClass('highlight').siblings().removeClass('highlight');
        });
    </script>

  

    
   <%-- <script>
        $(document).ready(function () {
            $('#contact_form').bootstrapValidator({
                // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    first_name: {
                        validators: {
                            stringLength: {
                                min: 2,
                            },
                            notEmpty: {
                                message: 'Please supply your first name'
                            }
                        }
                    },
                    last_name: {
                        validators: {
                            stringLength: {
                                min: 2,
                            },
                            notEmpty: {
                                message: 'Please supply your last name'
                            }
                        }
                    },
                    email: {
                        validators: {
                            notEmpty: {
                                message: 'Please supply your email address'
                            },
                            emailAddress: {
                                message: 'Please supply a valid email address'
                            }
                        }
                    },
                    phone: {
                        validators: {
                            notEmpty: {
                                message: 'Please supply your phone number'
                            },
                            phone: {
                                country: 'US',
                                message: 'Please supply a vaild phone number with area code'
                            }
                        }
                    },
                    address: {
                        validators: {
                            stringLength: {
                                min: 8,
                            },
                            notEmpty: {
                                message: 'Please supply your street address'
                            }
                        }
                    },
                    city: {
                        validators: {
                            stringLength: {
                                min: 4,
                            },
                            notEmpty: {
                                message: 'Please supply your city'
                            }
                        }
                    },
                    state: {
                        validators: {
                            notEmpty: {
                                message: 'Please select your state'
                            }
                        }
                    },
                    zip: {
                        validators: {
                            notEmpty: {
                                message: 'Please supply your zip code'
                            },
                            zipCode: {
                                country: 'US',
                                message: 'Please supply a vaild zip code'
                            }
                        }
                    },
                    comment: {
                        validators: {
                            stringLength: {
                                min: 10,
                                max: 200,
                                message: 'Please enter at least 10 characters and no more than 200'
                            },
                            notEmpty: {
                                message: 'Please supply a description of your project'
                            }
                        }
                    }
                }
            })
                .on('success.form.bv', function (e) {
                    $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                    $('#contact_form').data('bootstrapValidator').resetForm();

                    // Prevent form submission
                    e.preventDefault();

                    // Get the form instance
                    var $form = $(e.target);

                    // Get the BootstrapValidator instance
                    var bv = $form.data('bootstrapValidator');

                    // Use Ajax to submit form data
                    $.post($form.attr('action'), $form.serialize(), function (result) {
                        console.log(result);
                    }, 'json');
                });
        });


    </script>--%>
     <!-- Template Main JS File -->
  <script src="Scripts/main.js"></script>

        </div>
</asp:Content>
