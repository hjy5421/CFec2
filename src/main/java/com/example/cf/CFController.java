package com.example.cf;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CFController {
    @GetMapping("/cf")
    public String test(){
        return "climbing friends server";
    }
}
