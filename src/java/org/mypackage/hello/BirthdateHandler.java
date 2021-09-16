/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.hello;

import java.time.LocalDate;
import java.time.Period;

/**
 *
 * @author pc
 */
public class BirthdateHandler {
    
    private String birthdate;

    public BirthdateHandler() {
        this.birthdate = null;
    }

    public String getBirthdate() {
        return getAge();
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }
    
    public String getAge(){
        LocalDate birthdateParsed = LocalDate.parse(birthdate);
        LocalDate fechaHoy = LocalDate.now();
        String age = String.valueOf(Period.between(birthdateParsed, fechaHoy).getYears()) + " years, " + String.valueOf(Period.between(birthdateParsed, fechaHoy).getMonths()) + " months & " + String.valueOf(Period.between(birthdateParsed, fechaHoy).getDays()) + " days old.";
        return age;
    }
    
    
}
