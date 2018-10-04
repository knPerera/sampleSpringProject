package com.example.demo.DTO;

public class RoleDTO {
    private String title;

    public RoleDTO(String title) {
        this.title = title;
    }

    public RoleDTO() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
