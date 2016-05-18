/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.Doctor;
import domain.Patient;
import java.util.ArrayList;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import service.DatabaseFacade;

/**
 *
 * @author Eline
 */
@Controller
@RequestMapping(value="/doctors")
public class DoctorController {
    
     @Autowired
    private DatabaseFacade service;
    
    @RequestMapping(method= RequestMethod.GET)
    public ModelAndView getDoctors(){
        return new ModelAndView("doctors","doctors",service.getDoctors());
    }
    
    @RequestMapping(value="/new", method= RequestMethod.GET)
    public ModelAndView getNewDoctor(){
        return new ModelAndView("newDoctor","doctor",new Doctor());
    }
    
     @RequestMapping(method= RequestMethod.POST)
    public String save(@ModelAttribute ("doctor") Doctor doctor, BindingResult result){
        if(result.hasErrors()){
            return "newDoctor";
        }else{
        if(doctor.getId() > 0){
            service.updateDoctor(doctor);
        }
        service.newDoctor(doctor);
        return "redirect:/doctors.htm";
        }
    }
    
    @RequestMapping(value="/{doctorId}", method= RequestMethod.GET)
    public ModelAndView getEditForm(@PathVariable long doctorId){
        return new ModelAndView("newDoctor","doctor",service.getDoctorOnId(doctorId));
    }
    
    @RequestMapping(value="/delete/{doctorId}", method= RequestMethod.GET)
    public String delete(@PathVariable("doctorId") long doctorId){
        service.deleteDocotor(doctorId);
        return "redirect:/doctors.htm";
    }
}
