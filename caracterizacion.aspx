<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="caracterizacion.aspx.vb" Inherits="educando.caracterizacion" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
     <%-- Siguiente linea Forzar a no leer el cache del navegador web--%><%--    <meta http-equiv="Last-Modified" content="0">--%>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0"/>
    <title>Caracterizacion</title>   
      
      <link href="Content/bootstrap.min.css" rel="stylesheet" />       
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous" />
   <link href="Content/educando.css" rel="stylesheet" />
    <link href="Content/evalua.css" rel="stylesheet" /> 
    <link href="Content/slidenorma.css" rel="stylesheet" />  
    

    <script src="Scripts/sweetalert.js"></script>
    <link href="Content/sweetalert.css" rel="stylesheet" />

      <%-- Para que funcione selectpicker() deben manejar los siguientes css y deben ir al inicio de la pagina, asi comoo aqui--%>
     <%--De igual forma los cuatro javascript que estan arriba--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css" />

 </head>
<body>
    <%----Inicio primera barra donde esta el logo y los socialicon --%>
 <div class="top-cart" style="background-color: #ffffff">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <a href="#">         
                     <img src="imagenes/Ladeani_9.gif" class="ajus_logointegrado_caracterizacion_laderito">
                    <img src="imagenes/logointeligenteeseladera.png" class="ajus_logointegrado_caracterizacion_red">                 
                    <img src="imagenes/titulo_caracterizacion.png" class="ajus_logointegrado_caracterizacion">
                </a>
            </div>           
        </div>
    </div>
</div>
<!--  Made With Material Kit Para que funcione el logo en la parte inferior se de incluir el css: educando.css  -->	
    <a href="#" class="made-with-mk">
			<div class="brand">RD</div>
			<div class="made-with">nombre entidad <strong>Entidad</strong></div>
		</a>

<div class="bg-nav bg-info sticky-top shadow-sm">
  <div class="container">
        <nav class="navbar navbar-expand-sm bg-info navbar-light ">
             <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                  <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Navbar links -->
             <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav ml-auto">
                   <%--<li class="nav-item"> <a class="nav-link" onclick="tutorun()" href="#pretest">Guia</a> </li>   --%>                
                   <li class="nav-item"> <a class="nav-link" href="#pretest">Caracterizacion</a> </li>
                   <li class="nav-item">
                    <a class="nav-link" href="graficas">Graficas</a>                      
                   </li>  
                   <li class="nav-item">
                    <a class="nav-link" href="http://ideabien-001-site8.itempurl.com/portalvideo">Videoeduca</a>                      
                  </li> 
                 </ul>
              </div> 
        </nav>
   </div>   
