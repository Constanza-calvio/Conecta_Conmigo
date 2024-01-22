<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Libreria JSTL -->
<!-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>-->
<!-- Libreria PARA FORMULARIOS - DATA BINDING -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DONAR</title>
<link rel="stylesheet" href="./css/donar.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
        <!--Contenedor Principal-->
        <div class="main-container">
            <!--Contenedor del encabezado y barra de navegacion-->
                <header id="top-content">
                    <div class="header">
                        <a href="/inicio">
                    <img id="logo" src="/img-donar/logo.png" alt="Logo de Mi Sitio Web">
                </a>
                    </div>
                    <!--Barra Navegacion principal-->
                    <div id="nav-link">
                <nav>
                    <ul id="nav-links">
                        <li><a href="/inicio">INICIO</a></li>
                        <li><a href="/quienesSomos">QUIENES SOMOS</a></li>
                        <li class="active"><a href="#">COMO AYUDAR</a></li>
                        <li><a href="#">SOCIOS</a></li>
                        <li><a href="#">TESTIMONIOS</a></li>
                    </ul>
                </nav>
            </div>
                    <div>
    <button id="profileButton" class="button" onclick="console.log('Botón presionado'); toggleProfileMenu();">
    <c:choose>
        <c:when test="${not empty sessionScope.userName}">
            <span>${sessionScope.userName}</span>
            <img src="${pageContext.request.contextPath}${perfil.profileImage}" alt="Foto de perfil" style="width: 50px; height: 50px; border-radius: 50%;">
        </c:when>
        <c:otherwise>
            Nombre de usuario
        </c:otherwise>
    </c:choose>
</button>
    <div id="profileMenu" style="display: none;">
    <a href="/perfil">Configuración de Perfil</a>
    <a href="/cerrarSesion">Cerrar Sesión</a>
</div>

