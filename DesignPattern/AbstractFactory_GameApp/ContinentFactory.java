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

// AbstractFactory
public abstract class ContinentFactory {
    // method
    abstract public Herbivore CreateHerbivore();
    abstract public Carnivore CreateCarnivore();
}
