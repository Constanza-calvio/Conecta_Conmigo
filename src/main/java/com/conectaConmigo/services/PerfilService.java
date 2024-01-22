package com.dojo.conectaConmigo.services;

import org.springframework.stereotype.Service;

import com.dojo.conectaConmigo.models.Perfil;
import com.dojo.conectaConmigo.models.User;

@Service
public class PerfilService {

    private final UserService userService;

    public PerfilService(UserService userService) {
        this.userService = userService;
    }

    public Perfil obtenerPerfil(Long userId) {
        // Lógica para obtener la información del perfil, incluida la URL de la foto
        // Supongamos que tienes acceso a la información del perfil del usuario
        // y que puedes construir un objeto Perfil con esta información

        Perfil perfil = new Perfil();
        // ... establece otras propiedades del perfil ...

        // Obtén la URL de la foto del usuario de tu servicio
        String userPhoto = userService.obtenerFotoDePerfil(userId); // Pasa el ID del usuario
        perfil.setProfileImage(userPhoto != null ? userPhoto : "/img-perfil-y-editar/default-profile-photo.png"); // Ruta predeterminada si no hay foto de perfil

        return perfil;
    }

    public String obtenerFotoDePerfil(Long userId) {
        // Suponiendo que obtienes el usuario por su ID
        User usuario = userService.encontrarPorId(userId); // Utiliza el servicio de usuario para encontrar por ID

        if (usuario != null) {
            // Obtén la URL de la foto de perfil del usuario
            // Puedes agregar lógica adicional aquí según tu implementación
            return usuario.getPhotoUrl();
        }

        // Si el usuario no se encuentra o no tiene una foto de perfil, devuelve la ruta predeterminada
        return "/img-perfil-y-editar/default-profile-photo.png";
    }

    public void actualizarFotoDePerfil(Long userId, String nuevaURL) {
        // Lógica para actualizar la foto de perfil del usuario
        User usuario = userService.encontrarPorId(userId); // Obtén el usuario por su ID

        if (usuario != null) {
            // Actualiza la URL de la foto de perfil del usuario
            usuario.setPhotoUrl(nuevaURL);

            // Guarda el usuario actualizado en la base de datos (puedes usar el servicio UserService)
            userService.guardarUsuario(usuario);
        }
    }
}
