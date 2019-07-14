/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AbstractFactory_GameApp;

/**
 *
 * @author Hoang Anh
 */
// ProductB1
public class Lion extends Carnivore {

    @Override
    public void Eat(Herbivore h) {
        System.out.println(this.toString() + " eat " + h.toString());
    }

    @Override
    public String toString() {
        return "Lion";
    }
    
    
}
