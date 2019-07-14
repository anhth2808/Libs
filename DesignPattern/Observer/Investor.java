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
// conreteObserver
public class Investor implements IInvestor {
    private String name;
    private double observerState;
    private Stock stock;
    
    // Constuctor 

    public Investor(String name) {
        this.name = name;
    }
    
    // method

    @Override
    public void Update(Stock stock) {
        System.out.println("Notified investor " + name + " of " + stock.getSymbol() + "'s change to " + stock.getPrice());
        observerState = stock.getState();
    }

    public Stock getStock() {
        return stock;
    }
    
    
}
