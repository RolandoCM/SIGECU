﻿<%-- 
    Document   : Listado Eventos
    Created on : 31/10/2017, 10:30:41 AM
    Author     : ANAYELI
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <title>REALIZAR PAGO</title>
        <!-- Favicon-->
        <link rel="icon" href="../../favicon.ico" type="image/x-icon">
 <link rel="stylesheet" href="../../fonts/material-design-icons-master/material-icons.css">

        <!-- Google Fonts -->
        <!--<link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">-->
        <!-- Bootstrap Core Css -->
        <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

        <!-- Waves Effect Css -->
        <link href="plugins/node-waves/waves.css" rel="stylesheet" />

        <!-- Animation Css -->
        <link href="plugins/animate-css/animate.css" rel="stylesheet" />

        <!-- JQuery DataTable Css -->
        <link href="plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">

        <!-- Custom Css -->
        <link href="css/style.css" rel="stylesheet">

        <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
        <link href="css/themes/all-themes.css" rel="stylesheet" />
    </head>

    <body class="theme-red">
       <jsp:include page="menu1.jsp" flush="true" />

       <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2></h2>
            </div>
            <!-- Input -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Realización de Pago</h2>
                         </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-sm-12"> 
                                </div>
                            </div>
                            <script>
                                function validar()
                                {
                                    var tipoPago = document.getElementById('tipo').value;
                                    
                                    if(tipoPago==="pendiente")
                                    {
                                        alert("pagoPendiente");
                                    }
                                }
                            </script>
                            
                             <form id="form_advanced_validation" action="ServletPagoEvento" method="POST">
                                    <input type="hidden" name="idEvento" value="${idEvento}"/>  
                                    <input type="hidden" name="nombreUsuario" value="${pageContext.request.userPrincipal.name}"/> 
                                    ${pageContext.request.userPrincipal.name}
                            <div class="row clearfix">
                                <!--
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                                        <thead>
                                            <tr>
                                                <th>Nombre del Alumno</th>
                                                <th>Nombre del Curso</th>

                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                               <th>Nombre del Alumno</th>
                                                <th>Nombre del Curso</th>

                                            </tr>
                                        </tfoot>
                                        <tbody>

                                <%-- <c:forEach var="data" items="${mostrarDatos}">
                                                <tr>
                                                <td>${alumno.nombre}</td>
                                                <td>${curso.nombre}</td>                                                <td>
                                                  
                                            </c:forEach> --%>

                                        </tbody>
                                    </table>
                                </div>
                                -->
                                
                                
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <div class="form-line"><strong>Nombre del Evento</strong><br>
                                            <input type="text" name="nombreEvento" value="${nombreEvento}" class="form-control"required readonly/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <div class="form-line"><strong>Fecha de Pago</strong><br>
                                            <input type="date" name="fechaPago" value="${fechaInicioEvento}" class="form-control"required/>
                                            
                                        </div>
                                         <div class="help-info">La fecha limite de pago es el dia ${fechaInicioEvento}</div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <div class="form-line"><strong> Monto a Pagar:</strong><br>
                                            <input type="number" name="montoEvento" value="${montoEvento}" class="form-control" required readonly />
                                        </div>
                                    </div>
                                </div>
                                 <div class="row clearfix">
                                       
                                <div class="body">
                                <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-line"><strong> Forma de Pago:</strong><br>    <br> 
                                    <div class="col-sm-6">
                                 
                            
                                       
                                <button name="formaPago" type="button" class="btn bg-deep-orange waves-effect m-r-20" value="tarjeta" id="tarjeta" data-color="deep-orange" data-toggle="modal" data-target="#defaultModal">Transferencia</button>
                                <button name="formaPago" type="button" class="btn bg-deep-orange waves-effect m-r-20" value="cheque" id="cheque" data-toggle="modal" data-target="#largeModal">Cheque</button>
                                <button name="formaPago" type="button" class="btn bg-deep-orange waves-effect" data-toggle="modal" value="efectivo" id="efectivo" data-target="#smallModal">Efectivo</button>           
                               
                                       </div>  
                                    </div>
                                    </div>
                                </div>
                                </div>
                                        
                                        
                                       
                            <div class="body">
                            <div class="row clearfix demo-button-sizes">
                                <div class="col-xs-6 col-sm-3 col-md-2 col-lg-2">
                                    <button type="submit" class="btn bg-red btn-block btn-lg waves-effect">Realizar Pago</button>
                                </div>
                            </div>
                            </div> 

                        </div>
                    </div>
                                        
                                        
                                        
                                        
                </form> 
                <h1>${msj.mensaje}</h1>
            </div>




        </div>

</section>
               <div class="modal fade" id="defaultModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="smallModalLabel">Transferencia</h4>
                        </div>
                        <div class="modal-body">
                            <img src="images/oxxo.png" >
                            <p style="color:gray">No demores en pagar, solo podemos reservarte stock cuando el pago se acredite. 
                             Al terminar se evnará al correo registrado los pasos a seguir para realizar el pago.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CERRAR</button>
                        </div>
                    </div>
                    </div>
                </div>
            </div>  
         <!-- Large Size -->
            <div class="modal fade" id="largeModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="smallModalLabel">Cheque</h4>
                        </div>
                        <div class="modal-body">
                            <img src="images/oxxo.png" >
                            <p style="color:gray">No demores en pagar, solo podemos reservarte stock cuando el pago se acredite. 
                             Al terminar se evnará al correo registrado los pasos a seguir para realizar el pago.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CERRAR</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Small Size -->
            <div class="modal fade" id="smallModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="smallModalLabel">Efectivo</h4>
                        </div>
                        <div class="modal-body">
                            <img src="images/oxxo.png" >
                            <p style="color:gray">No demores en pagar, solo podemos reservarte stock cuando el pago se acredite. 
                             Al terminar se evnará al correo registrado los pasos a seguir para realizar el pago.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CERRAR</button>
                        </div>
                    </div>
                </div>
            </div>
                    




        <script src="plugins/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core Js -->
        <script src="plugins/bootstrap/js/bootstrap.js"></script>

        <!-- Select Plugin Js -->
        <script src="plugins/bootstrap-select/js/bootstrap-select.js"></script>

        <!-- Slimscroll Plugin Js -->
        <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

        <!-- Waves Effect Plugin Js -->
        <script src="plugins/node-waves/waves.js"></script>

        <!-- Jquery DataTable Plugin Js -->
        <script src="plugins/jquery-datatable/jquery.dataTables.js"></script>
        <script src="plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>
        <script src="js/pages/ui/modals.js"></script>

        <!-- Custom Js -->
        <script src="js/admin.js"></script>
        <script src="js/pages/tables/jquery-datatable.js"></script>

        <!-- Demo Js -->
        <script src="js/demo.js"></script>
    </body>



</html>
