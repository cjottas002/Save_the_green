<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="modelos.Usuario" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>TOPE: formulario de perfil</title>
    
    <link rel="stylesheet" href="css/css-formulario.css">
    
    <script src="jquery-proyecto/jquery-3.4.1.min.js"></script>
    
    <script src="jquery-proyecto/jquery.validate.min.js"></script>
    
    <script>
    
        $(document).ready(function(e){
            
            $(".logo").hide().fadeIn(1000);

            $("#contenedor_formulario").hide().fadeIn(1000);
            
            $("#registro").hide().fadeIn(3000);
            
            $(".titulo").hide().fadeIn(3000);
            
            $("#registro").validate({
                
                rules:{
                    
                    nombre:"required",
                    dni:"required",
                    direccion:"required",
                    telefono:{
                        number:true,
                        rangelength:[9,9]
                    },
                    contrasena:{
                        required:true,
                        rangelength:[8,16]
                    },
                    confirma:{
                        equalTo:"#contrasena"
                    },
                    email2:{
                        required:true,
                        email:true,
                    },
                    edad:{
                        number:true,
                        range:[15,105]
                    },
                    usuario:"required"
                    
                },
                
                messages:{
                    
                    nombre:"obligatorio",
                    dni:"obligatorio",
                    direccion:"obligatorio",
                    telefono:{
                        number:"debe ser un dato numérico",
                        range:"el nÃºmero debe contener 9 cifras"
                    },
                    contrasena:{
                        required:"por favor, introduce contraseÃ±a",
                        rangelength:"entre 8 y 16 caracteres"
                    },
                    confirma:{
                        equalTo:"no coincide con el campo contraseña"
                    },
                    email2:{
                        email:"el formato es erróneo",
                        required:"obligatorio"
                    },
                    edad:{
                        number:"debe ser un dato numérico",
                        range:"entre 15 y 105"
                    },
                    usuario:"obligatorio"
                    
                }
                
            });
            
        });
    
    </script>
    
