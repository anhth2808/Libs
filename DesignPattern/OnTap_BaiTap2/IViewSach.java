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

// IObserver
public interface IViewSach {
    
    
    public Sach themSach();
    public Sach capNhatSach();
    public Sach xoaSach();
    public void hienThiDS_Sach(ArrayList dsSach);
}
