/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap5;

/**
 *
 * @author Hoang Anh
 */
public class MonHocDB extends EntityDB<MonHoc> {

    @Override
    protected MonHoc findById(int id) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        for (int i = 0 ; i < super.getList().size(); i++) {
            if (super.getList().get(i).getMaMH() == id) {
                return super.getList().get(i);
            }
        }
        return null;
    }

    @Override
    protected int getKey(MonHoc t) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return t.getMaMH();
    }

    @Override
    protected void displayList() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        
    }
    
}
