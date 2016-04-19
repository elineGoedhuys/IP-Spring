/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.Address;
import domain.Doctor;
import domain.Patient;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
@RequestMapping(value="/patients")
public class PatientController {
    
    @Autowired
    private DatabaseFacade service;
    
    @RequestMapping(method= RequestMethod.GET)
    public ModelAndView getPatients(){
        System.out.println("controller.PatientController.getPatients()");
        return new ModelAndView("patients","patients",service.getPatients());
    }
    
    @RequestMapping(value="/new", method = RequestMethod.GET)
    public ModelAndView getNewPatientForm(){
        System.out.println("controller.PatientController.getNewPatientForm()");
        return new ModelAndView("newPatient","patient",new Patient());
    }
  
    
    @RequestMapping(method= RequestMethod.POST)
    public String save(@ModelAttribute("patient") Patient patient){
        if(service.getPatients().contains(patient)){
            service.updatePatient(patient);
        }else{
        service.newPatient(patient);
        }
        return "redirect:/patients.htm";
    }
    
    @RequestMapping(value="/{patientId}", method= RequestMethod.GET)
    public ModelAndView getEditForm(@PathVariable int patientId){
        return new ModelAndView("newPatient","patient",service.getPatientOnId(patientId));
    }

}
