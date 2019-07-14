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
abstract public class EntityManager<T> {
    private ICompare<T> compare;
    protected ArrayList<T> list = new ArrayList<>();
    
    
    public boolean add(T t) {    
        for (int i = 0; i < list.size(); i++) {
            if (getKey(list.get(i)) == getKey(t)) {
                return false;
            }
        }

        return list.add(t);
    }
    
    public ArrayList<T> getSublist(T t) {
        ArrayList<T> sublist = new ArrayList<>();
        
        for (int i = 0; i < list.size(); i++) {
            if (compare.compare(list.get(i), t) >= 0) {
                sublist.add(list.get(i));
            }
        }
        return sublist;
    }
    
    
    abstract protected int getKey(T t);

    public void setCompare(ICompare<T> compare) {
        this.compare = compare;
    }
        
}
