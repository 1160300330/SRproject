package com.controller;

import com.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private StockService stockService;

    @RequestMapping("/login")
    public String UserLogin() {
        return "user/login";
    }

    @RequestMapping("/user")
    public String UserPage() {
        return "user/userPage";
    }
}
