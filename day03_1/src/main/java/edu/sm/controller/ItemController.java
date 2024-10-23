package edu.sm.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
//@RequestMapping("/item")
public class ItemController {

    String dir ="item/";


    @RequestMapping("/item")
    public String item(Model model){
        model.addAttribute("center",  dir+"item");
        return "index";
    }

    @RequestMapping("/itemadd")
    public String itemadd(Model model){
        model.addAttribute("center",  dir+"itemadd");
        return "index";
    }

}
