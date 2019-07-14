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
public class BlackTea extends BeverageBase{

    public BlackTea() {
        description = "Black tea from teabag";
    }

    @Override
    public double getCost() {
        return 5;
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
