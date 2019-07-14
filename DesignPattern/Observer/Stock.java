/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Observer;

import java.util.ArrayList;

/**
 *
 * @author Hoang Anh
 */

// subject
abstract public class Stock {
    protected String symbol;
    protected double price;
    private ArrayList<Investor> investors = new ArrayList<>();
    
    // constructor

    public Stock(String symbol, double price) {
        this.symbol = symbol;
        this.price = price;
    }
    
    // method
    
    public void Attach(Investor investor) {
        investors.add(investor);
    }
    public void Detach(Investor investor) {
        investors.remove(investor);        
    }
    public void Notify() {
        for (int i = 0 ; i < investors.size(); i++) {
            investors.get(i).Update(this);
        }        
    }
    
    // getter setter

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
        Notify();
    }
    
    public double getState() {
        return price;
    }
}
