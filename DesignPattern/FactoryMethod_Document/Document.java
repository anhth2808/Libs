/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FactoryMethod_Document;

import java.util.ArrayList;

/**
 *
 * @author Hoang Anh
 */
abstract public class Document {
    protected ArrayList pages = new ArrayList<>();
        
    // constructor
    public Document() {
        this.CreatePage();
    }

    
    // getter setter
    public ArrayList getPages() {
        return pages;
    }

    public void setPages(ArrayList pages) {
        this.pages = pages;
    }
    
    
    abstract public void CreatePage();
}
