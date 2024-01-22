<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- LIBRERIA JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--LIBRERIA PARA FORMULARIOS --  DATA BINDING -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page isErrorPage="true"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRARSE</title>

<!-- YOUR OWN LOCAL CSS -->
<link rel="stylesheet" type="text/css" href="./css/registro.css">

</head>
<body>


	<div class="container">
	
	
		<div class="form-container">
		
		<h1>BIENVENIDO</h1>
		<div class="form">
			<div class="nav-container">
				<nav>
					<a href="/login">INICIAR SESIÓN</a> <a href="/registro">REGISTRATE</a>
				</nav>
			</div>
			<hr class="nav-divider">
			<form:form action="/registrarse" method="post"
				modelAttribute="registro">

				<form:label path="userName" for="exampleInputEmail1"
					class="form-label username-label">
						Nombres* </form:label>
				<form:errors path="userName" cssClass="error-message" />
				<form:input path="userName" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" />


				<form:label path="lastNames" for="exampleInputEmail1"
					class="form-label lastname-label">
						Apellidos* </form:label>
				<form:errors path="lastNames" cssClass="error-message" />
				<form:input path="lastNames" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" />


				<form:label path="email" for="exampleInputEmail1"
					class="form-label email-label">
						Correo electrónico* </form:label>
				<form:errors path="email" cssClass="error-message" />
				<form:input path="email" type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" />


				<form:label path="password" for="exampleInputPassword1"
					class="form-label password-label">
						Contraseña* </form:label>
				<form:errors path="password" cssClass="error-message" />
				<form:input path="password" type="password" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" />

				<form:label path="confirmPassword" for="exampleInputPassword1"
					class="form-label confirmPassword-label">
						Confirmar Contraseña* </form:label>
				<form:errors path="confirmPassword" cssClass="error-message" />
				<form:input path="confirmPassword" type="password"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" />
                <form:label path="quienSoy" class="form-label">Quien Soy*</form:label>
                <form:select path="quienSoy">
                    <form:option value="personaNatural">Persona Natural</form:option>
                    <form:option value="empresa">Empresa</form:option>
                    <form:option value="fundacion">Fundacion</form:option>
                </form:select>
            	

			<div class="buttonre">
				<button type="submit">REGISTRATE</button>
			</div>
				



				<c:out value="${gracias}"></c:out>

			</form:form>
		</div>
		

			
		</div>
	</div>
	<div>
    <img src="/img-login-y-registro/Vector-1.png" alt="Decoracion" class="background-img">
    <img src="/img-login-y-registro/Vectorregistro-1.png" alt="Decoracion" class="background-img1">
    <img src="/img-login-y-registro/Group-1.png" alt="Decoracion" class="background-img2">
    <img src="/img-login-y-registro/Groupregistro.png" alt="Decoracion" class="background-img3">
    <img src="/img-login-y-registro/Vectorregistro-2.png" alt="Decoracion" class="background-img4">
    <img src="/img-login-y-registro/Grouplineasamarillas.png" alt="Decoracion" class="background-img5">
    </div>
</body>
</html>