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
public class ConcreateIterator extends Iterator{
    private ConcreateAggregate ca;
    private int currentPos = 0;
    
    // constructor
    public ConcreateIterator(ConcreateAggregate ca) {
        this.ca = ca;
    }
        
    
    
    @Override
    public Object First() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        currentPos = 0;       
        return this.ca.getItem(currentPos);
    }

    @Override
    public Object Next() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        currentPos++;
        if (isDone()) {
            currentPos = 0;
            return this.ca.getItem(currentPos);
        }
        return this.ca.getItem(currentPos);
        
    }

    @Override
    public Boolean isDone() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        if (currentPos == ca.Count())
            return true;
        return false;
    }

    @Override
    public Object CurrentItem() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return ca.getItem(currentPos);
    }
    
}
