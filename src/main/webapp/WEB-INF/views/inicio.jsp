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
<title>INICIO</title>
<link rel="stylesheet" href="./css/inicioyquienesSomos.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
	<div class="main-container">
    <header id="top-content">
                    <div class="header">
                        <a href="/inicio">
                    <img id="logo" src="/img-inicio/Vectorlogo azul fofo.png" alt="Logo de Mi Sitio Web">
                </a>
                    </div>
                    <!--Barra Navegacion principal-->
                    <div id="nav-link">
                <nav>
                    <ul id="nav-links">
                        <li class="active"><a href="/inicio">INICIO</a></li>
                        <li><a href="/quienesSomos">QUIENES SOMOS</a></li>
                        <li><a href="/comoAyudar">COMO AYUDAR</a></li>
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
    <div class="setting">
    <a href="/perfil" class="button">
  <svg xmlns="http://www.w3.org/2000/svg" width="20" viewBox="0 0 20 20" height="20" fill="none" class="svg-icon">
  <g stroke="#5d41de">
    <circle r="2.5" cy="10" cx="10"></circle>
    <path d="m8.39079 2.80235c.53842-1.51424 2.67991-1.51424 3.21831-.00001.3392.95358 1.4284 1.40477 2.3425.97027 1.4514-.68995 2.9657.82427 2.2758 2.27575-.4345.91407.0166 2.00334.9702 2.34248 1.5143.53842 1.5143 2.67996 0 3.21836-.9536.3391-1.4047 1.4284-.9702 2.3425.6899 1.4514-.8244 2.9656-2.2758 2.2757-.9141-.4345-2.0033.0167-2.3425.9703-.5384 1.5142-2.67989 1.5142-3.21831 0-.33914-.9536-1.4284-1.4048-2.34247-.9703-1.45148.6899-2.96571-.8243-2.27575-2.2757.43449-.9141-.01669-2.0034-.97028-2.3425-1.51422-.5384-1.51422-2.67994.00001-3.21836.95358-.33914 1.40476-1.42841.97027-2.34248-.68996-1.45148.82427-2.9657 2.27575-2.27575.91407.4345 2.00333-.01669 2.34247-.97026z" clip-rule="evenodd"></path>
  </g>
</svg>
  <span class="lable">Configuración del Perfil</span>
</a>

    </div>
    <div class="Logout">
    <a href="/cerrarSesion" class="Btn">
  
  <svg viewBox="0 0 512 512"><path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"></path></svg>
  
  <span class="text">Logout</span>
</a>
</div>
</div>

</div>
                </header>
      


      
      <div class="hero-section">
        <img src="/img-inicio/Frame.png" alt="Imagen Descriptiva" class="hero-image">
        <div class="hero-text">
  <p>"Conexiones que <span>inspiran</span>, acciones que <span>transforman</span>"</p>
</div>

      </div>
      <div class="rectangles-container">
        
        <!-- Primer rectángulo -->
        <div class="rectangle">
    <img src="/img-inicio/cont1.png" alt="APORTA TU GRANITO" class="rectangle-image">
    <p class="rectangle-text">APORTA TU GRANITO</p>
    <button class="rectangle-button" onclick="window.location.href='/donar'">AQUÍ</button>
</div>
      
        <!-- Segundo rectángulo -->
        <div class="rectangle2">
          <img src="/img-inicio/cont2.png" alt="DEJA TU TESTIMONIO" class="rectangle-image">
          <p class="rectangle-text1">DEJANOS TU TESTIMONIO</p>
          <button class="rectangle-button">AQUÍ</button>
        </div>
      </div>




      <!-- FONDO y TEXTO-->
     

      <div class="impact-section">
      <img src="/img-inicio/Vectorazul.png" alt="Fondo Azul" class="background-image">
      <img src="/img-inicio/fondoNaranja.png" alt="Fondo Naranja" class="overlay-image">   
        <div class="impact-text">
          <h2>Nuestro Impacto</h2>
          <div class="impact-textp">
          <p>En un mundo con recursos naturales limitados (suelo, agua, energía, fertilizantes, etc.) y con millones de personas con problemas de hambre y malnutrición, nace <a href="/quienesSomos" style="text-decoration: none;"><spam>Conecta Conmigo</spam></a>, como una solución para reducir las pérdidas y el desperdicio de alimentos y apoyar a millones de personas vulnerables que se encuentran en Chile.</p>        
          </div>
          </div>
      </div>



      <!-- 3 RECTANGULOS  -->
      

      <div class="stats-section">
        <!-- Primer rectángulo -->
        <div class="stat">
          <h3>+100</h3>
          <p>Organizaciones y gobiernos confiaron en nosotros para enfrentar sus desafíos</p>
          <div class="highlight-rectangle"></div>
        </div>
      
        <!-- Segundo rectángulo -->
        <div class="stat1">
          <h3>+230</h3>
          <p>Proyectos desarrollados</p>
          <div class="highlight-rectangle"></div>
        </div>
      
        <!-- Tercer rectángulo -->
        <div class="stat2">
          <h3>+3000</h3>
          <p>Personas impactadas con nuestro trabajo</p>
          <div class="highlight-rectangle"></div>
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