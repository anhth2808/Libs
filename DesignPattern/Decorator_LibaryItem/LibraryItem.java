/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Decorator_LibaryItem;

/**
 *
 * @author Hoang Anh
 */
// Component
abstract public class LibraryItem {
    private int numCopies;

    public int getNumCopies() {
        return numCopies;
    }

    public void setNumCopies(int numCopies) {
        this.numCopies = numCopies;
    }
    
    abstract public void Display();
}
