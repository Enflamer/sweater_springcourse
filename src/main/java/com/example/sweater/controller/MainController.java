package com.example.sweater.controller;

import com.example.sweater.domain.Message;
import com.example.sweater.domain.User;
import com.example.sweater.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.File;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import java.util.Map;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import com.example.sweater.domain.MyTreeNode;

@Controller
public class MainController {
    @Autowired
    private MessageRepo messageRepo;

    private ArrayList<String> list = new ArrayList<>();

    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(@RequestParam(required = false, defaultValue = "") String filter, Model model) {
        if(list == null){
            list.add("Exemple");
        }
        model.addAttribute("list", list);
        return "main";
    }

    @PostMapping("/main")
    public String addEl(
            @AuthenticationPrincipal User user,
            @RequestParam String text, Map<String, Object> model
    ){
        list.add(text);
        model.put("list", list);
        return "main";
    }

    @PostMapping("/main1")
    public String delEl(
            @AuthenticationPrincipal User user,
            @RequestParam String text, Map<String, Object> model
    ){

        list.remove(text);
        model.put("list", list);
        return "main";
    }

//    @PostMapping("/main2")
//    public String changeEl(
//            @AuthenticationPrincipal User user,
//            @RequestParam String text, Map<String, Object> model
//    ){
//
//    }


//    @PostMapping("/main")
//    public String add(
//            @AuthenticationPrincipal User user,
//            @RequestParam String text,
//            @RequestParam String tag, Map<String, Object> model
//    ) {
//        Message message = new Message(text, tag, user);
//
//        messageRepo.save(message);
//
//        Iterable<Message> messages = messageRepo.findAll();
//
//        model.put("messages", messages);
//
//        return "main";
//    }
}