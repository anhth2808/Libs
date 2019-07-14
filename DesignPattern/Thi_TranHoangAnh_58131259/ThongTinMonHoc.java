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
public class ThongTinMonHoc implements ICompoment {
    private MonHoc mh;
    
    
    
    @Override
    public void hienThi() {
        System.out.println("TenMH:" + mh.getTenMH() + " " + "So tin chi: " + mh.getSoTC() + " " + "Diem kiem tra: " + mh.getDiemKT() + " " + "Diem thi: "+mh.getDiemThi() );
    }

    @Override
    public MonHoc getMonHoc() {
        return mh;
    }

    public void setMh(MonHoc mh) {
        this.mh = mh;
    }
    
    
    
}
