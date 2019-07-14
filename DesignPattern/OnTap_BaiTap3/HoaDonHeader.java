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
public class HoaDonHeader {
    private String maHoaDon;
    private String ngayBan;
    private String tenKhachHang;

    public String getMaHoaDon() {
        return maHoaDon;
    }

    public void setMaHoaDon(String maHoaDon) {
        this.maHoaDon = maHoaDon;
    }

    public String getNgayBan() {
        return ngayBan;
    }

    public void setNgayBan(String ngayBan) {
        this.ngayBan = ngayBan;
    }

    public String getTenKhachHang() {
        return tenKhachHang;
    }

    public void setTenKhachHang(String tenKhachHang) {
        this.tenKhachHang = tenKhachHang;
    }

    @Override
    public String toString() {
        return "Ma hoa don:" + maHoaDon + "\n" 
                + "Ngay ban: " + ngayBan + "\n" 
                + "Ten khach hang: " + tenKhachHang;
    }
    
    
    
}
