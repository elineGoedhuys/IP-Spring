/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ui;

import java.util.HashMap;
import java.util.Map;
import rest.Elevation;
import org.springframework.web.client.RestTemplate;
import rest.Result;

/**
 *
 * @author Eline
 */
public class TestRest {
    
     public static void main(String[] args){
        RestTemplate restTemplate = new RestTemplate();
        Elevation response = restTemplate.getForObject("http://api.apixu.com/v1/current.json?key=aebe5a3f024040ff9bf112640160705&q=Paris", Elevation.class);
       
        System.out.println("Elevation: " + response);
    }
    }

