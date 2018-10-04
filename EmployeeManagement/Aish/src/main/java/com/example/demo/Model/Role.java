package com.example.demo.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
public class Role implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int roleId;

    public String getTitle() {
        return title;
    }

    private String title ;


}
