/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package converters;

import domain.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import service.DatabaseFacade;
import org.springframework.core.convert.converter.Converter;
/**
 *
 * @author Eline
 */
public class PatientConverter implements Converter<String, Patient> {

    @Autowired
    private DatabaseFacade service;
    
    @Override
    public Patient convert(String id) {
       return service.getPatientOnId(Long.valueOf(id));
    }
    
    
}
