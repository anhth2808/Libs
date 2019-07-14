/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CompositePattern;

import java.util.ArrayList;

/**
 *
 * @author Hoang Anh
 */
// Composite
public class Composite implements IComponent {
    private String name;
    private ArrayList children = new ArrayList();

    // constructor
    public Composite(String name) {
        this.name = name;
    }
    
    
    
    @Override
    public void Add(IComponent c) {
        children.add(c);
    }

    @Override
    public void Remove(IComponent c) {
        children.remove(c);
    }

    @Override
    public void Display(int depth) {
        String temp = "";
        for (int i = 0 ; i < depth; i++) {
            temp += "-";
        }
        System.out.println( temp + name);
        
        for (int i = 0; i < children.size(); i++ ) {
            IComponent c = (IComponent) children.get(i);
            c.Display(depth + 2);
        }
    }
    
}
