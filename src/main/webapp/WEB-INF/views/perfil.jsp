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
<title>PERFIL</title>
<link rel="stylesheet" href="./css/perfil.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
	<header id="top-content">
                    <div class="header">
                        <a href="/inicio">
                    <img id="logo" src="/img-perfil-y-editar/Vectorlogo azul fofo.png" alt="Logo de Mi Sitio Web">
                </a>
                    </div>
                    <!--Barra Navegacion principal-->
                    <div id="nav-link">
                <nav>
                    <ul id="nav-links">
                        <li><a href="/inicio">INICIO</a></li>
                        <li><a href="/quienesSomos">QUIENES SOMOS</a></li>
                        <li><a href="#">COMO AYUDAR</a></li>
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
<div class="container">
	
	
		<div class="form-container">
		<div class="profile-info">
		<h1>MI PERFIL</h1>
            <!-- Mover la imagen de perfil y el botón de cambio aquí -->
            <div>
    <!-- Agregar la lógica para obtener la foto del usuario -->
    <img src="${pageContext.request.contextPath}${perfil.profileImage}" alt="Foto de perfil" class="profile-image">
    <div class="change-photo">
        <a href="${pageContext.request.contextPath}/perfil/cambiarFoto">Cambiar</a>
    </div>
</div>
		</div>
		<div id="overlay-container" style="display: none;">
    <div id="overlay-content">
        <form action="/perfil/guardarNuevaFoto" method="post" enctype="multipart/form-data">
            <input type="file" name="profileImage" accept="image/*" required>
            <button type="submit">Subir Foto</button>
        </form>
        <button onclick="cerrarOverlay()">Cancelar</button>
    </div>
</div>
		
		
		<div class="form">
        <hr class="nav-divider">
        <form:form action="/perfil" method="post" modelAttribute="perfil">

            <form:label path="userName" class="form-label username-label">Nombres</form:label>

<div class="perfil_info">
        <c:out value="${sessionScope.userName}" />
    </div>



    <form:label path="lastNames" class="form-label lastname-label">Apellidos</form:label>
    <div class="perfil_info">
        <c:out value="${sessionScope.lastNames}" />
    </div>



    <form:label path="email" class="form-label email-label">Correo electrónico</form:label>
    <div class="perfil_info">
        <c:out value="${sessionScope.email}" />
    </div>
    
    <form:label path="quienSoy" class="form-label">Quien Soy</form:label>
    <div class="perfil_info">
        <c:out value="${sessionScope.quienSoy}" />
    </div>

<div class="buttonEdit">
				<button type="submit">EDITAR PERFIL</button>
			</div>
        </form:form>
    </div>
    
    
		
		

			
		</div>
		
		<img src="/img-perfil-y-editar/Vector.png" alt="Decoracion" class="background-image">
   <img src="/img-perfil-y-editar/Vector.png" alt="Decoracion" class="background-image1">
    <img src="/img-perfil-y-editar/Vector.png" alt="Decoracion" class="background-image2">
     <img src="/img-perfil-y-editar/Group-2.png" alt="Decoracion" class="background-image3">
    <img src="/img-perfil-y-editar/Grouplineasamarillas.png" alt="Decoracion" class="background-image4">
		<div class="slogan">
		   <h3>TRANSFORMANDO</h3>
		   <div class="desafio">
		   <h3>DESAFÍOS</h3>
		   </div>
		   
		   <img src="/img-perfil-y-editar/Modo_de_aislamiento-2.png" alt="Decoracion" class="Decoracion">
		   
		   <div class="sonrisa">
		      <h3>EN SONRISAS</h3>
		   </div>
		</div>
		
	</div>

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
	<script src="${pageContext.request.contextPath}/JS/inicio.js"></script>
</body>
</html>