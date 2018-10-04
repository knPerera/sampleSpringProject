package com.example.demo.Controller;

import com.example.demo.DTO.RoleDTO;
import com.example.demo.DTO.TaskDTO;
import com.example.demo.Model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(path="/task")
public class TaskController {
    @Autowired
    private TaskRepository taskRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    /**
     * Welcome method
     * @param model model of the view
     * @return view
     */
    @RequestMapping("/welcome")
    public String goToWelcome(Map<String, Object> model) {
        model.put("message", "hee");
        return "welcome";
    }

    /**
     *Create task
     * @param taskDTO
     * @return
     */
    @PostMapping(path = "/create")
    public @ResponseBody boolean createTask(@RequestBody TaskDTO taskDTO) {

        if(taskDTO.getU_name() != ""){
            User user = userRepository.findByName(taskDTO.getT_name());
            if(user != null) {
                Task task = new Task();
                task.setTaskname(taskDTO.getT_name());
                task.setUser(user);
                taskRepository.save(task);
                return true;
            }else {
                return false;
            }
        }else {
            return  false;
        }

    }

    /**
     * delete specific task
     * @param id task id
     */
    @DeleteMapping(path = "delete")
    public @ResponseBody void deleteTask(@RequestParam String id) {
        taskRepository.delete(Integer.parseInt(id));
    }

    /**
     * edit specific task
     * @param id id of the task
     * @param title title
     * @param user_Name employee name
     * @return
     */
    @PutMapping(path = "edit")
    public @ResponseBody boolean editTask(@RequestParam String id,@RequestParam String title,String user_Name) {
        Task task = taskRepository.findOne(Integer.parseInt(id));

        if(task != null){
            task.setTaskname(title);
            if(user_Name != null){
                task.setUser(userRepository.findByName(user_Name));
            }
            taskRepository.save(task);
            return  true;
        }else{
            return false;
        }
    }

    @GetMapping(path="/list")
    public String getAllUsers(Map<String, Object> model) {
        model.put("users",userRepository.findAll());
        model.put("roles", roleRepository.findAll());
        model.put("tasks", taskRepository.findAll());

        return "task";
    }

}
