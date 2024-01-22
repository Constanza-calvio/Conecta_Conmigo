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
<title>Mensaje</title>
<link rel="stylesheet" href="./css/partners.css" />
</head>
<body>
	<header>
		<!-- NAV -->
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
	</header>
	<h1>Nuestros partners</h1>
	<div class="logo">
		<img class="logo-1" src="img-testimony-partner/uni.png"/>
		<img class="logo-2" src="img-testimony-partner/lider.png" /> 
		<img class="logo-3" src="img-testimony-partner/lider.png" /> 
		<img class="logo-4" src="img-testimony-partner/uni.png"/>
		<img class="logo-5" src="img-testimony-partner/lider.png" />
		<img class="logo-5" src="img-testimony-partner/uni.png"/>
		<img class="logo-5" src="img-testimony-partner/lider.png"/>
		<img class="logo-5" src="img-testimony-partner/uni.png" />
	</div>
	
	<p>"Extiende tu mano, Fortalece la fundacion"</p>
	
	<div class="frame">
		<img class="img-1" src="img-testimony-partner/image_9.png"/>
		<img class="img-2" src="img-testimony-partnerjason-goodman-oalh2mojuuk-unsplash-1.png" /> 
		<img class="img-3" src="img-testimony-partner/joel-muniz-berjjl-ksja-unsplash-1.png" /> 
		<img class="img-4" src="img-testimony-partner/joel-muniz-a4ax1apccfa-unsplash-1.png" />
		<img class="img-5" src="img-testimony-partner/nico-smit-nfoerquvzrs-unsplash-1.png" />
	</div>
	<button><span>Back</span></button>
	<h4>Unete a nuestra alianza</h4>

</body>
</html>