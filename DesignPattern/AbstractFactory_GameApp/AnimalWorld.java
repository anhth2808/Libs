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
public class AnimalWorld {
    private Herbivore herbivore;
    private Carnivore carnivore;

    public AnimalWorld(ContinentFactory factory) {
        this.herbivore = factory.CreateHerbivore();
        this.carnivore = factory.CreateCarnivore();
    }
    
    public void RunFoodChain() {
        carnivore.Eat(herbivore);
    }
    
}
