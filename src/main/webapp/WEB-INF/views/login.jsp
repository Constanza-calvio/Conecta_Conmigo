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
    <title>LOGIN</title>
    <!-- YOUR OWN LOCAL CSS -->
    <link rel="stylesheet" type="text/css" href="./css/login.css">
</head>
<body>
<div>
<div class="logo">
        <img src="/img-login-y-registro/logo.png" alt="Imagen Descriptiva">
    </div>
    <h1>BIENVENIDO</h1>
</div>
		<div>
            <img class="banner" src="/img-login-y-registro/Group.png" alt="Decoracion">
            
        </div>

    <div class="container">
        <div class="form-container">
        <div class="form">
            <div class="nav-container">
                <nav>
                    <a href="/login">INICIAR SESIÓN</a> <a href="/registro">REGISTRATE</a>
                </nav>
            </div>
            <hr class="nav-divider">
            
            <form:form action="/loginup" method="post" modelAttribute="login">
                <form:label path="email" for="exampleInputEmail1" class="form-label email-label">
                        Correo electrónico
                    </form:label>
                    <form:errors path="email" cssClass="error-message" />
                    <form:input path="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />

                    <form:label path="password" for="exampleInputPassword1" class="form-label password-label">
                        Contraseña
                    </form:label>
                    <form:errors path="password" cssClass="error-message" />
                    <form:input path="password" type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
            
            

				
				<button type="submit">INICIAR SESIÓN</button>
				<div class="olvidepassword">
    			<a  href="#">¿Olvidaste tu contraseña?</a>
				</div>
                
    </div>
    <div class="image-container">
        <img src="/img-login-y-registro/manos.png" alt="Decoracion">
    </div>
</form:form>
        </div>
        
    </div>
    <div>
    <img src="/img-login-y-registro/Modo_de_aislamiento.png" alt="Decoracion" class="background-img">
    <img src="/img-login-y-registro/Vector-1.png" alt="Decoracion" class="background-img2">
    </div>
    
</body>
</html>
