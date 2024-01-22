package com.dojo.conectaConmigo.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.dojo.conectaConmigo.models.User;
import com.dojo.conectaConmigo.repositories.UserRepository;



@Service
public class UserService {
	
	// INYECCION DE DEPENDENCIAS
		private final UserRepository userRepository;

		public UserService(UserRepository userRepo) {
			this.userRepository = userRepo;

		}
		public User guardarUsuario(User usuario) {
	        return userRepository.save(usuario);
	    }

		public User encontrarPorEmail(String email) {
			return userRepository.findByEmail(email);
		}

		public User encontrarPorId(Long id) {

			Optional<User> usuario = userRepository.findById(id);
			if (usuario.isPresent()) {
				return usuario.get();
			}
			return null;
		}

		// METODO PARA REGISTRAR AL USUARIO
		public User registrarUsuario(User usuario, BindingResult resultado) {
			User usuarioRegistrar = userRepository.findByEmail(usuario.getEmail());

			if (usuarioRegistrar != null) {
				resultado.rejectValue("email", "Matches", "Email ya existe");
			}
			
			if (!usuario.getConfirmPassword().equals(usuario.getPassword())) {
				resultado.rejectValue("confirmPassword", "Matches", "Contraseña no coincide");
			}
			if (resultado.hasErrors()) {
				return null;
			}

			String hashed = BCrypt.hashpw(usuario.getPassword(), BCrypt.gensalt());
			usuario.setPassword(hashed);
			return userRepository.save(usuario);

		}

		// AUTENTICACION DEL USUARIO (LOGIN)
		public boolean autenticacionUser(String email, String password, BindingResult resultado) {
			User usuarioRegistrar = userRepository.findByEmail(email);

			if (usuarioRegistrar == null) {
				resultado.rejectValue("email", "Matches", "Email no valido");
				return false;
			} else {
				if (BCrypt.checkpw(password, usuarioRegistrar.getPassword())) {
					return true;

				} else {
					resultado.rejectValue("password", "Matches", "Password no valido");
					return false;
				}
			}
		}

		// CREAR USUARIO
		public final User crearUser(User user) {
			return userRepository.save(user);
		}
		
		public String obtenerFotoDePerfil(Long userId) {
	        // Suponiendo que obtienes el usuario por su ID
	        User usuario = encontrarPorId(userId);

	        if (usuario != null) {
	            // Obtén la URL de la foto de perfil del usuario
	            // Puedes agregar lógica adicional aquí según tu implementación
	            return usuario.getPhotoUrl();
	        }

	        // Si el usuario no se encuentra o no tiene una foto de perfil, devuelve la ruta predeterminada
	        return "/img-perfil-y-editar/default-profile-photo.png";
	    }


}
