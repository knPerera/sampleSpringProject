package com.example.demo.Controller;

import com.example.demo.DTO.RoleDTO;
import com.example.demo.Model.Role;
import com.example.demo.Model.RoleRepository;
import com.example.demo.Model.Task;
import jdk.nashorn.internal.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping(path="/role")
public class RoleController {
    @Autowired
    RoleRepository roleRepository;

    /**
     * Get all the roles exists
     * And set them to access from
     * view
     */
    @GetMapping(path="/list")
    public String getAllRoles(Map<String, Object> model) {
        model.put("roles",roleRepository.findAll());
        return "role";
    }

    /**
     * Delete a specific role
     * @param id id of the role
     */
    @DeleteMapping(path = "delete")
    public @ResponseBody void deleteRole(@RequestParam String id) {
        roleRepository.delete(Integer.parseInt(id));
    }

    /**
     * Edit the role
     * @param id id of the role
     * @param title id of the role
     * @return state of the edit
     */
    @PutMapping(path = "edit")
    public @ResponseBody boolean editRole(@RequestParam String id,@RequestParam String title) {
        Role role = roleRepository.findOne(Integer.parseInt(id));
        Role roleExists = roleRepository.findRoleByTitle(title);
        if(role != null && roleExists == null){
            role.setTitle(title);
            roleRepository.save(role);
            return  true;
        }else{
            return false;
        }
    }

    /**
     * Create a new role
     * @param roleDTO role dto class
     * @return state of creation
     */
    @PostMapping(path = "create")
    public @ResponseBody boolean createRole(@RequestBody RoleDTO roleDTO) {
        Role roleExists = roleRepository.findRoleByTitle(roleDTO.getTitle());
        if(roleExists == null) {
            Role role = new Role();
            role.setTitle(roleDTO.getTitle());
            roleRepository.save(role);
            return true;
        }else {
            return false;
        }
    }
}
