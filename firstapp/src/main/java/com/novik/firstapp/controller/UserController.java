package com.novik.firstapp.controller;
import com.novik.firstapp.domain.Usr;
import com.novik.firstapp.domain.User;
import com.novik.firstapp.repos.UserRepo;
import com.novik.firstapp.repos.UsrRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Map;

@Controller
public class UserController {
    @Autowired
    private UserRepo userRepo;
    @Autowired
    private UsrRepo usrRepo;

    @GetMapping("/delete")
    public String UserDel(@PathVariable User user, Map<String, Object> model){
      userRepo.deleteById(user.getId());
      usrRepo.deleteById(user.getId());
        return "list";
    }



}
