/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Thi_TranHoangAnh_58131259;

/**
 *
 * @author Hoang Anh
 */
public class MainDemo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ThongTinMonHoc ttmh = new ThongTinMonHoc();
        MonHoc mh = new MonHoc();
        mh.setTenMH("Van");
        mh.setSoTC(4);
        mh.setDiemThi(5);
        mh.setDiemKT(7);        
        ttmh.setMh(mh);                
        
        TinhDiemTB tdtb = new TinhDiemTB(ttmh);
        tdtb.setHsKT(0.5f);
                
        DiemHe4 dh4 = new DiemHe4(tdtb);
        
        KQXepLoai kqxl = new KQXepLoai(dh4);
        
        kqxl.hienThi();
    }
    
}
