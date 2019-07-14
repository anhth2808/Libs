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

// Decorator
abstract public class Decorator extends LibraryItem{
    protected LibraryItem libraryItem;

    public Decorator(LibraryItem libraryItem) {
        this.libraryItem = libraryItem;
    }

    @Override
    public void Display() {
        libraryItem.Display();
    }    
    
    
}
