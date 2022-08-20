package com.example.gitactionsops;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@org.springframework.stereotype.Controller
@RequestMapping(value = "/")
public class Controller {

    @RequestMapping(value = "/test")
    @ResponseBody
    public Boolean test() {
        return true;
    }

}
