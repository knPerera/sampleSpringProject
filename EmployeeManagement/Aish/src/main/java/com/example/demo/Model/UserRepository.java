package com.example.demo.Model;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.Model.User;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface UserRepository extends CrudRepository<User, Integer> {
    User findByName(String name);
}
