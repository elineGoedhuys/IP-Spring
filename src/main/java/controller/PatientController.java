/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domain.Patient;
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
@RequestMapping(value = "/patients")
public class PatientController {

    @Autowired
    private DatabaseFacade service;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getPatients() {
        
        return new ModelAndView("patients", "patients", service.getPatients());
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public ModelAndView getNewPatientForm() {

        return new ModelAndView("newPatient", "patient", new Patient());
    }

    @RequestMapping(method = RequestMethod.POST)
    public String save(@Valid @ModelAttribute("patient") Patient patient, BindingResult result) {
        if(result.hasErrors()){
            return "newPatient";
        }else{
        if (patient.getId() > 0) {
            service.updatePatient(patient);
        } else {
            service.newPatient(patient);
        }
        return "redirect:/patients.htm";
        }
    }

    @RequestMapping(value = "/{patientId}", method = RequestMethod.GET)
    public ModelAndView getEditForm(@PathVariable long patientId) {
        return new ModelAndView("newPatient", "patient", service.getPatientOnId(patientId));
    }

   @RequestMapping(value = "/delete/{patientId}", method = RequestMethod.GET)
    public String delete(@PathVariable("patientId") long patientId) {
        service.deletePatient(patientId);
        return "redirect:/patients.htm";
    }
}
