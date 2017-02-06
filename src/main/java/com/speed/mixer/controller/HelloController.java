package com.speed.mixer.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by sambit on 2/5/2017.
 */
@RestController
public class HelloController {
    @GetMapping("/testrequest")
    public String getResponse(){
        return "{response:success}";
    }
}
