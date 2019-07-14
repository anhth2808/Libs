/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Observer;

/**
 *
 * @author Hoang Anh
 */
public class ObserverApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // Create investors 
        Investor s = new Investor("Sorros");
        Investor b = new Investor ("Brekshire");
        // Create IBM stock and attach investors
        IBM ibm = new IBM("IBM", 120.00);
        ibm.Attach(s);
        ibm.Attach(b);
        
        // Change price, which notifies investors
        ibm.setPrice(120.11);
        ibm.setPrice(120.12);
        ibm.setPrice(120.13);
        ibm.setPrice(120.14);
    }
    
}
