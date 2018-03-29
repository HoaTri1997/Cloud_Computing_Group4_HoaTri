package com.example.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.user;

public interface userRepository extends CrudRepository<user, Integer>{
	
}
