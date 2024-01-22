package com.dojo.conectaConmigo.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dojo.conectaConmigo.models.Login;
import com.dojo.conectaConmigo.models.Perfil;
import com.dojo.conectaConmigo.models.TestimonyModel;
import com.dojo.conectaConmigo.models.User;
import com.dojo.conectaConmigo.services.PerfilService;
import com.dojo.conectaConmigo.services.TestimonioService;
import com.dojo.conectaConmigo.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class HomeController {
	
	// INYECCION DE DEPENDECIAS CON SERVICIO
		private final UserService userService;
		private final TestimonioService tService;
		private final PerfilService perfilService;
		
		public HomeController(UserService userService,TestimonioService tService, PerfilService perfilService) {
			this.userService = userService;
			this.tService = tService;
			this.perfilService = perfilService;
		}
		
		// SETEAR PARA LOGIN Y REGISTRO
		@GetMapping("/")
		public String home(Model modelo) {
			modelo.addAttribute("registro", new User());
			modelo.addAttribute("login", new Login());
			return "registro";
		}
		
		@GetMapping("/registro") // LA RUTA DE MI LOCALHOST
		public String index(Model modelo) {
			modelo.addAttribute("registro", new User());
			return "registro";
		}

		@PostMapping("/registrarse") // REGISTRO
		public String registro(@Valid @ModelAttribute("registro") User nuevoUsuario, BindingResult resultado, Model modelo,
				HttpSession sesion) { // COOKIE

			if (resultado.hasErrors()) {
				
				return "registro";
			}
			// IMPORTANTE LLAMAR AL MODELO PARA REGISTRAR EN EL SERVICIO
			// AQUI ESTOY CONFIRMANDO INFORMACION POR ENDE NO TENGO QUE RETORNAR NADA
			User registrarUsuario = userService.registrarUsuario(nuevoUsuario, resultado);

			if (registrarUsuario != null) {
				modelo.addAttribute("login", new Login());
				modelo.addAttribute("registro", new User());
				// MENSAJE PARA AVISAR QUE FUE UN REGISTRO EXITOSO, COMO YA USAMOS MODEL PARA
				// DEFINIR OTRAS LLAVES, SOLO DEBO UTILIZAR EL METODO DENUEVO.( NO ES NECESARIO
				// CREAR NADA EN SERVICIO, SOLO EN EL JSP PARAN QUE SALGA EL MENSAJE)
				modelo.addAttribute("gracias", "Gracias por registrarte, ¡Ahora ya puedes iniciar sesion!");
				// PARA REGISTRAR UN USUARIO NO ES NECESRIO DIRIGIR A DASHBOARD, SOLO ES PARA EL
				// LOGIN
				return "registro";

			} else {
				modelo.addAttribute("login", new Login());
				return "registro";
			}
		}
		
		@GetMapping("/login") // LA RUTA DE MI LOCALHOST
		public String inicio(Model modelo) {
			modelo.addAttribute("login", new Login());
			return "login";
		}
		
		

		@PostMapping("/loginup")
		public String login(@Valid @ModelAttribute("login") Login loginUser, BindingResult resultado, Model modelo, HttpSession sesion) {
		    if (resultado.hasErrors()) {
		        return "login";
		    }

		    if (userService.autenticacionUser(loginUser.getEmail(), loginUser.getPassword(), resultado)) {
		        User usuarioLog = userService.encontrarPorEmail(loginUser.getEmail());
		        sesion.setAttribute("userID", usuarioLog.getId());
		        sesion.setAttribute("userName", usuarioLog.getUserName());
		        sesion.setAttribute("lastNames", usuarioLog.getLastNames());
		        sesion.setAttribute("email", usuarioLog.getEmail());
		        sesion.setAttribute("quienSoy", usuarioLog.getQuienSoy());

		        return "redirect:/inicio";
		    } else {
		        modelo.addAttribute("registro", new User());
		        return "login";
		    }
		}

		@GetMapping("/cerrarSesion")
		public String cerrarSesion(HttpSession sesion) {
		    // Eliminar la información de la sesión al cerrar sesión
		    sesion.removeAttribute("userID");
		    sesion.removeAttribute("userName");
		    return "redirect:/";
		}
		
		@GetMapping("/inicio")
		public String mostrarInicio(Model model, HttpSession sesion) {
		    // Obtén los datos del perfil desde la sesión o desde tu servicio
		    // Puedes agregar directamente los atributos al modelo
		    

		    // Obtén el ID del usuario desde la sesión
		    Long userId = (Long) sesion.getAttribute("userID");

		    // Pasa el ID del usuario al método obtenerPerfil
		    Perfil perfil = perfilService.obtenerPerfil(userId);

		    perfil.setUserName((String) sesion.getAttribute("userName"));
		    perfil.setLastNames((String) sesion.getAttribute("lastNames"));
		    perfil.setEmail((String) sesion.getAttribute("email"));
		    perfil.setQuienSoy((String) sesion.getAttribute("quienSoy"));

		    // Agregar lógica para obtener la URL de la foto de perfil
		    // Si tienes una propiedad userPhoto en la sesión, úsala
		    String userPhoto = (String) sesion.getAttribute("userPhoto");

		    // Si no hay una foto de perfil en la sesión, establece una por defecto
		    if (userPhoto == null || userPhoto.isEmpty()) {
		        userPhoto = "/img-perfil-y-editar/default-profile-photo.png";
		    }

		    // Establecer la URL de la foto de perfil en el objeto perfil
		    perfil.setProfileImage(userPhoto);

		    // Agrega el perfil al modelo
		    model.addAttribute("perfil", perfil);

		    
		    return "inicio";
		}
		
		@GetMapping("/quienesSomos")
		public String redirectToQuienesSomos(Model model, HttpSession sesion) {
		    // Obtén los datos del perfil desde la sesión o desde tu servicio
		    Long userId = (Long) sesion.getAttribute("userID");

		    // Pasa el ID del usuario al método obtenerPerfil
		    Perfil perfil = perfilService.obtenerPerfil(userId);

		    // Establecer una imagen predeterminada si no hay una en la sesión
		    String userPhoto = (String) sesion.getAttribute("userPhoto");
		    if (userPhoto == null || userPhoto.isEmpty()) {
		        userPhoto = "/img-perfil-y-editar/default-profile-photo.png";
		    }

		    // Establecer la URL de la foto de perfil en el objeto perfil
		    perfil.setProfileImage(userPhoto);

		    // Agrega el perfil al modelo
		    model.addAttribute("perfil", perfil);

		    // Devuelve el nombre de la vista 
		    return "quienesSomos";
		}
		
		@GetMapping("/comoAyudar")
		public String redirectToComoAyudar(Model model, HttpSession sesion) {
		    // Obtén los datos del perfil desde la sesión o desde tu servicio
		    Long userId = (Long) sesion.getAttribute("userID");

		    // Pasa el ID del usuario al método obtenerPerfil
		    Perfil perfil = perfilService.obtenerPerfil(userId);

		    // Establecer una imagen predeterminada si no hay una en la sesión
		    String userPhoto = (String) sesion.getAttribute("userPhoto");
		    if (userPhoto == null || userPhoto.isEmpty()) {
		        userPhoto = "/img-perfil-y-editar/default-profile-photo.png";
		    }

		    // Establecer la URL de la foto de perfil en el objeto perfil
		    perfil.setProfileImage(userPhoto);

		    // Agrega el perfil al modelo
		    model.addAttribute("perfil", perfil);

		    // Devuelve el nombre de la vista 
		    return "comoAyudar";
		}

		
		@GetMapping("/donar")
		public String redirectToDonar(Model model, HttpSession sesion) {
		    // Obtén los datos del perfil desde la sesión o desde tu servicio
		    Long userId = (Long) sesion.getAttribute("userID");

		    // Pasa el ID del usuario al método obtenerPerfil
		    Perfil perfil = perfilService.obtenerPerfil(userId);

		    // Establecer una imagen predeterminada si no hay una en la sesión
		    String userPhoto = (String) sesion.getAttribute("userPhoto");
		    if (userPhoto == null || userPhoto.isEmpty()) {
		        userPhoto = "/img-perfil-y-editar/default-profile-photo.png";
		    }

		    // Establecer la URL de la foto de perfil en el objeto perfil
		    perfil.setProfileImage(userPhoto);

		    // Agrega el perfil al modelo
		    model.addAttribute("perfil", perfil);
		    // Devuelve el nombre de la vista
		    return "donar";
		}


	
		

		
		@GetMapping("/perfil")
		public String mostrarFormulario(Model model, HttpSession sesion) {
		    // Obtén los datos del perfil desde la sesión o desde tu servicio
		    // Puedes agregar directamente los atributos al modelo

		    // Obtén el ID del usuario desde la sesión
		    Long userId = (Long) sesion.getAttribute("userID");

		    // Pasa el ID del usuario al método obtenerPerfil
		    Perfil perfil = perfilService.obtenerPerfil(userId);

		    perfil.setUserName((String) sesion.getAttribute("userName"));
		    perfil.setLastNames((String) sesion.getAttribute("lastNames"));
		    perfil.setEmail((String) sesion.getAttribute("email"));
		    perfil.setQuienSoy((String) sesion.getAttribute("quienSoy"));

		    String userPhoto = (String) sesion.getAttribute("userPhoto");

		    // Si no hay una foto de perfil en la sesión, establece una por defecto
		    if (userPhoto == null || userPhoto.isEmpty()) {
		        userPhoto = "/img-perfil-y-editar/default-profile-photo.png";
		    }
		    
		    perfil.setProfileImage(userPhoto);

		    model.addAttribute("perfil", perfil);

		    // Devuelve el nombre de la vista
		    return "perfil";
		}
		
		@GetMapping("/perfil/cambiarFoto")
		public String mostrarFormularioCambioFoto() {
		    return "formularioCambioFoto";
		}

		@PostMapping("/perfil/guardarNuevaFoto")
		public String guardarNuevaFoto(@RequestPart("profileImage") MultipartFile profileImage,
		                               RedirectAttributes redirectAttributes,
		                               HttpSession session) {
		    Long userId = (Long) session.getAttribute("userID");

		    // Especifica la ruta absoluta donde deseas almacenar las imágenes
		    String storagePath = "/ruta/absoluta/para/almacenar/las/imagenes";  // Cambia esto

		    // Lógica para generar un nombre único de archivo 
		    String fileName = userId + "_profile_image.jpg";  // Cambiar la extensión según el formato de tu imagen

		    try {
		        // Copiar la imagen al destino deseado
		        Path destination = Paths.get(storagePath, fileName);
		        Files.copy(profileImage.getInputStream(), destination, StandardCopyOption.REPLACE_EXISTING);

		        // Actualizar la URL de la foto de perfil en la base de datos
		        User usuario = userService.encontrarPorId(userId);
		        usuario.setPhotoUrl("/img-usuarios/" + fileName);
		        userService.guardarUsuario(usuario);

		        redirectAttributes.addFlashAttribute("mensaje", "Foto de perfil actualizada con éxito.");
		    } catch (IOException e) {
		        // Manejo de errores al guardar la foto
		        redirectAttributes.addFlashAttribute("error", "Error al guardar la foto de perfil.");
		    }

		    return "redirect:/perfil";
		}







		
		 
		//TESTIMONIO PAGE 
		@GetMapping("/testimonios")
		public String testimonios (Model modelo) {
			List<TestimonyModel> testimonio = tService.mostrarContent();
			modelo.addAttribute("testimonio", testimonio);
			//modelo.addAttribute("untestimonio", tService.unContent(Id));
			return "testimonios";
		}
		//	ESCRIBIR TESTIMONIO O MENSAJE
		@GetMapping("/mensaje")
	    public String mensaje (Model model) {
	        model.addAttribute("mensaje", new TestimonyModel());
	        return "mensaje";
	    }
        //ESCRIBIR TESTIMONIO O MENSAJE
	    @PostMapping("/mensaje")
	    public String mensaje (@ModelAttribute TestimonyModel testimony) {
	        return "mensaje";
	    }
		//SOCIOS PAGINA 
				@GetMapping("/socios")
				public String partner () {
					return "partners";
				}
}
