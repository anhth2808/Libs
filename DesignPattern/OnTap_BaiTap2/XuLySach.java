/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap2;

import java.util.ArrayList;



/**
 *
 * @author Hoang Anh
 */

// subject
public class XuLySach {
    protected DataStore ds = DataStore.createInstance();
    IViewSach ivSach;
    
    public XuLySach() {
        
    }
    
    // method
    public void themSach() {        
        Sach temp = ivSach.themSach();
        
        boolean isExist = false;
        for (int i = 0 ; i < ds.dsSach.size(); i++) {
            if (ds.dsSach.get(i).getMaSach().equals(temp.getMaSach())) {
                isExist = true;
            }
        }
        
        if (!isExist) {
            ds.dsSach.add(temp);
        }
        
        ivSach.hienThiDS_Sach(ds.dsSach);                    
    }
    
    public void capNhatSach() {
        Sach temp = ivSach.capNhatSach();
        for (int i = 0 ; i < ds.dsSach.size(); i++) {
            if (ds.dsSach.get(i).getMaSach().equals(temp.getMaSach())) {
                ds.dsSach.set(i, temp);
                break;
            }
        }
        
        ivSach.hienThiDS_Sach(ds.dsSach);
    }
    
    public void xoaSach() {
        Sach temp = ivSach.xoaSach();
        for (int i = 0 ; i < ds.dsSach.size(); i++) {
            if (ds.dsSach.get(i).getMaSach().equals(temp.getMaSach())) {
                ds.dsSach.remove(i);
                System.out.println("Da xoa");
                break;
            }
        }
        
        ivSach.hienThiDS_Sach(ds.dsSach);
    }
    
    public void hienThiDanhSach() {
        ivSach.hienThiDS_Sach(ds.dsSach);  
    }

    public void setIvSach(IViewSach ivSach) {
        this.ivSach = ivSach;
    }
    
}
