/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.Appointment;
import domain.Appointment1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import service.DatabaseFacade;

/**
 *
 * @author Eline
 */
@Controller
@RequestMapping(value="/makeAppointment")
public class makeAppointment {
    
    @Autowired
    private DatabaseFacade service;
    
    @RequestMapping(method= RequestMethod.GET)
    public ModelAndView makeAppointment(){
        return new ModelAndView("makeAppointment","makeAppointment",new Appointment());
    }
    
     @RequestMapping(method= RequestMethod.POST)
    public String save(@ModelAttribute("makeAppointment") Appointment1 appointment){
        service.makeAppointment(appointment);
        return "redirect:/makeAppointment.htm";
    }
}
