package edu.sm.Exception;


import lombok.extern.slf4j.Slf4j;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.sql.SQLIntegrityConstraintViolationException;

@ControllerAdvice
@Slf4j
public class SMExceptionHandler {


    @ExceptionHandler(SQLIntegrityConstraintViolationException.class)
    public String ex2(Model model , SQLIntegrityConstraintViolationException e) {
        model.addAttribute("msg", "아이디가 중복입니다.");
        model.addAttribute("center", "error");
        return "index";
    }


    @ExceptionHandler(Exception.class)
    public String ex1(Model model , Exception e) {


        model.addAttribute("msg", e.getMessage());
        model.addAttribute("center", "error");
        return "index";
    }
}
