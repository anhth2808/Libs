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
public class Client {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        IComponent root = new Composite("root");
        root.Add(new Leaf("Leaf A"));
        root.Add(new Leaf("Leaf B"));
        IComponent comp = new Composite("Composite X");
        comp.Add(new Leaf("Leaf XA"));
        comp.Add(new Leaf("Leaf XB"));
        
        root.Add(comp);
        root.Add(new Leaf("Leaf C"));
        
        root.Display(1);
    }
    
}
