/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap4;

/**
 *
 * @author Hoang Anh
 */
public class Client {
    public static void main(String[] args) {
        ConcreateAggregate ca = new ConcreateAggregate(); 
        ca.addItem(new Item("Item 0"));
        ca.addItem(new Item("Item 1"));
        ca.addItem(new Item("Item 2"));
        ca.addItem(new Item("Item 3"));
        ca.addItem(new Item("Item 4"));
        
        ConcreateIterator ci = new ConcreateIterator(ca);
        System.out.println(ci.First().toString());
        System.out.println(ci.Next().toString());
        System.out.println(ci.Next().toString());
        System.out.println(ci.Next().toString());
        System.out.println(ci.Next().toString());
        System.out.println(ci.Next().toString());
    }
}
