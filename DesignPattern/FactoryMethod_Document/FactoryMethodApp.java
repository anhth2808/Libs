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
public class FactoryMethodApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ArrayList<Document> docs = new ArrayList<>();
        docs.add(new Resume());
        docs.add(new Report());
        
        
    }
    
}
