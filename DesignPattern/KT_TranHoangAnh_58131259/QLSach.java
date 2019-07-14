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
public class QLSach extends EntityManager<Sach>{
        
    public void printList(ArrayList<Sach> list) {
        for (int i = 0; i < list.size() ; i++) {
            System.out.println(list.get(i).getId()+ " " + list.get(i).getTenSach() + " " + list.get(i).getGiaBia() + " " + list.get(i).getSoLuong()+ " " + list.get(i).getNhaXB());
        }
    }
        
    
    @Override
    protected int getKey(Sach t) {
        return t.getId();
    }
    
    
    
}
