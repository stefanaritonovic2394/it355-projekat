/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author stefa
 */
@Controller
public class HomeController {
    
    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout", required = false) String logout, Model model) {

        if (error != null) {
            model.addAttribute("error", "Pogresno korisnicko ime i lozinka");
        }

        if (logout != null) {
            model.addAttribute("msg", "Uspesno ste se izlogovali");
        }

        return "login";
    }

    @RequestMapping("/about")
    public String about() {
        return "about";
    }
    
}
