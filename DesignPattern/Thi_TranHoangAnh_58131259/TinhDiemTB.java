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
public class TinhDiemTB extends Decorator{
    private float hsKT;

    
    public TinhDiemTB(float hsKT) {
        this.hsKT = hsKT;
    }
    
        
    protected void hienThiDiemTB() {
        float diemThi = super.getMonHoc().getDiemThi();
        float diemKT = super.getMonHoc().getDiemKT();        
        
        super.getMonHoc().setDiemTB((diemThi*(float)(1-hsKT) + diemKT*hsKT));
        
        System.out.println("Diem trung binh: " + super.getMonHoc().getDiemTB());
        System.out.println("He so kiem tra: " + hsKT);
    }
    
    @Override
    public void hienThi() {
        super.hienThi(); //To change body of generated methods, choose Tools | Templates.
        hienThiDiemTB();
    }

    
    
    
    public float getHsKT() {
        return hsKT;
    }

    public void setHsKT(float hsKT) {
        this.hsKT = hsKT;
    }
    
    
    
    
}
