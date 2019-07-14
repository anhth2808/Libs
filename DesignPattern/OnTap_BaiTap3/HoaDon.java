/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap3;

import java.util.ArrayList;

/**
 *
 * @author Hoang Anh
 */
public class HoaDon {
    HoaDonHeader hoaDonHeader = new HoaDonHeader();
    ArrayList<CTHD> cthd = new ArrayList<>();

    @Override
    public String toString() {
        String str = "";
        for (int i = 0; i < cthd.size(); i++ ) {
            str += cthd.get(i).toString() + "\n--------------\n";
        }
        return "HOA DON\n" + hoaDonHeader.toString()+ "\n--\n" + "Chi tiet hoa don: \n" + str;
    }
    
    
    
    
    
    public static class Builder {
        private HoaDon hoaDon;

        
        public Builder() {
            hoaDon = new HoaDon();
        }
        
        public Builder addHoadDonHeader_maHoaDon(String maHoaDon) {
            hoaDon.hoaDonHeader.setMaHoaDon(maHoaDon);
            return this;
        }
        
        public Builder addHoadDonHeader_ngayBan(String ngayBan) {
            hoaDon.hoaDonHeader.setNgayBan(ngayBan);
            return this;
        }
        public Builder addHoadDonHeader_tenKhachHang(String tenKhachHang) {
            hoaDon.hoaDonHeader.setTenKhachHang(tenKhachHang);
            return this;
        }
        
        
        public Builder addCTHD(CTHD cthd) {
            hoaDon.cthd.add(cthd);
            return this;
        }
        
        public HoaDon build() {
            return this.hoaDon;
        }
        
    }
    

}
