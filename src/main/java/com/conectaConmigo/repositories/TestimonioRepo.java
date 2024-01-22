package com.dojo.conectaConmigo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.dojo.conectaConmigo.models.TestimonyModel;


@Repository
public interface TestimonioRepo extends CrudRepository <TestimonyModel, Long> {

	List< TestimonyModel > findAll();
	
}
