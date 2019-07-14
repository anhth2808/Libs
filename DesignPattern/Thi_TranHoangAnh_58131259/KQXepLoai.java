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
public class KQXepLoai extends Decorator{
    protected void hienThiKQ() {
        float temp = super.getMonHoc().getDiemTB();
        if (temp >= 5) {
            System.out.print("Dat");
        } else if (temp >= 4) {
            System.out.println("Thi lai");
        } else
            System.out.println("Hoc lai");            
    }

    @Override
    public void hienThi() {
        super.hienThi(); //To change body of generated methods, choose Tools | Templates.
        hienThiKQ();
    }
    
}
