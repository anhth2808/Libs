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
public class ChocolateCondiment extends CondimentsDecoratorBase{

    private BeverageBase beverage;
    
    public ChocolateCondiment(BeverageBase beverage) {
        this.beverage = beverage;
        description = this.beverage.getDescription() + "+ Chocolate.";
    }

    @Override
    public double getCost() {
        return beverage.getCost() + 5;
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
