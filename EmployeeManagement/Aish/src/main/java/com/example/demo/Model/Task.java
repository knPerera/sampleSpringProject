package com.example.demo.Model;

import javax.persistence.*;
import java.io.Serializable;


@Entity
// This tells Hibernate to make a table out of this class
public class Task implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int t_id;

    private String taskname;

    @ManyToOne
    @JoinColumn(name="u_id")
    private User user;

    public int getT_id() {
        return t_id;
    }

    public void setT_id(Integer t_id) {
        this.t_id = t_id;
    }

    public void setT_id(int t_id) {
        this.t_id = t_id;
    }

    public String getTaskname() {
        return taskname;
    }

    public void setTaskname(String taskname) {
        this.taskname = taskname;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
