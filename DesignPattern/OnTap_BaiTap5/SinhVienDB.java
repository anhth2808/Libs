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
public class SinhVienDB extends EntityDB<SinhVien>{
    
    
    @Override
    protected SinhVien findById(int id) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        for (int i = 0 ; i < super.getList().size(); i++) {
            if (super.getList().get(i).getMaSV() == id) {
                return super.getList().get(i);
            }
        }
        return null;
    }

    @Override
    protected int getKey(SinhVien t) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return t.getMaSV();
    }

    @Override
    protected void displayList() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
    
}
