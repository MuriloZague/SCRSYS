/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;

import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author Aluno
 */
public class Utilitarios {
    
    public static long converteDateTimeLocalparaTimestamp(String datetimelocalHTML){      
        String dateTimeString = datetimelocalHTML.replace("T", " ");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        LocalDateTime dateTime = LocalDateTime.parse(dateTimeString, formatter);
        long resultado = dateTime.toEpochSecond(ZoneOffset.UTC); 
        return resultado;
    }
    
}
