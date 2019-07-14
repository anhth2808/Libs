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

// Target
abstract public class ChemicalCompound {
    protected String name;
    protected float boilingPoint;
    protected float meltingPoint;
    protected double molecularWeight;
    protected String molecularFormula;

    // Constructor
    public ChemicalCompound(String name) {
        this.name = name;
    }

    
    // getter setter
    public String getName() {
        return name;
    }

    public float getBoilingPoint() {
        return boilingPoint;
    }

    public float getMeltingPoint() {
        return meltingPoint;
    }

    public double getMolecularWeight() {
        return molecularWeight;
    }

    public String getMolecularFormula() {
        return molecularFormula;
    }
    
    
    
}