</head>


 <body class="fixed-header">

        <header id="header">

        <!-- INFORMACIÓN DE ARRIBA, BARRA AZUL -->
        <div class="top-bar clearfix">
            <p>TOPE, 25 años de experiencia	-</p>
            <ul class="icono">
                <li><img src="imagenes/savethegreen/icono-telefono.jfif" width="35px" height="35px" style="border-radius: 50%;"> Tlf. 971 29 17 56</li>
                <li><img src="imagenes/savethegreen//ubicacion2.png" width="35px" height="35px" style="border-radius: 50%;"> C/Julián Camarillo, Madrid</li>
            </ul>
        </div>
        <!-- /FIN INFORMACIÓN DE ARRIBA, BARRA AZUL -->
		
        <!--ENCABEZADO PÁGINA-->
        <a href="index.jsp" class="logo"><img src="imagenes/savethegreen/logo.PNG" width="400px" height="250px"></a>

        <div class="containerEncabezado">
            <h2> <span class="color-default">SAVE THE GREEN</span></h2>
            <p>Del campo a tu casa</p>
        </div>
        
        <!--NAVEGADOR-->
            <nav class="main-nav navbar-collapse collapse" id="primary-nav" style="margin-top: -5%;">

                <ul class="nav nav-pills">
                    <li class="dropdown"><a href="#.">Inicio</a>

                    </li>
                    <li class="dropdown"><a href="">Sobre nosotros  <img src="imagenes/styled-select-arrow.png"> </a>
                        <ul class="dropdown-menu">
                            <li><a href="queEsTope.jsp"> ¿Qué es TOPE?</a></li>
                            <li><a href="saveGreen.jsp"> ¿Por qué SAVE THE GREEN?</a></li>
                            <li><a href="proyectoInt.jsp">Proyecto Integrador</a></li>

                        </ul>
                    </li>
                    <li class="dropdown"><a href="">Servicios  <img src="imagenes/styled-select-arrow.png" alt=""></a>
                        <ul class="dropdown-menu">
                            <li><a href="inicioSesion.jsp">Iniciar sesión</a></li>
                            <li><a href="formularioRegistro.jsp">Registrarse</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a href="#.">Para su interés  <img src="imagenes/styled-select-arrow.png" alt=""></a>
                        <ul class="dropdown-menu">
                            <li><a href="cambioClimatico.jsp">El cambio climático,  ¿qué es?</a></li>
                            <li><a href="alimSosten.jsp"> ¿Qué significa alimentación sostenible?</a></li>
                        </ul>
                   
                    <li class="dropdown"><a href="">Contacta con nosotros  <img src="imagenes/styled-select-arrow.png" alt=""></a>
                        <ul class="dropdown-menu">
                            <li><a href="formularioContacto.jsp">Correo electrónico</a></li>
                            <li><a href="ubicacion.jsp">Dirección. ¿Cómo llegar?</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <!--FIN NAVEGADOR-->

        </header>
        
        <section class="bg-blue">
                <div class="container">
                    <div class="heading text-center animate bounceIn informacion">
   
   <h1 class="titulo">Regístrate y saboreanos</h1>
   
   <div id="contenedor_formulario">
       
       <form accept-charset="UTF-8" action="<%= request.getContextPath() %>/perfil"  method="POST" name="registro" id="registro">
           <% Usuario u = (Usuario) request.getAttribute("usuario"); %>
           <table>
               
               <tr>
                   <td class="fuente">*NOMBRE:</td>
                   <td><input type="text" name="nombre" id="nombre" value="<%= u.getNombre() %>" class="izquierda"></td>
               </tr>
               <tr>
                   <td class="fuente">PRIMER APELLIDO:</td>
                   <td><input type="text" name="apellido1" id="apellidos" value="<%= u.getApellido1() %>" class="izquierda"></td>
               </tr>
               <tr>
                   <td class="fuente">SEGUNDO PELLIDO:</td>
                   <td><input type="text" name="apellido2" id="apellidos" value="<%= u.getApellido2() %>" class="izquierda"></td>
               </tr>
               <tr>
                   <td class="fuente">*NOMBRE USUARIO:</td>
                   <td><input type="text" name="login" id="usuario" value="<%= u.getLogin() %>" class="izquierda">
               </tr>
               <tr>
                   <td class="fuente">*DNI:</td>
                   <td><input type="text" name="dni" id="dni" class="izquierda" value="<%= u.getDni() %>" placeholder="12345678A"></td>
               </tr>
               <tr>
                   <td class="fuente">FECHA DE NACIMIENTO:</td>
                   <td><input type="text" name="fecha_nacimiento" id="fecha_nacimiento"  value="<%= u.getFechaNacimiento() %>" class="izquierda"></td>
               </tr>
               <tr>
                   <td class="fuente">*DIRECCIÓN:</td>
                   <td><input type="text" name="direccion" id="direccion"  value="<%= u.getDireccion() %>" class="izquierda"></td>
               </tr>
               <tr>
                   <td class="fuente">CCAA:</td>
                   <td><select name="ccaa" id="ccaa" class="izquierda">
                       <option value="madrid">Madrid</option>
                       <option value="castillaleon">Castilla y león</option>
                       <option value="asturias">Asturias</option>
                   </select></td>
               </tr>
               <tr>
                   <td class="fuente">*CORREO ELECTRÓNICO:</td>
                   <td><input type="text" name="email2" id="email2"  value="<%= u.getEmail() %>" class="izquierda"></td>
               </tr>
               <tr>
                   <td class="fuente">*TELÉFONO:</td>
                   <td><input type="text" name="telefono"  value="<%= u.getTelefono() %>" id="telefono" class="izquierda"></td>
               </tr>
               <tr>
                   <td class="fuente">*CONTRASEÑA:</td>
                   <td><input type="password" name="contrasena" id="contrasena" class="izquierda"></td>
               </tr>
               <tr>
                   <td class="fuente">*CONFIRMA CONTRASEÑA:</td>
                   <td><input type="password" name="confirma" id="confirma" class="izquierda"></td>
               </tr>
               <tr>
                   <td class="fuente" id="arriba">COMENTARIO A DESTACAR:</td>
                   <td><textarea name="comentario" id="comentario" cols="40" rows="10" class="izquierda"></textarea></td>
               </tr>
               <tr>
                   <td><input type="submit" value="Guardar cambios" id="registrarse"></td>
               </tr>
               
           </table>
           
       </form>
       
   </div>
   
   </div>
   </div>
   </section>
   
   <!-- FOOTER -->
       <footer id="footer">
        <div class="container">
            <div class="footer-top clearfix">

                <div class="row">
                    <div class="col-md-3 col-sm-3">
                        <div class="footer-logo animate fadeInLeft"><a href="index.html"><img src="imagenes/savethegreen/frutaVerdura.jpeg" style="width: 250px; height: 150px; border-radius: 5%;"></a></div>
                    </div>
                    <div class="textoFooter">
                        <p><span class="parrafoFinal">La vida saludable no es algo que pueda ser impuesto ni forzado. Esos pequeños pasos en auto conocimiento nos regalan una alimentación mejor, un cuerpo y mente más equilibrados y la satisfacción de estar conectado</span></p>
                    </div>
                </div>

                <div class="height-20"></div>

                <!-- INFORMACIÓN DE CONTACTO -->
                <div class="footer-aling">
                    <div class="footer-address-widget clearfix">
                        <ul>
                            <li><img src="imagenes/savethegreen/icono-telefono2.jfif" width="35px" height="35px" style="margin-right: 2%;"><strong>971 29 17 56</strong><a href="mailto:support@advisor.com">tope@savethegreen.com</a></li>
                            <li><img src="imagenes/savethegreen/icono-direccion2.jfif" width="20px" height="25px" style="margin-right: 2%;"><strong>Madrid</strong><span>C/ Julián Camarillo, Madrid</span></li>
                        </ul>
                    </div>
                    <div class="height-50"></div>

                    <!-- LINKS RÃPIDOS -->
                    <div class="col-md-6">
                        <div class="usefull-links-widget clearfix">
                            <h4>Links usados</h4>
                            <ul>
                                <li><a href="index.html">Inicio</a></li>
                                <li><a href="queEsTope.jsp">Sobre Nosotros</a></li>
                                <li><a href="">Servicios</a></li>
                                <li><a href="tienda.jsp">Tienda</a></li>
                                <li><a href="">Para su interés</a></li>
                                <li><a href="">Contacta</a></li>
                            </ul>

                        </div>
                    </div>

                    <!-- SUSCRIBIRSE -->
                    <div class="footer-right">
                        <div class="newsletter-widget">
                            <h4>Para saber más</h4>
                            <p>Pase a formar parte de nuestra newsletter y le enviaremos toda la información con las últimas novedades</p>
                            <div class="form">
                                <p class="subscribe_success" id="subscribe_success" style="display:none;"></p>
                                <p class="subscribe_error" id="subscribe_error" style="display:none;"></p>

                                <form name="subscribe_form" id="subscribe_form" method="post" action="#" onSubmit="return false">
                                    <input type="text" data-delay="300" placeholder="Nombre" name="subscribe_name" id="subscribe_name" onKeyPress="removeChecks();" class="input" >
                                    <input type="text" data-delay="300" placeholder="Correo electrónico" name="subscribe_email" id="subscribe_email" onKeyPress="removeChecks();" class="input" >
                                    <button class="btn btn-primary" name="Subscribe" type="submit" data-text="Suscribirse" onClick="validateSubscription();">Suscribirse</button>
                                </form>

                            </div>

                            <ul class="social">
                                <li class="animate bounceIn"><a href="http://www.facebook.com" class="facebook redondo" target="_blank"><img src="imagenes/savethegreen/icono_facebook.jfif" width="70px" height="70px"></a></li>
                                <li class="animate bounceIn" data-delay="100"><a href="http://www.twitter.com" class="twitter cuadrado" target="_blank"><img src="imagenes/savethegreen/icono-twitter.jfif"  width="60px" height="60px"></a></li>
                                <li class="animate bounceIn" data-delay="200"><a href="http://www.youtube.com" class="youtube redondo" target="_blank"><img src="imagenes/savethegreen/icono-youtube2.jfif" width="70px" height="70px"></a></li>
                                <li class="animate bounceIn" data-delay="300"><a href="http://www.linkedin.es" class="linkedin cuadrado" target="_blank"><img src="imagenes/savethegreen/icono-linkedin.jfif" width="60px" height="60px"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- DERECHOS -->
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6"><p>Coyright  © 2016 SaveTheGreen. Todos los derechos reservados.</p></div>
                    <div class="col-md-6 col-sm-6"><p class="text-center">Diseñado por <a href="#.">Proyecto Integrador</a></p></div>
                </div>
            </div>
        </div>
    </footer>
    <!--FIN FOOTER -->
    
</body>


</html>