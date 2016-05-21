/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import domain.Agenda;
import domain.Appointment1;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
@RequestMapping(value="/makeAgenda")
public class MakeAgenda {
    
    @Autowired
    private DatabaseFacade service;
    
  
    @RequestMapping(method= RequestMethod.GET)
    public ModelAndView makeAppointment(){
        ModelAndView modelandview = new ModelAndView("makeAgenda", "appointment", new Agenda());
        modelandview.addObject("doctors", service.getDoctors());
        return modelandview;
        
    }
    

 
    
     @RequestMapping(method= RequestMethod.POST)
     public String save(Model model, @ModelAttribute("appointment") @Valid Agenda agenda, BindingResult result){
        if(result.hasErrors()){
            return "makeAgenda";
        }
        List<Appointment1> results = service.makeAgenda(agenda.getDoctor(),agenda.getDate());
        model.addAttribute("results", results);
        model.addAttribute("appointment", agenda);
        return "Agenda";
    }
    
}
