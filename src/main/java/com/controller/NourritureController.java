package com.controller;

import com.Service.GlucoseDAO;
import com.Service.NourritureDAO;
import com.beans.GlucoseReading;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class NourritureController {

    @Autowired
    private NourritureDAO Nourri;




    @RequestMapping("/ShowNourriture")
    public String show(Model model){
        // model.addAttribute("diabete",new GlucoseReading());
        model.addAttribute("Nourritures",  Nourri.ShowNourriture());
        return "ShowNou";
    }



}
