package com.example.bbsproject.controller;

import com.example.bbsproject.entity.User;
import com.example.bbsproject.service.UserService;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    UserService userServicel;

    @GetMapping("/login")
    public String login(){
        return "/Login";
    }

    @GetMapping("/register")
    public String register(){
        return "/Register";
    }

    @PostMapping("/register")
    public @ResponseBody int register(User user){
        return userServicel.add(user);
    }

    @PostMapping("/login")
    public @ResponseBody User login(String name,String pass,HttpSession httpSession){
        User login = userServicel.login(name, pass);
        if(login != null){
            httpSession.setAttribute("userName",login);
        }
        return login;
    }

    @GetMapping("/exit")
    public @ResponseBody boolean exit(HttpSession httpSession){
        httpSession.invalidate();
        return true;
    }
}
