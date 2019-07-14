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
// Adapter
public class Compound extends ChemicalCompound{

    private ChemicalDatabank bank;
    
    public Compound(String name) {
        super(name);
        
        // Adaptee
        bank = new ChemicalDatabank();
        // Adaptee request methods
        boilingPoint = bank.GetCriticalPoint(name, "B");
        meltingPoint = bank.GetCriticalPoint(name, "M");
        molecularWeight = bank.GetMolecularWeight(name);
        molecularFormula = bank.GetMolecularStructure(name);
    }
    
    public void Display() {
        System.out.println("\nCompound: " + name + " -----");
        System.out.println(" Formular: " + molecularFormula);
        System.out.println(" Weight: " + molecularWeight);
        System.out.println(" Melting Pt: " + meltingPoint);
        System.out.println(" Boiling Pt: " + boilingPoint);
    }
    
}
