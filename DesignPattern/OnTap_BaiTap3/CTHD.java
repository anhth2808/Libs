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
public class CTHD {
    private String sanPham;
    private int soLuong;
    private int donGia;
    private double chietKhau;

    @Override
    public String toString() {
        return "San pham:" + sanPham + "\n" 
                + "So luong: " + soLuong + "\n" 
                + "Don gia: " + donGia + "\n"
                + "Chiet khau: " + chietKhau;
    }

    
    
    public static class Builder {
        private CTHD cthd;
        
        public Builder() {
            cthd = new CTHD();
        }
        
        
        public Builder addSanPham(String sanPham) {
            cthd.sanPham = sanPham;
            return this;
        }
        public Builder addSoLuong(int soLuong) {
            cthd.soLuong = soLuong;
            return this;
        }
        public Builder addDonGia(int donGia) {
            cthd.donGia = donGia;
            return this;
        }
        public Builder addChietKhau(double chietKhau) {
            cthd.chietKhau = chietKhau;
            return this;
        }
        
        
        
        public CTHD build() {
            return this.cthd;
        }
    }
}