</div>
                </header>
        <main>
            <div id="main">
                <section id="donar">
                    <h1>DONAR</h1>
                    <p>Sostenibilidad de los proyectos de la fundación</p>
                </section>
            <section id="sec-superior">
                
                    <div id="byl">
                            <img class="banner" src="/img-donar/Vectordonacion.png" alt="banner">
                            <a href="/inicio">
                            <img id="logo2" src="/img-donar/logo.png" alt="Logo de Mi Sitio Web">
                    		</a>
                    </div>
                    

                    <div id="superior">
                        <div class="tarjet">
                            <div class="conecta_conmigo">
                                <h2>Conecta Conmigo</h2>
                                <img src="/img-donar/unsplash_NFoerQuvzrsdonacion.png" alt="icon">
                                
                            </div>
                            <div class="montos">
                                <button>$ 5.000</button>
                                <button>$ 10.000</button>
                                <button>$ 15.000</button>
                                <button>$ 20.000</button>
                                
                            </div>
                            <div class="otromonto">
                                <button>Otro Monto</button>
                            </div>
                            <form  action="">
                                <div class="nombresyapellido">
                            <div>
                                <label for="nombres">Nombre/s*</label>
                                <input type="text" id="nombres" name="nombres" required>
                            </div>
                            <div>
                                <label for="apellidos">Apellido/s*</label>
                                <input type="text" id="apellidos" name="apellidos" required>
                            </div>
                            </div>
                            
                            <div class="correo">
                                <div>
                                    <label for="email">Dirección de correo electrónico*</label>
                                    <input type="email" id="email" name="email" required>
                                </div>
                                
                            </div>
                            
                            <div class="tel_tipo_nro">
                                <div>
                                    <label for="phone">Teléfono/Celular</label>
                                <input type="tel" id="phone" name="phone" required>
                                </div>
                                <div>
                                    <label for="documentType">Tipo de documento*</label>
                                <select id="documentType" name="documentType" required>
                                    <option value="RUT">RUT/DNI</option>
                                    <option value="Pasaporte">Pasaporte</option>
                                    <option value="Licencia">Licencia de Conducir</option>
                                </select>
                                </div>
                                <div>
                                    <label for="documentNumber">Nro. de Documento*</label>
                                <input type="text" id="documentNumber" name="documentNumber" required>
                                </div>
                                
                            </div>
                            
                            <div class="direccionypostal">
                                <div class="dire">
                                    <label for="address">Dirección*</label>
                                <input type="text" id="address" name="address" required>
                                </div>
                                <div>
                                    <label for="postalCode">Código Postal*</label>
                                <input type="text" id="postalCode" name="postalCode" required>
                                </div>
                                
                            </div>
                            
                            <div class="local_provi_nacio">
                                <div>
                                    <label for="city">Localidad*</label>
                                <input type="text" id="city" name="city" required>
                                </div>
                                <div>
                                    <label for="province">Provincia*</label>
                                <input type="text" id="province" name="province" required>
                                </div>
                                <div>
                                    <label for="nationality">Nacionalidad*</label>
                                <input type="text" id="nationality" name="nationality" required>
                                </div>
                                
                            </div>
                            
                            <div class="checkbox-group">
                                <div class="checkbox-wrapper">
                                    <input id="receiveCertificate0" name="receiveCertificate" type="checkbox">
                                    <label class="terms-label" for="receiveCertificate0">
                                      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 200 200" class="checkbox-svg">
                                        <mask fill="white" id="path-1-inside-1_476_5-37">
                                          <rect height="200" width="200"></rect>
                                        </mask>
                                        <rect mask="url(#path-1-inside-1_476_5-37)" stroke-width="40" class="receiveCertificate1" height="200" width="200"></rect>
                                        <path stroke-width="15" d="M52 111.018L76.9867 136L149 64" class="receiveCertificate2"></path>
                                      </svg>
                                      <span class="label-text">Deseo recibir el Certificado de Donación.</span>
                                    </label>
                                  
                                    <input id="acceptTerms0" name="acceptTerms" type="checkbox">
                                    <label class="terms-label" for="acceptTerms0">
                                      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 200 200" class="checkbox-svg">
                                        <mask fill="white" id="path-1-inside-1_476_5-37">
                                          <rect height="200" width="200"></rect>
                                        </mask>
                                        <rect mask="url(#path-1-inside-1_476_5-37)" stroke-width="40" class="acceptTerms1" height="200" width="200"></rect>
                                        <path stroke-width="15" d="M52 111.018L76.9867 136L149 64" class="acceptTerms2"></path>
                                      </svg>
                                      <span class="label-text">Acepto los <a href="#">Términos</a> y <a href="#">Condiciones</a>.</span>
                                    </label>
                                  
                                    <input id="receiveInfo0" name="receiveInfo" type="checkbox">
                                    <label class="terms-label" for="receiveInfo0">
                                      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 200 200" class="checkbox-svg">
                                        <mask fill="white" id="path-1-inside-1_476_5-37">
                                          <rect height="200" width="200"></rect>
                                        </mask>
                                        <rect mask="url(#path-1-inside-1_476_5-37)" stroke-width="40" class="receiveInfo1" height="200" width="200"></rect>
                                        <path stroke-width="15" d="M52 111.018L76.9867 136L149 64" class="receiveInfo2"></path>
                                      </svg>
                                      <span class="label-text">Deseo recibir información sobre Conecta Conmigo.</span>
                                    </label>
                                  </div>
                            </div>
                            
                            <div class="enviardonacion">
                                <button type="submit">Donar</button>
                            </div>
                            </form>
                            
                        </div>
                    </div>
                </section>
                
                <img src="/img-donar/Blob 3hastesocios.png" alt="Decoracion" class="background-img">
                <img src="/img-donar/decoracion 1donacion.png" alt="Decoracion" class="background-img2">
                <div id="decoration-container">
                    <img class="decoration1" src="/img-donar/Grouphastesocios.png" alt="Decoracion">
                </div>
                
            </div>
                
        
        </main>
        
        
        <footer>
        <div class="footer-container">
          <div class="footer-section">
            <span>#conectaconmigo</span>
          </div>
          <div class="footer-section">
            <a href="mailto:conecta_conmigo@gmail.com">conecta_conmigo@gmail.com</a>
          </div>
          <div class="footer-section icons">
            <!-- Los iconos pueden ser de una librería como Font Awesome o imágenes -->
            <a href="tu-enlace-facebook" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
            <a href="tu-enlace-twitter" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
            <a href="tu-enlace-instagram" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          </div>
        </div>
      </footer>
        
        </div>
    
<script src="${pageContext.request.contextPath}/JS/inicio.js"></script>
</body>
</html>