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
<link rel="stylesheet" href="./css/comoAyudar.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
	<div class="main-container">
    <header id="top-content">
                    <div class="header">
                        <a href="/inicio">
                    <img id="logo" src="/img-comoAyudar/Vectorlogo azul fofo.png" alt="Logo de Mi Sitio Web">
                </a>
                    </div>
                    <!--Barra Navegacion principal-->
                    <div id="nav-link">
                <nav>
                    <ul id="nav-links">
                        <li ><a href="/inicio">INICIO</a></li>
                        <li><a href="/quienesSomos">QUIENES SOMOS</a></li>
                        <li class="active"><a href="/comoAyudar">COMO AYUDAR</a></li>
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
      


      <div id="comoAyudar">          
      <h2>¿Cómo puedes ayudar?</h2>
      </div>
      <div class="main-container">
      <section class="main-container">
        <div class="container">
          <div class="blue-background">
          

          
            <div class="rectangles">
            <div class="rectangle">
              <div class="green-rectangle"><a href=""><span>Donar</span></div>
              <p class="rectangle-text">Tu contribución financiera es una inversión directa en la lucha contra el hambre y el desperdicio de alimentos. Cada donación, independientemente de su tamaño, tiene un impacto significativo en la vida de aquellos que más lo necesitan.</p>
              <img src="/Img-comoAyudar/frascoconmonedas.png" alt="frasco" class="rectangle-image"> </a>
           </div>
      
            <div class="rectangle">
              <div class="green-rectangle"><a href=""><span>Voluntariado</span></a></div>
              <p class="rectangle-text">Únete a nuestro equipo de voluntarios y sé parte del cambio de una manera práctica y significativa. Ofrecemos oportunidades para ayudar a empacar cajas de mercadería o brindar servicios de transporte, como el uso de camiones para recoger y entregar donaciones.</p>
              <img src="/Img-comoAyudar/Nina.png" alt="niña" class="rectangle-image-mujer">
            </div>
      
            <div class="rectangle">
              <div class="green-rectangle"><a href=""><span>Hazte Socio</span></a></div>
              <p class="rectangle-text">Invitamos a negocios de todo tipo, desde supermercados y verdulerías hasta restaurantes, a unirse como socios en nuestra misión. Al convertirse en socios, no solo están apoyando financieramente, sino que también están siendo parte activa del cambio, contribuyendo con sus recursos y alcance para hacer la diferencia.</p>
              <img src="/Img-comoAyudar/Manos.png" alt="manos" class="rectangle-image">
            </div>
            </div>
            
          </div>
        </div>
      </section>


		<div class="links">
		<div class="additional-ways-container">
      <a href="/comoAyudar">
        <h2>Otras maneras para ayudar</h2>
        </a>
        <!-- Contenido nuevo debajo del título -->
        <div class="additional-content">
          <a href="#">
          <img src="/Img-comoAyudar/Persona.png" alt="Descripción de la imagen" class="additional-image">
          </a>
          <a href="#">
          <div class="additional-info">
            <p>
              Puedes unirte al programa  de voluntariado que se centran en la entrega de alimentos a personas necesitadas. La cual se centra en recoger alimentos donados y entregarlos directamente a hogares o comunidades locales.
              
              </p>
          </div>
          </a>
        </div>
      </div>
    
      <div class="additional-ways-container-al-revez">
          <div class="additional-content">
          <a href="#">
            <div class="additional-info-redes">
              <p>Compartir en redes sociales es una forma poderosa y efectiva de difundir conciencia y movilizar el apoyo para causas importantes. 
              </p>
            </div>
            </a>
            <a href="#">
            <img src="/Img-comoAyudar/ManoCelular.png" alt="Descripción de la imagen" class="additional-image-redes"> 
            </a>
            </div>
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