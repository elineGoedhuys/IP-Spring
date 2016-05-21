/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import domain.Appointment1;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
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
        ModelAndView modelAndView = new ModelAndView ("makeAppointment","makeAppointment",new Appointment1());
        modelAndView.addObject("patients", service.getPatients());
        modelAndView.addObject("doctors", service.getDoctors());
        return modelAndView;
    }
    
     @RequestMapping(method= RequestMethod.POST)
    public String save(@ModelAttribute("makeAppointment") @Valid Appointment1 appointment, BindingResult result){
        if(result.hasErrors()){
            return "makeAppointment";
        }
        service.makeAppointment(appointment);
        return "redirect:/confirmApp.htm";
    }
}
