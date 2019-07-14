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
public class GameApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // Create and run the Africa animal world
        ContinentFactory africa = new AfricaFactory();
        AnimalWorld world = new AnimalWorld(africa);
        world.RunFoodChain();
        
        // Create and run the Africa animal world
        ContinentFactory america = new AmericaFactory();
        world = new AnimalWorld(america);
        world.RunFoodChain();
    }
    
}
