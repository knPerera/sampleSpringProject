package com.example.demo.Model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "employee")// This tells Hibernate to make a table out of this class
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int u_id;

    private String name;

    private Role role;

    @OneToMany(mappedBy = "user")
    private Set<Task> tasks;

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @OneToOne
    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Set<Task> getTasks() {
        return tasks;
    }

    public void setTasks(Set<Task> tasks) {
        this.tasks = tasks;
    }

}