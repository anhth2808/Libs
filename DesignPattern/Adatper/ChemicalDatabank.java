/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Adatper;

/**
 *
 * @author Hoang Anh
 */
// Adaptee
public class ChemicalDatabank {
    
    
    // Methods -- the DataBank "legacy API"
    public float GetCriticalPoint(String compound, String point) {
        float temperature = 0;
        
        // Melting Point
        
        if (point == "M") {
            switch(compound.toLowerCase()) {
                case "water": temperature = 0F;
                break;
                case "benzene": temperature = 5.5F;
                break;
                case "alcohol": temperature = -114.1F;
                break;
            }
        } else {
        // Boiling Point
            switch(compound.toLowerCase()) {
                case "water": temperature = 100.0F;
                break;
                case "benzene": temperature = 80.1F;
                break;
                case "alcohol": temperature = 78.3F;
                break;
            }
        }
        
       
        return temperature;
    }
    
    
    public String GetMolecularStructure(String compound) {
        String structre = "";
        switch (compound.toLowerCase()) {
            case "water": structre = "H20";
            break;
            case "benzene": structre = "C6H6";
            break;
            case "alcohol": structre = "C2H6O2";
            break;
        }
        return structre;
    }
    
    public double GetMolecularWeight(String compound) {
        double weight = 0.0;
        switch(compound.toLowerCase()) {
            case "water": weight = 18.015;
            break;
            case "benzene": weight = 78.1134;
            break;
            case "alcohol": weight = 46.0688;
            break;
        }
        
        return weight;
    }
    
}
