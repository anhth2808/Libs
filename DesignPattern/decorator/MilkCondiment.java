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
public class MilkCondiment extends CondimentsDecoratorBase {
    private BeverageBase beverage;

    public MilkCondiment(BeverageBase beverage) {
        this.beverage = beverage;
        description = this.beverage.getDescription() + " + Milk";
    }

    @Override
    public double getCost() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return beverage.getCost() + 3;
    }
    
    
}
