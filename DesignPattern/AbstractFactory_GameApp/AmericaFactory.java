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
// concreteFactory2
public class AmericaFactory extends ContinentFactory {

    @Override
    public Herbivore CreateHerbivore() {
        return new Bison();
    }

    @Override
    public Carnivore CreateCarnivore() {
        return new Wolf();
    }
    
}
