package edu.sm.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class LoginController {

    String dir ="login/";


    @RequestMapping("/login")
    public String login(Model model){
        model.addAttribute("center",  dir+"login");
        return "index";
    }

    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center",  dir+"register");
        return "index";
    }

}
