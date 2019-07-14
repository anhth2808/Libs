/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap4;

import java.util.ArrayList;

/**
 *
 * @author Hoang Anh
 */
public class ConcreateAggregate extends Aggregate{
    private ArrayList<Object> listItem = new ArrayList<>();
    
    public int Count() {
        return this.listItem.size();
    }
    
    public Object getItem(int i) {
        return this.listItem.get(i);
    }
    public void addItem(Object obj) {
        this.listItem.add(obj);
    }
    
    @Override
    public Iterator CreateIterator() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return new ConcreateIterator(this);
    }
    
}
