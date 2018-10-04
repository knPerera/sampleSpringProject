package com.example.demo.Controller;
import com.example.demo.DTO.UserDTO;
import com.example.demo.Model.Role;
import com.example.demo.Model.RoleRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.demo.Model.User;
import com.example.demo.Model.UserRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(path="/employee")
public class UserController {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    private final Logger log = LoggerFactory.getLogger(this.getClass());

    /**
     * Create new employee
     * @param usetDTO
     * @return
     */
    @PostMapping(path="/create")
    public @ResponseBody Boolean addNewUser (@RequestBody UserDTO usetDTO) {

        Role role = roleRepository.findRoleByTitle(usetDTO.getTitle());
        if(role != null){
            log.info("Started saving");
            User n = new User();
            n.setName(usetDTO.getName());
            n.setRole(role);
            userRepository.save(n);
            log.info("Saved in to the user table");
            return true;
        }else {
            log.error("No role specified");
            return false;
        }
    }

    /**
     * Delete employee
     * @param id id of employee
     * @return status
     */
    @DeleteMapping(path = "delete")
    public @ResponseBody Boolean deleteRole(@RequestParam String id) {
        // This returns a JSON or XML with the users
        userRepository.delete(Integer.parseInt(id));
        return true;
    }

    /**
     * edit employee
     * @param id id of employee
     * @param title role of employee
     * @param name name of employee
     * @return
     */
    @PutMapping(path = "edit")
    public @ResponseBody boolean editUser(@RequestParam String id,
                                          @RequestParam String title,
                                          @RequestParam String name) {
        // This returns a JSON or XML with the users
        User user = userRepository.findOne(Integer.parseInt(id));
        User uNameExists = userRepository.findByName(name);

        if(user != null && !(user.getRole().getTitle().equals(title))
                && (user.getName().equals(name))){
            Role role = roleRepository.findRoleByTitle(title);
            if(role == null){
                log.error("error role not changed");
                return false;
            }else{
                log.info("Changed only the role");
                user.setRole(role);
                userRepository.save(user);
                return  true;
            }

        }else if(user != null && (user.getRole().getTitle() == title) && uNameExists == null){
            log.info("Changed only the user name");
            Role role = roleRepository.findRoleByTitle(title);
            user.setRole(role);
            userRepository.save(user);
            return  true;
        }else if(user != null && (user.getRole().getTitle() != title) && uNameExists == null){

            Role role = roleRepository.findRoleByTitle(title);
            if(role == null){
                log.error("error role not exists");
                return false;
            }else{
                log.info("Changed both role and name");
                user.setRole(role);
                user.setName(name);
                userRepository.save(user);
                return  true;
            }
        }else{
            log.info("came");
            return false;
        }
    }

    /**
     * get list of employees
     * @param model
     * @return user view
     */
    @GetMapping(path="/list")
    public String getAllUsers(Map<String, Object> model) {
        model.put("users",userRepository.findAll());
        model.put("roles", roleRepository.findAll());
        return "user";
    }

}
