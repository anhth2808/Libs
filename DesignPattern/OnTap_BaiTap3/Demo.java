/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap3;

/**
 *
 * @author Hoang Anh
 */
public class Demo {
    public static void main(String[] args) {
        CTHD cthd1 = new CTHD.Builder()
                .addSanPham("Xa phong")
                .addDonGia(20000)
                .addSoLuong(20)
                .addChietKhau(0.1)
                .build();
        CTHD cthd2 = new CTHD.Builder()
                .addSanPham("Gach")
                .addDonGia(10000)
                .addSoLuong(2)
                .addChietKhau(0.01)
                .build();
             
                
        
        
        HoaDon hoaDon = new HoaDon.Builder()
                .addHoadDonHeader_maHoaDon("01")
                .addHoadDonHeader_ngayBan("20/11/2018")
                .addHoadDonHeader_tenKhachHang("Tran Hoang Anh")
                .addCTHD(cthd1)
                .addCTHD(cthd2)
                .build();
        System.out.println(hoaDon.toString());
    }
}
