package com.translator.Translator.controller;

import com.translator.Translator.entity.Person;
import com.translator.Translator.repository.PersonImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
public class Controller {

    @Autowired
    private PersonImpl personRepos;

    @GetMapping("/test")
    @ResponseBody
    public String test(){
        return "hello";
    }

    @PostMapping(value = "/persist" )
    public String insert(@RequestBody Person person){
        personRepos.save(person);
        return "successful insertion";
    }

    @GetMapping("getMe/{name}")
    @ResponseBody
    public String getPerson(@PathVariable String name){
         return personRepos.getPersonByName(name).getFamily();
    }

    @GetMapping("/giveRest/{name}")
    @ResponseBody
    public String rest(@PathVariable String name){
        return name;
    }
}
