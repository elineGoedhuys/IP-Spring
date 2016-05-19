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
import service.DatabaseFacade;

/**
 *
 * @author Eline
 */
public class TestRest {
    public static void main(String[] args){
        DatabaseFacade service = new DatabaseFacade();
       
        System.out.println(service.getWeather());
    }
}

