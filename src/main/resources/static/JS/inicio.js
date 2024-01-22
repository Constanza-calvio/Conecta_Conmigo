function toggleProfileMenu() {
    var profileMenu = document.getElementById("profileMenu");
    var profileButton = document.getElementById("profileButton");

    // Muestra el menú al poner el cursor encima
    profileMenu.style.display = "block";

    // Agrega un listener para ocultar el menú cuando se quita el cursor
    profileMenu.addEventListener("mouseleave", function hideMenu() {
        profileMenu.style.display = "none";
        // Restaura los bordes redondeados al ocultar el menú
        profileButton.style.borderBottomLeftRadius = "30px";
        profileButton.style.borderBottomRightRadius = "30px";
    });

    // Quita los bordes redondeados al hacer clic en el botón
    profileButton.style.borderBottomLeftRadius = "0";
    profileButton.style.borderBottomRightRadius = "0";

    // Añade la clase "active" al botón cuando se hace clic
    profileButton.classList.add("active");

    // Quita la clase cuando se hace clic fuera del botón o se cierra el menú
    document.addEventListener("click", function hideMenuOnClick(event) {
        if (!profileButton.contains(event.target) && !profileMenu.contains(event.target)) {
            profileMenu.style.display = "none";
            profileButton.classList.remove("active");

            // Restaura los bordes redondeados al ocultar el menú
            profileButton.style.borderBottomLeftRadius = "30px";
            profileButton.style.borderBottomRightRadius = "30px";

            // Remueve el listener después de ocultar el menú
            document.removeEventListener("click", hideMenuOnClick);
        }
    });
}

// Añade un listener para mostrar el menú al hacer clic en el botón
document.getElementById("profileButton").addEventListener("click", toggleProfileMenu);


// Función para mostrar el menú al poner el cursor encima
document.getElementById("buttonId").addEventListener("mouseenter", toggleProfileMenu);


function mostrarOverlay() {
    document.getElementById("overlay-container").style.display = "flex";
    document.body.classList.add("blur-background");
}

function cerrarOverlay() {
    document.getElementById("overlay-container").style.display = "none";
    document.body.classList.remove("blur-background");
}
 var donarButton = document.getElementById('donarButton');

    // Agrega un escuchador de eventos al botón
    donarButton.addEventListener('click', function() {
        // Redirige a la página donar.jsp
        window.location.href = 'donar.jsp';
    });
