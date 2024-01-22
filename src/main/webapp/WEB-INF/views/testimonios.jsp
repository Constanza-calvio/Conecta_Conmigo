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
<title>Testimonios</title>
<link rel="stylesheet" href="./css/testimonios.css" />
</head>
<body>
	<header>
	     <nav>
			<div class="logo">
				<a href="/html/home.html"> <img src="/img-testimony-partner/logoazul.png" alt="logo" />
				</a>
			</div>

			<ul class="nav-links">
				<li><a href="#" class="active">Inicio</a></li>
				<li><a href="#">Quienes Somos</a></li>
				<li><a href="#">Como Ayudar</a></li>
				<li><a href="#">Testimonios</a></li>
			</ul>
			<button id="profileButton" class="profile-button">
				<div class="profile">
					<img src="" alt="Perfil"> <span id="username">Nombre
						de Usuario</span>
				</div>

				<ul class="profile-menu" id="profileMenu">
					<li><a href="#" id="logoutButton">Cerrar Sesión</a></li>
					<li><a href="#" id="configButton">Configuración del Perfil</a></li>
				</ul>
			</button>
		</nav>
			<h1>Testimonios</h1>
	</header>
	
	<div class="content">
	
			<div class="wrapper">
				<c:forEach items="${testimonios}" var="testimonio">
				<div class="testimonio">

					<div class="texto">${testimonio.contenido}</div>
					<div class="info-usuario">
						<img src="${testimonio.user.urlFotoPerfil}" id="foto_perfil"
							alt="Foto de perfil" />
<%-- 							<span>${testimonio.user.nombre}</span> --%>
					</div>
				</div>
			    </c:forEach>
			</div>
	</div>
	<footer>
		<a href="/">#ConectaConmigo</a> 
		<a href="mailto: elcorreoquequieres@correo.com?Subject=Aquí%20el%20asunto%20del%20mail">conecta_conmigo@gmail.com</a>
	</footer>

</body>
</html>