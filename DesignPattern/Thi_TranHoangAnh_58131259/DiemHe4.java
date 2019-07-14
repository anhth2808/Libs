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
public class DiemHe4 extends Decorator{   
    
    protected void hienThiDiemHe4() {
        float temp = super.getMonHoc().getDiemTB();

        if (temp >= 8.5) {
            System.out.println("A(4.0)");
        } else if (temp >= 7) {
            System.out.println("B(3.0)");
        } else if (temp >= 5.5) {
            System.out.println("C(2.0)");
        } else if (temp >= 4) {
            System.out.println("D(1.0)");
        } else {
            System.out.println("F(0.0)");
        }
    }
    
    @Override
    public void hienThi() {
        
        super.hienThi(); //To change body of generated methods, choose Tools | Templates.
        hienThiDiemHe4();
    }
    
}
