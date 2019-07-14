/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Singleton;

/**
 *
 * @author Hoang Anh
 */
public class Singleton {
    private static Singleton instance;
    
    //Constructor

    public Singleton() {
        // create some data here
    }
    
    public static Singleton Instance() {
        if (instance == null) {
            instance = new Singleton();
        }
        
        return instance;
    }
}
