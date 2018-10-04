package com.example.demo.Model;

import org.springframework.data.repository.CrudRepository;

public interface TaskRepository extends CrudRepository<Task, Integer> {
//    Task findByT_name(String name);
        Task findTaskByTaskname(String task);
}