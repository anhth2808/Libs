/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Decorator_LibaryItem;

import java.util.ArrayList;

/**
 *
 * @author Hoang Anh
 */
public class Borrowable extends Decorator{
    protected ArrayList borrower = new ArrayList<>();
    
    
    public Borrowable(LibraryItem libraryItem) {
        super(libraryItem);
    }
    
    
    public void BorrowItem(String name) {
        borrower.add(name);
        int temp = libraryItem.getNumCopies();
        temp--;
        libraryItem.setNumCopies(temp);
    }
    
    public void ReturnItem(String name) {
        borrower.remove(name);
        int temp = libraryItem.getNumCopies();
        temp++;
        libraryItem.setNumCopies(temp);
    }

    @Override
    public void Display() {
        super.Display(); //To change body of generated methods, choose Tools | Templates.
        for (int i = 0 ; i < borrower.size(); i++) {
            System.out.println("borrower: " + borrower.get(i));
        }    
    }
   
    
}
