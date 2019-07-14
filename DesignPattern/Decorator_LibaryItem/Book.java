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
// ConcreteComponent
public class Book extends LibraryItem {

    private String author;
    private String title;

    public Book(String author, String title, int numCopies) {
        this.author = author;
        this.title = title;
        super.setNumCopies(numCopies);
    }
    
    
    
    @Override
    public void Display() {
        System.out.println("\nBook ------ ");
        System.out.println(" Author: " + author);
        System.out.println(" Title: " + title);
        System.out.println(" # Copies: " + super.getNumCopies());
    }
    
}
