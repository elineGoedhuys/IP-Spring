/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package converters;

import domain.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import service.DatabaseFacade;
import org.springframework.core.convert.converter.Converter;

/**
 *
 * @author Eline
 */
public class DoctorConverter implements Converter<String, Doctor>{

    @Autowired
    private DatabaseFacade service;
    
    @Override
    public Doctor convert(String id) {
        return service.getDoctorOnId(Integer.valueOf(id));
    }
    
    
}
