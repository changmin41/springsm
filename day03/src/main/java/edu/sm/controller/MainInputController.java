package edu.sm.controller;

import edu.sm.app.dto.CustDto;
import edu.sm.app.service.CustService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLIntegrityConstraintViolationException;

@Controller
@Slf4j
@RequiredArgsConstructor
public class MainInputController {

    final CustService custService;
    final BCryptPasswordEncoder PasswordEncoder;
    private final BCryptPasswordEncoder passwordEncoder;

    @RequestMapping("/logoutimpl")
    public String logoutimpl(HttpSession session, Model model) {
        if(session != null){
            session.invalidate();
        }
        return "redirect:/";
    }


    @RequestMapping("/loginimpl")
    public String loginimpl(Model model,
                            @RequestParam("id") String id,
                            @RequestParam("pwd") String pwd,
                            HttpSession session) throws Exception {
        log.info("ID:"+id);
        log.info("PWD:"+pwd);
        // aaa, 111
        String next = "index";
        CustDto custDto = null;
        custDto = custService.get(id);
        if(custDto == null){
            //fail
            model.addAttribute("center","loginfail");

        }else{
            //okay
            if(passwordEncoder.matches(pwd, custDto.getCustPwd())) {
                session.setAttribute("loginid", custDto);
                next = "redirect:/";
            } else {
                model.addAttribute("center", "loginfail");
            }

        }
        /*if(id.equals("aaa") && pwd.equals("111")){
            session.setAttribute("loginid", id);
        }else{
            model.addAttribute("center","loginfail");
            next = "index";
        }*/
        return next;
    }

    @RequestMapping("/registerimpl")
    public String registerimpl(Model model,
                               CustDto custDto,
                               HttpSession session) throws Exception {
        log.info("Cust Info: "+custDto.toString());
        try {
            custDto.setCustPwd(PasswordEncoder.encode(custDto.getCustPwd()));
            custService.add(custDto);
        }catch (SQLIntegrityConstraintViolationException e){

        }
        catch (Exception e) {
            throw e;
        }
        session.setAttribute("loginid",custDto);
        model.addAttribute("center","registerok");
        return "index";
    }

}