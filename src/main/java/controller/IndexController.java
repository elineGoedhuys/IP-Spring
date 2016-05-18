/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.LinkedHashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import rest.Elevation;
import rest.Weather;
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
       //RestTemplate restTemplate = new RestTemplate();
      //  ObjectMapper jacksonObjectMapper = new ObjectMapper();
        
       // LinkedHashMap map= restTemplate.getForObject("http://api.apixu.com/v1/current.json?key=aebe5a3f024040ff9bf112640160705&q=Brussel", LinkedHashMap.class);
        //Weather weatherDescription = jacksonObjectMapper.convertValue(map.get("current"), Weather.class);
        return new ModelAndView("index","weatherDescription",service.getWeather());
    }
    
}

       
