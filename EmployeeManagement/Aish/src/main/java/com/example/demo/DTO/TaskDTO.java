package com.example.demo.DTO;

public class TaskDTO {
    private String t_name;

    private String u_name;

    public TaskDTO(String t_name, String u_name) {
        this.t_name = t_name;
        this.u_name = u_name;
    }

    public TaskDTO() {
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }
}
