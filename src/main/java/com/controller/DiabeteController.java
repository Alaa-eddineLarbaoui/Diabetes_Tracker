package com.controller;

import com.Service.GlucoseDAO;
import com.beans.GlucoseReading;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;

@Controller
public class DiabeteController {

    @Autowired
    private GlucoseDAO glucoseDAO;

    @RequestMapping(value = "/")
    public String home(Model model) {
        model.addAttribute("glucose", new GlucoseReading());
        return "Home";
    }
    @RequestMapping(value = "/Registration")
    public String Registration(Model model) {
        model.addAttribute("glucose", new GlucoseReading());
        return "Registration";
    }

    @PostMapping(value = "/save")
    public String save(@RequestParam("date_of_Tracking") String date_of_Tracking,
                       @RequestParam("time_of_tracking") String time_of_tracking,
                       @RequestParam("value_Glucose") String value_Glucose) {

        // Convert the request parameters to the appropriate types
        LocalDate date = LocalDate.parse(date_of_Tracking);
        LocalTime time = LocalTime.parse(time_of_tracking);
        double value = Double.parseDouble(value_Glucose);

        // Create a new GlucoseReading object
        GlucoseReading glucose = new GlucoseReading();
        glucose.setDate_of_Tracking(Date.valueOf(date));
        glucose.setTime_of_tracking(Time.valueOf(time));
        glucose.setValue_Glucose(value);

        // Save the GlucoseReading object
        glucoseDAO.Add(glucose);

        return "Registration";
    }

    @RequestMapping("/ShowInfo")
    public String show(Model model){
        // model.addAttribute("diabete",new GlucoseReading());
        model.addAttribute("Diabetes",  glucoseDAO.ShowDiabetes());
        return "Show";
    }
    @RequestMapping("/Showchart")
    public String showChart(Model model){
        // model.addAttribute("diabete",new GlucoseReading());
        model.addAttribute("Diabetes",  glucoseDAO.ShowDiabetes());
        return "Chart";
    }

    @RequestMapping("/delete")
    public String deleteInfos(@RequestParam("id") int idS, Model model) {
        glucoseDAO.delete(idS);
        model.addAttribute("Diabetes",  glucoseDAO.ShowDiabetes());
        return "Show";
    }



}