</div>
    <%----Fin segunda barra donde se visualiza las opciones y el boton collapse--%>

  <form id="form1" runat="server" class="container">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>    
  <%-----------------   Formulario de evaluacion Pretest----------------------------%>
         <!--  Start Broker -->
     <%--<img src="imagenes/titulodiagnostico.png" class="mx-auto d-block" style="height: 50px;"/>--%>
        <div style="margin-top:-50px;">            
            <section id="pretest">                
                <hr width="100%">
                <p style="font-size:12px" class="text-justify"><i>Buenos dias / tardes. Mi nombre es_________________________, trabajo en la Nombre entidad y estamos realizando un estudio con el fin de conocer mas a nuestros usuarios, sus necesidades, intereses, y grado de satisfaccion <span style="color:red">frente a los tramites y servicios que ofrece la empresa. Agradeceria que respondiera unas preguntas. Recuerda que sus respuestas serán estrictamente cofidenciales(Ley 1266 de 2008 Hábes Data) y usadas con fines estadisticos.</span> Le tomará aproximadamente 15 minutos de su tiempo</i></p>
                 <div class="mx-auto text-center" style="margin-bottom: 5px">
                   <%--  <asp:Label ID="Label1" runat="server" Text="ENCUESTA DE CARACTARIZACION" ForeColor="#006666" Font-Bold="True" Font-Size="XX-Large"></asp:Label>--%>
                </div>
                <hr width="100%">
                    
                    <div class="row" style="margin-top:7px">                       
                        <div class="col-md-6 col-sm-6 ">                        
                            <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">No. Identificacion<span>*</span> <span class="glyphicon glyphicon-info-sign"></span>
                            </label>
                            <asp:TextBox ID="TextBox_numidenti" runat="server" class="form-control"  required="" AutoPostBack="True"></asp:TextBox> 
                          
                        </div>
                         <div class="col-md-6 col-sm-6 col-xs-12 ">                           
                             <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">Tipo de Documento<span>*</span></label>                                                
                          
                             <asp:DropDownList ID="DropDownList_tip_documento" data-style="btn-outline-secondary" class="form-control" runat="server" placeholder="Ingrese Tipo Identificacion" >
                                 <asp:ListItem Value="1">CC</asp:ListItem>
                                 <asp:ListItem Value="2">TI</asp:ListItem>
                                 <asp:ListItem Value="3">CE</asp:ListItem>
                                 <asp:ListItem Value="4">RC</asp:ListItem>
                                 <asp:ListItem Value="5">PA</asp:ListItem>
                                 <asp:ListItem Value="6">AS</asp:ListItem>
                                 <asp:ListItem Value="7">MS</asp:ListItem>
                                 <asp:ListItem Value="8">NUIP</asp:ListItem>
                             </asp:DropDownList>
  
                         </div>
                    </div>

                    <div class="row" style="margin-top:20px">
                        <div class="col-md-6 col-sm-6 col-xs-12">                           
                            <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">Nombres <span>*</span> <span class="glyphicon glyphicon-info-sign"></span>
                            </label>
                            <asp:TextBox ID="TextBoxnombres" name="TextBoxnombres" runat="server" class="form-control" placeholder="" required=""></asp:TextBox>                         
                                                 
                        </div>
                        <div class="col-md-6 col-sm-6 ">
                            <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">Apellidos <span>*</span><span class="glyphicon glyphicon-info-sign"></span>
                            </label>
                            <asp:TextBox  ID="TextBox_apellidos" runat="server" class="form-control" placeholder="" required="" TabIndex="0"></asp:TextBox>  
                        </div>
                    </div>
                     <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">Genero <span>*</span></label>
                            <asp:DropDownList ID="DropDownList_genero" class="form-control" runat="server">
                                <asp:ListItem Value="1">Masculino</asp:ListItem>
                                <asp:ListItem Value="2">Femenino</asp:ListItem>                                                        
                            </asp:DropDownList>  
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">EAPB <span>*</span></label>
                                <asp:DropDownList ID="DropDownList_eapb" runat="server" class="form-control" DataSourceID="SqlDataSource_eapb" DataTextField="nombre" DataValueField="nombre"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource_eapb" runat="server" ConnectionString="<%$ ConnectionStrings:visualnetConnectionString %>" SelectCommand="SELECT [nombre] FROM [gen_p_eps] ORDER BY [nombre]"></asp:SqlDataSource>
                            </div>
                    </div>
                    <div class="row" style="margin-top:20px">
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">Direccion <span>*</span></label>
                                <asp:TextBox ID="TextBox_dirrecion" runat="server" class="form-control" placeholder="Ingresar Direccion" required=""></asp:TextBox>  
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">Comuna <span>*</span>
                                </label>
                                 <asp:TextBox type="number" ID="TextBox_comuna" runat="server" class="form-control" placeholder="Numero de Comuna" required=""></asp:TextBox>  
                            </div>
                        </div>
                     <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">Barrio <span>*</span></label>
                                <asp:DropDownList data-style="btn-outline-secondary" class="form-control" data-live-search="true" ID="DropDownList_barrio" runat="server" DataSourceID="SqlDataSource_barrios" DataTextField="nombre" DataValueField="nombre">                                  
                                </asp:DropDownList>  
                                <asp:SqlDataSource ID="SqlDataSource_barrios" runat="server" ConnectionString="<%$ ConnectionStrings:visualnetConnectionString %>" SelectCommand="SELECT [nombre] FROM [fac_p_barrio] ORDER BY [nombre]"></asp:SqlDataSource>
                           
                            </div>
                            <div class="col-md-6 col-sm-6 ">
                                <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">Telefono Fijo <span>*</span>
                                </label>
                                 <asp:TextBox type="number" ID="TextBox_telefono" runat="server" class="form-control" placeholder="Numero de Telefono Fijo" required=""></asp:TextBox>  
                            </div>
                        </div>
                    <div class="row" style="margin-top:20px">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">Numero de Celular <span>*</span></label>
                            <asp:TextBox type="number" ID="TextBox_celular" runat="server" class="form-control" placeholder="" required=""></asp:TextBox>  
                        </div>
                        <div class="col-md-6 col-sm-6 ">
                            <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">Correo Electronico <span>*</span>
                            </label>
                             <asp:TextBox type="email" ID="TextBox_correo" runat="server" class="form-control" placeholder="" required=""></asp:TextBox>  
                        </div>
                    </div>
                    <div class="row" style="margin-top:20px">
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">Edad <span>*</span></label>
                             <asp:TextBox ID="TextBox_edad_persona" type="number" runat="server" class="form-control" placeholder="Ingrese Edad"  required=""></asp:TextBox>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <label for="DropDownList_etnia" style="margin-bottom:0px; font-size: 14px; font-weight:bold">Etnia <span>*</span></label> <br />                            
                            <asp:DropDownList ID="DropDownList_etnia" class="form-control" runat="server">
                                  <asp:ListItem>Seleccione</asp:ListItem>
                                <asp:ListItem>Mestizo(Indigena-Blanco)</asp:ListItem>
                                <asp:ListItem>Mulato(Negro-Blanco)</asp:ListItem>
                                <asp:ListItem>Zambo(Indigena-Negro)</asp:ListItem>
                                <asp:ListItem>Indigena</asp:ListItem>
                                <asp:ListItem>Afrocolombiano-Negro</asp:ListItem>
                                <asp:ListItem>Blanco</asp:ListItem>
                                <asp:ListItem>Gitano(Rom)</asp:ListItem>
                                <asp:ListItem>Raizal</asp:ListItem>
                                <asp:ListItem>Palenquero</asp:ListItem>
                                <asp:ListItem>Sin Pertenencia Etnica</asp:ListItem>
                            </asp:DropDownList>
                        </div> 
                    </div>
                
                    <div class="row" style="margin-top:20px">
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <label for="DropDownList_ocupa" style="margin-bottom:0px; font-size: 14px; font-weight:bold">3. Cual es su Ocupacion Actual? <span>*</span></label> <br />
                                                    
                            <asp:CheckBoxList ID="CheckBoxList_ocupacion" runat="server" Height="85px" RepeatColumns="3"  RepeatLayout="Table" CssClass="table" Font-Size="Small" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal">
                                 <asp:ListItem>1. Servidor Público</asp:ListItem>
                                <asp:ListItem>2. Independiente</asp:ListItem>
                                <asp:ListItem>3. Ama de Casa</asp:ListItem>
                                <asp:ListItem>4. Desempleado</asp:ListItem>
                                <asp:ListItem>5. Empleado</asp:ListItem>
                                <asp:ListItem>6. Estudiante</asp:ListItem>
                                <asp:ListItem>7. Pensionado</asp:ListItem>
                                <asp:ListItem>8. N/S N/R</asp:ListItem>  
                            </asp:CheckBoxList>                           
                       
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <label for="DropDownList_ultimoano" style="margin-bottom:0px; font-size: 14px; font-weight:bold">4. ¿Cuál es el último año aprobado de estudios? <span>*</span></label> <br />  
                            <div style="margin-top:13px">
                            <asp:DropDownList ID="DropDownList_ultimoano" class="form-control" style="height:40px" runat="server">
                                 <asp:ListItem>Seleccione</asp:ListItem>
                                <asp:ListItem>1. Primaria</asp:ListItem>
                                <asp:ListItem>2. Bachillerato</asp:ListItem>
                                <asp:ListItem>3. Tecnico</asp:ListItem>
                                <asp:ListItem>4. Tecnólogo</asp:ListItem>
                                <asp:ListItem>5. Profesional</asp:ListItem>
                                <asp:ListItem>6. Post-Grado</asp:ListItem>
                                <asp:ListItem>7. Ningún Grado</asp:ListItem>
                                <asp:ListItem>8. N/S N/R</asp:ListItem>                              
                            </asp:DropDownList>
                          </div>
                        </div> 
                    </div>  
                    <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">5. Estado Civil<span>*</span></label>
                            <asp:DropDownList ID="DropDownList_estado_civil" class="form-control" runat="server" ViewStateMode="Inherit" ValidateRequestMode="Inherit" AppendDataBoundItems="False" AutoPostBack="True">
                                <asp:ListItem Value="1">Soltero</asp:ListItem>
                                <asp:ListItem Value="2">Casado</asp:ListItem> 
                                <asp:ListItem Value="3">Union Libre</asp:ListItem>
                                <asp:ListItem Value="4">Separad@</asp:ListItem>
                                 <asp:ListItem Value="5">Viud@</asp:ListItem>
                                <asp:ListItem Value="6">N/S N/R</asp:ListItem>
                            </asp:DropDownList>  
                            </div>
                         <%-- Inicio de campos multiples en gridview desplazable--%>
                            <div class="col-md-6 col-sm-6 col-xs-12">                              
                               <label style="margin-bottom:0px; font-size: 14px; font-weight:bold">6. Su familia esta conformada por....Cuantos?<span>*</span></label>
                                <div id="divGrid1" style="width: 99%; overflow: auto; overflow-x: hidden; height: 74px"> 
                                 <div class="row">                                    
                                     <div class="col-md-12 col-sm-12 col-xs-12">
                                           <div class="row">
                                               <div class="col-md-8 col-sm-8 col-8">
                                                  <label style="margin-bottom:0px">1. Niños(de 0 a 11 años)</label>   
                                               </div>
                                                <div class="col-md-4 col-sm-4 col-4">
                                                 <asp:TextBox type="number" ID="TextBox_fam_0a11" runat="server" class="form-control" placeholder="" required=""></asp:TextBox>  
                                               </div>
                                           </div>
                                      </div>                                    
                                 </div>  
                                 
                                <div class="row" style="margin-top: 5px">                                    
                                     <div class="col-md-12 col-sm-12 col-xs-12">
                                           <div class="row">
                                               <div class="col-md-8 col-sm-8 col-8">
                                                  <label style="margin-bottom:0px">2. Adolescentes  (de 12 a 17)</label>   
                                               </div>
                                                <div class="col-md-4 col-sm-4 col-4">
                                                 <asp:TextBox type="number" ID="TextBox_fam_12a17" runat="server" class="form-control" placeholder="" required=""></asp:TextBox>  
                                               </div>
                                           </div>
                                      </div>                                    
                                 </div>
                                   
                                 <div class="row" style="margin-top: 5px">                                    
                                     <div class="col-md-12 col-sm-12 col-xs-12">
                                           <div class="row">
                                               <div class="col-md-8 col-sm-8 col-8">
                                                  <label style="margin-bottom:0px">3. Jóvenes  (de 18 a 28)</label>   
                                               </div>
                                                <div class="col-md-4 col-sm-4 col-4">
                                                 <asp:TextBox type="number" ID="TextBox_fam_18a28" runat="server" class="form-control" placeholder="" required=""></asp:TextBox>  
                                               </div>
                                           </div>
                                      </div>                                    
                                 </div>
                                    
                                  <div class="row" style="margin-top: 5px">                                    
                                     <div class="col-md-12 col-sm-12 col-xs-12">
                                           <div class="row">
                                               <div class="col-md-8 col-sm-8 col-8">
                                                  <label style="margin-bottom:0px">4. Adultos  (de 29 a 64)</label>   
                                               </div>
                                                <div class="col-md-4 col-sm-4 col-4">
                                                 <asp:TextBox type="number" ID="TextBox_fam_29a64" runat="server" class="form-control" placeholder="" required=""></asp:TextBox>  
                                               </div>
                                           </div>
                                      </div>                                    
                                 </div>
                                    
                                <div class="row" style="margin-top: 5px">                                    
                                     <div class="col-md-12 col-sm-12 col-xs-12">
                                           <div class="row">
                                               <div class="col-md-8 col-sm-8 col-8">
                                                  <label style="margin-bottom:0px">5. Vejez  (de 65 y Mas)</label>   
                                               </div>
                                                <div class="col-md-4 col-sm-4 col-4">
                                                 <asp:TextBox type="number" ID="TextBox_fam_65ymas" runat="server" class="form-control" placeholder="" required=""></asp:TextBox>  
                                               </div>
                                           </div>
                                      </div>                                    
                                 </div> 
                                    

                             </div> 
                           </div>
                            <%-- Linea antes, fin de campos multiples en gridview desplazable--%>
                        </div>
                       
                       <%-- Inicio de fila de  los 2 campos--%>
                       <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_estrato" style="margin-bottom:0px; font-size: 14px; font-weight:bold">7. ¿En qué estrato socio-económico se ubica ? <span>*</span></label> <br />
                                  <asp:DropDownList ID="DropDownList_estrato" class="form-control" style="height:40px" runat="server">
                                     <asp:ListItem>Seleccione</asp:ListItem>
                                    <asp:ListItem>1. Estrato 1</asp:ListItem>
                                    <asp:ListItem>2. Estrato 2</asp:ListItem>
                                    <asp:ListItem>3. Estrato 3</asp:ListItem>
                                    <asp:ListItem>4. Estrato 4</asp:ListItem>
                                    <asp:ListItem>5. Estrato 5</asp:ListItem>
                                    <asp:ListItem>6. Estrato 6</asp:ListItem>
                                    <asp:ListItem>7. N/S N/R</asp:ListItem>                                                            
                                </asp:DropDownList>                   
                                                     
                       
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_lavivienda" style="margin-bottom:0px; font-size: 14px; font-weight:bold">8. La vivienda en la que Usted y su familia conviven es:  <span>*</span></label> <br />                              
                                <asp:DropDownList ID="DropDownList_lavivienda" class="form-control" style="height:40px" runat="server">
                                     <asp:ListItem>Seleccione</asp:ListItem>
                                    <asp:ListItem>1. Casa Propia</asp:ListItem>
                                    <asp:ListItem>2. Casa Alquilada</asp:ListItem>
                                    <asp:ListItem>3. Casa Familiar</asp:ListItem>
                                    <asp:ListItem>4. Habitación Alquilada</asp:ListItem>
                                    <asp:ListItem>5. Apto Propio</asp:ListItem>
                                    <asp:ListItem>6. Apto Alquilado</asp:ListItem>
                                    <asp:ListItem>7. Apto Familiar</asp:ListItem>
                                    <asp:ListItem>8. Otro</asp:ListItem>                              
                                </asp:DropDownList>
                             
                            </div> 
                        </div>  
                      <%-- linea antes de fila de los 2 campos--%>

                       <%-- Inicio de fila de  los 2 campos--%>
                       <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_salario" style="margin-bottom:0px; font-size: 14px; font-weight:bold">9. Usted y su familia reciben ingresos mensuales de:<span>*</span></label> <br />
                                  <asp:DropDownList ID="DropDownList_salario" class="form-control" style="height:40px" runat="server">
                                     <asp:ListItem>Seleccione</asp:ListItem>
                                    <asp:ListItem>1. Menos de un salario mínimo</asp:ListItem>
                                    <asp:ListItem>2. Un salario mínimo</asp:ListItem>
                                    <asp:ListItem>3. Entre uno y dos salarios mínimos</asp:ListItem>
                                    <asp:ListItem>4. Más de dos salarios mínimos</asp:ListItem>                                                                                            
                                </asp:DropDownList>   
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_medio_informa" style="margin-bottom:0px; font-size: 14px; font-weight:bold">10. ¿Qué medio de comunicación utiliza frecuentemente para informarse?<span>*</span></label> <br />                              
                                <asp:CheckBoxList ID="CheckBoxList_medio_seinforma" runat="server" Height="85px" RepeatColumns="3"  RepeatLayout="Table" CssClass="table-hover" Font-Size="Small" CellPadding="4" CellSpacing="4" RepeatDirection="Horizontal">
                                 <asp:ListItem>1. Redes sociales</asp:ListItem>
                                <asp:ListItem>2. Televisión</asp:ListItem>
                                <asp:ListItem>3. Radio</asp:ListItem>
                                <asp:ListItem>4. Periodico</asp:ListItem>
                                <asp:ListItem>5. Voz a Voz</asp:ListItem>                            
                                </asp:CheckBoxList> 
                            </div> 
                        </div>  
                      <%-- linea antes de fila de los 2 campos--%>

                       <%-- Inicio de fila de  los 2 campos--%>
                       <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_utilizaconectarse" style="margin-bottom:0px; font-size: 14px; font-weight:bold">11. ¿Qué medio utiliza para conectarse a internet?<span>*</span></label> <br />                                
                                <asp:CheckBoxList ID="CheckBoxList_medio_conectarse" runat="server" Height="85px" RepeatColumns="3"  RepeatLayout="Table" CssClass="table" Font-Size="Small" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal">
                                 <asp:ListItem>1. Wifi Hogar</asp:ListItem>
                                <asp:ListItem>2. Wifi público</asp:ListItem>
                                <asp:ListItem>3. Datos prepago</asp:ListItem>
                                <asp:ListItem>4. Datos postpago</asp:ListItem>
                                <asp:ListItem>5. Internet de la Empresa</asp:ListItem>
                                <asp:ListItem>6. Otro</asp:ListItem>                            
                                </asp:CheckBoxList> 
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_medio_informa" style="margin-bottom:0px; font-size: 14px; font-weight:bold">12. Su condición actual es :<span>*</span></label> <br />                              
                                  <asp:DropDownList ID="DropDownList_condicionactual" class="form-control" style="height:40px" runat="server">
                                     <asp:ListItem>Seleccione</asp:ListItem>
                                    <asp:ListItem>1. Padre cabeza de Hogar</asp:ListItem>
                                    <asp:ListItem>2. Madre cabeza de Hogar</asp:ListItem>
                                    <asp:ListItem>3. Habitante de la calle</asp:ListItem>
                                    <asp:ListItem>4. Persona Reinsertada</asp:ListItem>
                                    <asp:ListItem>5. Persona en condición de discapacidad</asp:ListItem>
                                    <asp:ListItem>6. Persona víctima de conflicto armado</asp:ListItem>
                                    <asp:ListItem>7. Persona en estado de embarazo</asp:ListItem>
                                    <asp:ListItem>8. Ninguna</asp:ListItem>
                                    <asp:ListItem>9. Otra</asp:ListItem> 
                                </asp:DropDownList> 
                            </div> 
                        </div>  
                      <%-- linea antes fin de fila de los 2 campos--%>

                       <%-- Inicio de fila de  los 2 campos--%>
                       <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_deberesyderechos" style="margin-bottom:0px; font-size: 14px; font-weight:bold">13. ¿Sabe que los usuarios de servicios de salud, tienen deberes y derechos ?<span>*</span></label> <br />                                
                                <asp:RadioButtonList ID="RadioButtonList_deberesyderechos" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>1. Si</asp:ListItem>
                                    <asp:ListItem>2. No</asp:ListItem> 
                                </asp:RadioButtonList>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_indiquedeberyderecho" style="margin-bottom:0px; font-size: 14px; font-weight:bold">Indique uno</label> <br />                              
                                  <asp:TextBox  ID="TextBox_indiquedeberyderecho" runat="server" class="form-control" placeholder="Especifique uno de los derechos o deberes que conozca" required=""></asp:TextBox>  
                            </div> 
                        </div>  
                      <%-- linea antes fin de fila de los 2 campos--%>

                        <%-- Inicio de fila de  los 2 campos--%>
                       <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_tienen_sabesasociacionsalud" style="margin-bottom:0px; font-size: 14px; font-weight:bold">14. ¿Sabe usted que existe en su comuna una Asociación de Usuarios de servicios de Salud en su comuna?<span>*</span></label> <br />   
                                 <asp:RadioButtonList ID="RadioButtonList_sabesasociacionsalud" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>1. Si</asp:ListItem>
                                    <asp:ListItem>2. No</asp:ListItem> 
                                </asp:RadioButtonList>
                                
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_legustariasociacionusuario" style="margin-bottom:0px; font-size: 14px; font-weight:bold">15. ¿Le gustaría ser parte de la asociación de usuarios en salud de su comuna?</label> <br /> 
                                 <asp:RadioButtonList ID="RadioButtonList_legustariasociacionusuario" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>1. Si</asp:ListItem>
                                    <asp:ListItem>2. No</asp:ListItem> 
                                </asp:RadioButtonList>
                            </div> 
                        </div>  
                      <%-- linea antes fin de fila de los 2 campos--%>

                       <%-- Inicio de fila de  los 2 campos--%>
                       <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_conocelaredladera" style="margin-bottom:0px; font-size: 14px; font-weight:bold">16. ¿Conoce usted la Red de Salud de Ladera Empresa Social del Estado?<span>*</span></label> <br /> 
                                 <asp:RadioButtonList ID="RadioButtonList_conocelaredladera" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>1. Si</asp:ListItem>
                                    <asp:ListItem>2. No</asp:ListItem> 
                                </asp:RadioButtonList>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_servicioutilizado" style="margin-bottom:0px; font-size: 14px; font-weight:bold">17. ¿ Qué Servicios de la Red de Salud Ladera conoce o ha utilizado usted ?</label> <br />                              
                                   <asp:CheckBoxList ID="CheckBoxList_servicioutilizado" runat="server" Height="85px" RepeatColumns="3"  RepeatLayout="Table" CssClass="table table-responsive table-hover" Font-Size="Small" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal">
                                <asp:ListItem>1. Consulta Medica</asp:ListItem>
                                <asp:ListItem>2. Consulta de Urgencias</asp:ListItem>
                                <asp:ListItem>3. Odontología</asp:ListItem>
                                <asp:ListItem>4. Hospitalización</asp:ListItem>
                                <asp:ListItem>5. Consulta Prioritaria</asp:ListItem>
                                <asp:ListItem>6. Consulta Psicosocial</asp:ListItem>
                                <asp:ListItem>7. Prog. De P Y M</asp:ListItem>
                                <asp:ListItem>8. Cirugía</asp:ListItem>
                                <asp:ListItem>9. Laboratorio</asp:ListItem>
                                <asp:ListItem>10. Rayos X </asp:ListItem>
                                <asp:ListItem>11. Compl. Terapéutica</asp:ListItem>
                                <asp:ListItem>12. Partos</asp:ListItem>                          
                                </asp:CheckBoxList> 
                            </div> 
                        </div>  
                      <%-- linea antes fin de fila de los 2 campos--%>

                       <%-- Inicio de fila de  los 2 campos--%>
                       <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_frecuenciautilizaservicios" style="margin-bottom:0px; font-size: 14px; font-weight:bold">18. ¿Con qué frecuencia utiliza usted los servicios de la Red de Salud Ladera ?<span>*</span></label> <br />                                
                                 <asp:DropDownList ID="DropDownList_frecuenciautilizaservicios" class="form-control" style="height:40px" runat="server">
                                     <asp:ListItem>Seleccione</asp:ListItem>
                                    <asp:ListItem>1. Una vez al mes</asp:ListItem>
                                    <asp:ListItem>2. Dos veces al mes</asp:ListItem>
                                    <asp:ListItem>3. Tres o más veces al mes</asp:ListItem> 
                                     <asp:ListItem>4. Sólo cuando me enfermo</asp:ListItem> 
                                     <asp:ListItem>5. Cuando suceden urgencias</asp:ListItem> 
                                </asp:DropDownList> 
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_serviciosmasconsulta" style="margin-bottom:0px; font-size: 14px; font-weight:bold">19. ¿Cuáles son los servicios a lo que más consulta?</label> <br />                              
                                   <asp:CheckBoxList ID="CheckBoxList_serviciosmasconsulta" runat="server" Height="85px" RepeatColumns="3"  RepeatLayout="Table" CssClass="table table-responsive table-hover" Font-Size="Small" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal">
                                 <asp:ListItem>1. Consulta Medica</asp:ListItem>
                                <asp:ListItem>2. Consulta de Urgencias</asp:ListItem>
                                <asp:ListItem>3. Odontología</asp:ListItem>
                                <asp:ListItem>4. Hospitalización</asp:ListItem>
                                <asp:ListItem>5. Consulta Prioritaria</asp:ListItem>
                                <asp:ListItem>6. Consulta Psicosocial</asp:ListItem>
                                <asp:ListItem>7. Prog. De P Y M</asp:ListItem>
                                <asp:ListItem>8. Cirugía</asp:ListItem>
                                <asp:ListItem>9. Laboratorio</asp:ListItem>
                                <asp:ListItem>10. Rayos X </asp:ListItem>
                                <asp:ListItem>11. Compl. Terapéutica</asp:ListItem>
                                <asp:ListItem>12. Partos</asp:ListItem>
                                </asp:CheckBoxList> 
                            </div> 
                        </div>  
                      <%-- linea antes fin de fila de los 2 campos--%>
                     
                       <%-- Inicio de fila de  los 2 campos--%>
                       <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_mediotransporteacudirips" style="margin-bottom:0px; font-size: 14px; font-weight:bold">20. ¿Qué medio de transporte utiliza para acudir a una IPS y recibir servicios de salud?<span>*</span></label> <br />                                
                                 <asp:CheckBoxList ID="CheckBoxList_mediotransporteacudirips" runat="server" Height="85px" RepeatColumns="3"  RepeatLayout="Table" CssClass="table" Font-Size="Small" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal">
                                 <asp:ListItem>1. Transporte Público</asp:ListItem>
                                <asp:ListItem>2. Transporte Informal</asp:ListItem>
                                <asp:ListItem>3. Tranporte Particular</asp:ListItem>
                                <asp:ListItem>4. Medios Propios</asp:ListItem>
                                <asp:ListItem>5. Otro</asp:ListItem>                                                      
                                </asp:CheckBoxList> 
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_manerasolicitaservicios" style="margin-bottom:0px; font-size: 14px; font-weight:bold">21. ¿De qué manera solicita los servicios de salud en la Red de Salud de Ladera?</label> <br />                              
                                 <asp:CheckBoxList ID="CheckBoxList_manerasolicitaservicios" runat="server" Height="85px" RepeatColumns="3"  RepeatLayout="Table" CssClass="table" Font-Size="Small" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal">
                                <asp:ListItem>1. Personalmente</asp:ListItem>
                                <asp:ListItem>2. Telefónicamente</asp:ListItem>
                                <asp:ListItem>3. Página web</asp:ListItem>
                                <asp:ListItem>4. Correo lectrónico</asp:ListItem>
                                <asp:ListItem>5. Asignada por el Programa de PyM</asp:ListItem>
                                <asp:ListItem>6. Otro</asp:ListItem>                                                            
                                </asp:CheckBoxList> 
                            </div> 
                        </div>  
                      <%-- linea antes fin de fila de los 2 campos--%>

                         <%-- Inicio de fila de  los 2 campos--%>
                               <div class="row" style="margin-top:20px">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label for="DropDownList_calificalosservicios" style="margin-bottom:0px; font-size: 14px; font-weight:bold">22. ¿Cómo califica usted el (los) servicios que ha utilizado en las IPS Red de Salud de Ladera?<span>*</span></label> <br />                                
                                         <asp:DropDownList ID="DropDownList_calificalosservicios" class="form-control" style="height:40px" runat="server">
                                             <asp:ListItem>Seleccione</asp:ListItem>
                                            <asp:ListItem>1. Malo</asp:ListItem>
                                            <asp:ListItem>2. Regular</asp:ListItem>
                                             <asp:ListItem>3. Bueno</asp:ListItem> 
                                             <asp:ListItem>4. Excelente</asp:ListItem>
                                             <asp:ListItem>5. Le es Indiferente</asp:ListItem> 
                                        </asp:DropDownList> 
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label for="DropDownList_aspectosamejorar" style="margin-bottom:0px; font-size: 14px; font-weight:bold">23. ¿Qué aspectos podria mejorar la Red de Salud de Ladera?</label> <br />                              
                                           <asp:CheckBoxList ID="CheckBoxList_aspectosamejorar" runat="server" Height="85px" RepeatColumns="3"  RepeatLayout="Table" CssClass="table table-responsive table-hover" Font-Size="Small" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal">
                                        <asp:ListItem>1. Infraestructura de las instalacciones</asp:ListItem>
                                        <asp:ListItem>2. Equipamiento médico</asp:ListItem>
                                        <asp:ListItem>3. Oportunidad en los servicios</asp:ListItem>
                                        <asp:ListItem>4. Calidad en la atención por parte de los servidores públicos</asp:ListItem>
                                        <asp:ListItem>5. Ampliar el portafolio de servicios</asp:ListItem>
                                        <asp:ListItem>6. Humanización en la consulta médica</asp:ListItem>
                                        <asp:ListItem>7. Otro</asp:ListItem>                                                               
                                        </asp:CheckBoxList> 
                                    </div> 
                                </div>  
                              <%-- linea antes fin de fila de los 2 campos--%>
                              
                       <%-- Inicio de fila de  los 2 campos--%>
                       <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_recomendarialoservicios" style="margin-bottom:0px; font-size: 14px; font-weight:bold">24. ¿ Recomendaría los servicios que se prestan la Red de Salud de Ladera a amigos o familiares?<span>*</span></label> <br />                                
                                 <asp:RadioButtonList ID="RadioButtonList_recomendarialoservicios" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>1. Si</asp:ListItem>
                                    <asp:ListItem>2. No</asp:ListItem> 
                                </asp:RadioButtonList>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_visitadopaginawebladera" style="margin-bottom:0px; font-size: 14px; font-weight:bold">25. ¿Conoce o ha visitado la página web de la Red de Salud de Ladera?</label> <br />                              
                                <asp:RadioButtonList ID="RadioButtonList_visitadopaginawebladera" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>1. Si</asp:ListItem>
                                    <asp:ListItem>2. No</asp:ListItem> 
                                </asp:RadioButtonList>
                            </div> 
                        </div>  
                      <%-- linea antes fin de fila de los 2 campos--%>

                          <%-- Inicio de fila de  los 2 campos--%>
                       <div class="row" style="margin-top:20px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_autorizainformacionportafolio" style="margin-bottom:0px; font-size: 14px; font-weight:bold">26. Autoriza que le enviemos información sobre nuestro portafolio de servicios?<span>*</span></label> <br />                                
                                 <asp:RadioButtonList ID="RadioButtonList_autorizainformacionportafolio" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>1. Si</asp:ListItem>
                                    <asp:ListItem>2. No</asp:ListItem> 
                                </asp:RadioButtonList>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <label for="DropDownList_autorizacontactarloconfirmaveracidad" style="margin-bottom:0px; font-size: 14px; font-weight:bold">27. Autoriza usted contactarlo para confirmar la veracidad de los datos suministrados?</label> <br />                              
                                <asp:RadioButtonList ID="RadioButtonList_autorizacontactarloconfirmaveracidad" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>1. Si</asp:ListItem>
                                    <asp:ListItem>2. No</asp:ListItem> 
                                </asp:RadioButtonList>
                            </div> 
                        </div>  
                      <%-- linea antes fin de fila de los 2 campos--%>

                      <hr>
                     <div class="container" id="bottom-section" style="margin-top:-20px">
                            <div class="row">
                                <div class="bottom_section mx-auto">
                                   <%-- <button class="btn btn-default">Guardar</button>--%>                   
                                    <asp:Button  class="btn icon-btn btn-info" ID="Button_guardar_pretest" runat="server" Text="Guardar Encuesta de Caracterizacion" />
                                </div>
                            </div>
                         <asp:Label ID="Label_verifica_pretest" runat="server" Text="." Font-Bold="True" ForeColor="#006600"></asp:Label>
                    </div> 
            </section>
        </div>
        <!--  End Broker -->  
      </ContentTemplate>    
    </asp:UpdatePanel>


 </form>
    <%--Final formulario caracterizacion-------------------------------------------------------------------------------%>
       
  <%--  Pie de Pagina--%>
