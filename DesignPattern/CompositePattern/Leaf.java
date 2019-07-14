/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CompositePattern;

/**
 *
 * @author Hoang Anh
 */
public class Leaf implements IComponent{
    private String name;
    
    //constuctor

    public Leaf(String name) {
        this.name = name;
    }
    
    
    @Override
    public void Add(IComponent c) {
        System.out.println("Cannot add to a leaf");
    }

    @Override
    public void Remove(IComponent c) {
        System.out.println("Cannot remove to a leaf");
    }

    @Override
    public void Display(int depth) {
        String temp = "";
        for (int i = 0 ; i < depth; i++) {
            temp += "-";
        }
        System.out.println( temp + name);

    }
    
}
