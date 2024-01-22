package com.dojo.conectaConmigo.repositories;

import org.springframework.data.repository.CrudRepository;

import com.dojo.conectaConmigo.models.User;



public interface UserRepository extends CrudRepository<User, Long> {

	User findByEmail(String email);

}
