package com.dojo.conectaConmigo.configurations;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/img-login-y-registro/**")
                .addResourceLocations("classpath:/static/img-login-y-registro/");
        registry.addResourceHandler("/img-inicio/**")
                .addResourceLocations("classpath:/static/img-inicio/");
        registry.addResourceHandler("/img-perfil-y-editar/**")
                .addResourceLocations("classpath:/static/img-perfil-y-editar/");
        registry.addResourceHandler("/css/**")
        		.addResourceLocations("classpath:/static/css/");
    }
    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.jsp("/WEB-INF/views/", ".jsp");
    }
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/inicio").setViewName("inicio");
    }
}
