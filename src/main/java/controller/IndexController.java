/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import rest.Elevation;
import service.DatabaseFacade;

/**
 *
 * @author Eline
 */

    
@Controller
@RequestMapping(value="/index")
public class IndexController {
    
    @Autowired
    private DatabaseFacade service;
    
    @RequestMapping(method= RequestMethod.GET)
    public ModelAndView makeAppointment(){
        RestTemplate restTemplate = new RestTemplate();
        Elevation response = restTemplate.getForObject("http://api.apixu.com/v1/current.json?key=aebe5a3f024040ff9bf112640160705&q=Paris", Elevation.class);
        return new ModelAndView("index","rest", response.getResult().get(0).toString());
    }
    
}

