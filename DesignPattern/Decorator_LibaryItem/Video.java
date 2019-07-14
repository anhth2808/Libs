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
public class Video extends LibraryItem {
    private String director;
    private String title;
    private int playTime;

    public Video(String director, String title, int numCopies, int playTime) {
        this.director = director;
        this.title = title;
        this.playTime = playTime;
        super.setNumCopies(numCopies);
    }    
    
    
    @Override
    public void Display() {
        System.out.println("\nVideo ------ ");
        System.out.println(" director: " + director);
        System.out.println(" Title: " + title);
        System.out.println(" # Copies: " + super.getNumCopies());
        System.out.println(" Playtime: " + playTime);        
    }
    
}