<div runat="server"  class="copyright bg-info border pt-2">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-12">
                <h6>Todos los Derechos Reservados. 2022. Cali - Valle del Cauca</h6>
            </div>
        </div>
    </div>
</div>          
   
 
     <script src="Scripts/forum.js" type="text/javascript"></script>
    <script src="Scripts/slidenorma.js"></script>
   <%--  <script src="Scripts/scripts.min.js" type="text/javascript"></script> --%>
   


   <%-- Para que funcione selectpicker() deben manejar los siguientes javascript y deben ir al final de la pagina, asi comoo aqui--%>
    <%--De igual forma los dos css que estan arriba--%>
   <%-- Nota: para que no se pierda la propiedad cuando se realice un postback de la pagina desde el codigo del servidor en page_load se llama la funcion: cargar_droplist()--%>
    <%--video donde explican como configurar el selectpicker(): https://www.youtube.com/watch?v=zUeG6VgdKSc--%>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
    
    <%--Para que funcione dknotus-tour debe estar activa esta version del jquery.min.js, pero por ahora deshabilita el selectpicker()--%>
      <%--<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" type="text/javascript"></script>--%>
      <script src="Scripts/dknotus-tour.js" type="text/javascript"></script>

      <script type="text/javascript">

            //Lo deshabilito por ahora para poder que funcione con python al llevar la cedula de otro aplicativo
            /*window.interdeal = { "sitekey": "03bcb10dc000853a3e21c03b68915171", "Position": "Left", "Menulang": "ES", "domains": { "js": "https://cdn.equalweb.com/", "acc": "https://access.equalweb.com/" }, "btnStyle": { "vPosition": ["80%", null], "scale": ["0.8", "0.8"], "color": { "main": "#1876c9", "second": "" }, "icon": { "type": 7, "shape": "semicircle", "outline": false } } }; (function (doc, head, body) { var coreCall = doc.createElement('script'); coreCall.src = 'https://cdn.equalweb.com/core/4.2.2/accessibility.js'; coreCall.defer = true; coreCall.integrity = 'sha512-5JFUorutIyGmP61zRJjdTke6AFi8/IYzJ6pyQL0UpUqwMNDuukmNH2qv2s+lj0X6MPtblMt4KgWLoDmqrTa5kg=='; coreCall.crossOrigin = 'anonymous'; coreCall.setAttribute('data-cfasync', true); body ? body.appendChild(coreCall) : head.appendChild(coreCall); })(document, document.head, document.body);*/

           function tutorun() {

                Tour.run([
                    {
                        element: $('#TextBox_numidenti'),
                        content: 'Por Favor Digitar Cedula y Enter para Traer datos basicos del Usuario',
                        language: 'es',
                        position: 'bottom',
                        padding: 5,
                        spotlight: true,
                        scroll: true
                        
                    },
                    {
                        element: $('#TextBox_comuna'),
                        content: 'Tipo Identificacion Usuario',
                        position: 'bottom',
                        language: 'es'
                    },
                    {
                        element: $('#TextBox_correo'),
                        content: 'El correo debe ser valido',
                        position: 'bottom',
                        language: 'es'
                    }
                   
                ]);
            }


              
          
            function swal_paciente_noenbd() {  
                swal("Mensaje", "El paciente no esta registrado en la base de datos de la Institucion", "warning");
          }

          function swal_encuesta_guardada() {
              swal("Mensaje", "La Encuesta de Caracterizacion fue Guardada Satisfactoriamente", "success");
          }


                   
         
            //-----------------------Fin Lineas manejo Modal Pos-test

            $(document).ready(function () {
                $('#<%=DropDownList_barrio.ClientID%>').selectpicker();
                $('#<%= DropDownList_tip_documento.ClientID%>').selectpicker({
                    
                });


                $('#<%=TextBox_numidenti.ClientID%>').focus();
               
            });


            function cargar_droplist() {              
                // Initiate Pretty Dropdowns pagina donde explican las diferentes opciones: https://thdoan.github.io/pretty-dropdowns/
                $('#<%=DropDownList_barrio.ClientID%>').selectpicker();
                $('#<%= DropDownList_tip_documento.ClientID%>').selectpicker();
                                                  
              
               }


            $(function () {
                $('#<%=DropDownList_barrio.ClientID%>').selectpicker();
                $('#<%= DropDownList_tip_documento.ClientID%>').selectpicker();

            
            });

          // This Script is used to maintain Grid Scroll on Partial Postback
          var scrollTop;
          //Register Begin Request and End Request 
          Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
          Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
          //Get The Div Scroll Position
          function BeginRequestHandler(sender, args) {
              var m = document.getElementById('divGrid1');
              scrollTop = m.scrollTop;
          }




            
      </script>

 

</body>
</html>

