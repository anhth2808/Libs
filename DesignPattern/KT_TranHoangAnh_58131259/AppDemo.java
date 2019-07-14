/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package KT_TranHoangAnh_58131259;

import java.util.ArrayList;

/**
 *
 * @author Hoang Anh
 */
public class AppDemo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        QLSach ql = new QLSach();
        
        ArrayList<Sach> temp = new ArrayList<>();
        temp.add(new Sach(1, "Sach 1", 1000, 3, "Kim Dong"));
        temp.add(new Sach(2, "Sach 2", 1000, 60, "Giao Duc"));
        temp.add(new Sach(3, "Sach 3", 25000, 60, "Giao Duc"));
        temp.add(new Sach(4, "Sach 4", 26000, 60, "Giao Duc"));
        temp.add(new Sach(1, "Sach 1", 1000, 3, "Kim Dong"));

        for (int i = 0 ; i < temp.size(); i++) {
            System.out.println(ql.add(temp.get(i)));
        }
        
        System.out.println("----qllist-----"); 
        ql.printList(ql.list);        
       
        System.out.println("----sublist-----");  
        ql.setCompare(new CompareByPrice());
        ArrayList<Sach> sublist = ql.getSublist(new Sach(3, "Sach 3", 25000, 60, "Giao Duc"));
        ql.printList(sublist);
        
        System.out.println("----sublist-----");
        ql.setCompare(new CompareByQuantity());
        sublist = ql.getSublist(new Sach(3, "Sach 3", 25000, 50, "Giao Duc"));
        ql.printList(sublist);
    }
    
}
