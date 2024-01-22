package com.dojo.conectaConmigo.services;

import java.util.List;
import org.springframework.stereotype.Service;

import com.dojo.conectaConmigo.models.TestimonyModel;
import com.dojo.conectaConmigo.repositories.TestimonioRepo;





@Service
public class TestimonioService {
	// INYECCION DEPENDENCIAS
			private final TestimonioRepo tRepo;
			
			public TestimonioService (TestimonioRepo tRepo) {
				this.tRepo = tRepo;
			}
			
			//MOSTRAR EL TESTIMONIO 
			public List<TestimonyModel> mostrarContent() {
		        return tRepo.findAll();
		    }
			
			//ENCONTRAR UNA IDEA 
			public TestimonyModel unContent(Long Id) {
				return tRepo.findById(Id).orElse(null);
			}
			
}
