/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package decorator;

/**
 *
 * @author Hoang Anh
 */
public class MainDecorator {
    public static void main(String[] args) {
        BeverageBase blackTea = new BlackTea();
        
        BeverageBase a = new MilkCondiment(new BlackTea());
        
        
        System.out.println(a.getDescription());                
        System.out.println(a.getCost());
    }
}
