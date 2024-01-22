<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	 <h1>¡Cuentanos tu experiencia con nosotros!</h1>
	 
	 <h3> Tu opinion nos importa</h3>
	 
	 <div class= "form">
	 <form:form method="" modelAttribute="">
	  <div>
            <form:label path="message">Tu Mensaje aqui: </form:label>
            <form:textarea path="message" rows="10" cols="50"/>
        </div>
        <input type="Enviar Mensaje" value="Submit"/>
    </form:form>
	
	</div>
	
	
	
	
	
	
	
	<footer>
		<a href="/">#ConectaConmigo</a> 
		<a href="mailto: elcorreoquequieres@correo.com?Subject=Aquí%20el%20asunto%20del%20mail">conecta_conmigo@gmail.com</a>
	</footer>

</body>
</html>