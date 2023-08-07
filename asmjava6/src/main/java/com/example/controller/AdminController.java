package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @GetMapping({ "/admin/index" })
    public String GetProducts() {
        return "admin/index";
    }

    @GetMapping({ "/admin/AddProduct" })
    public String AddProducts() {
        return "admin/AddProduct";
    }

    @GetMapping({ "/admin/EditProduct/{id}" })
    public String EditProducts() {
        return "admin/AddProduct";
    }

    @GetMapping({ "/admin/ManagedAccount" })
    public String GetAccounts() {
        return "admin/ManagedAccount";
    }

     @GetMapping({ "/admin/AddUser" })
    public String AddAccount() {
        return "admin/AddUser";
    }

    @GetMapping({ "/admin/EditAccount/{id}" })
    public String EditAccounts() {
        return "admin/AddUser";
    }

}
