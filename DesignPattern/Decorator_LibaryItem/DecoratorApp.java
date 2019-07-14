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
public class DecoratorApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Book book = new Book("Schnell", "My Home", 10);
        Video video = new Video("Spilberg", "Schindler's list", 23, 60);
        book.Display();
        video.Display();
        
        Borrowable borrowvideo = new Borrowable(video);
        borrowvideo.BorrowItem("Cindy Lopez");
        borrowvideo.BorrowItem("Samuel King");
        
        borrowvideo.Display();
    }
    
}
