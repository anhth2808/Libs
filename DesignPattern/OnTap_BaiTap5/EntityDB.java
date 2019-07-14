/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap5;

import java.util.ArrayList;

/**
 *
 * @author Hoang Anh
 * @param <T>
 */
public abstract class EntityDB<T> {
    private ArrayList<T> list = new ArrayList<>();        
    
    
    public boolean add(T t) {
        int key = getKey(t);
        for (int i = 0 ; i < list.size(); i++) {
            if (getKey(list.get(i)) == key) {
                return false;
            }
        }
        
        return list.add(t);         
    }
    
    public int update(T t) {
        int key = getKey(t);
        for (int i = 0 ; i < list.size(); i++) {
            if (getKey(list.get(i)) == key) {
                list.set(i, t);
                return 1;
            }
        }
        return 0;
    }
    public int delete(T t) {
        int key = getKey(t);
        for (int i = 0 ; i < list.size(); i++) {
            if (getKey(list.get(i)) == key) {
                list.remove(list.get(i));
                return 1;
            }
        }
        
        return 0;
    }
    
    public int deleteByKey(int id) {
        T t = findById(id);
        if (t == null)
            return 0;
        else {
            list.remove(t);
            return 1;
        }
    }
    
    protected abstract T findById(int id);
    protected abstract int getKey(T t);
    protected abstract void displayList();
    
    
    // getter
    public ArrayList<T> getList() {
        return list;
    }
    
}
