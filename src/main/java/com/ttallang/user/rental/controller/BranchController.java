package com.ttallang.user.rental.controller;

import com.ttallang.user.security.config.auth.PrincipalDetails;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/map")
public class BranchController {

    @GetMapping("/main")
    public String userMainPage(Model model) {
        try {
            PrincipalDetails pds = (PrincipalDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            model.addAttribute("customerId", pds.getCustomerID());
            model.addAttribute("username", pds.getUsername());
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return "redirect:/login/form";
        }
        return "map/mymap"; // JSP 경로와 일치하도록 수정
    }
}

