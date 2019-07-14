package decorator;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Hoang Anh
 */
public class GreenTea extends BeverageBase{

    public GreenTea() {
        description = "Green leaf tea";
    }

    @Override
    public double getCost() {
        return 8;
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
