package com.controller;

import com.Service.GlucoseDAO;
import com.Service.NourritureDAO;
import com.beans.GlucoseReading;
import com.beans.Nourriture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@Controller
public class NourritureController {

    @Autowired
    private NourritureDAO Nourri;




    @RequestMapping("/ShowNourriture")
    public String ShowNourritureByGenre(@RequestParam("genre") String genre, Model model){


        List<Nourriture> nourritures = Nourri.ShowNourriture(genre);
        model.addAttribute("Nourritures", nourritures);
        return "ShowNourriture";
    }






}
