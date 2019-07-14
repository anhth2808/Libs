/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap2;

/**
 *
 * @author Hoang Anh
 */
public class Sach {
    private String maSach;
    private String tenSach;
    private int giaBia;
    private String nhaSanXuat;   

    public Sach() {
    }
        
    public Sach(String maSach, String tenSach, int giaBia, String nhaSanXuat) {
        this.maSach = maSach;
        this.tenSach = tenSach;
        this.giaBia = giaBia;
        this.nhaSanXuat = nhaSanXuat;
    }

    
    
    
    public String getMaSach() {
        return maSach;
    }

    public void setMaSach(String maSach) {
        this.maSach = maSach;
    }

    public String getTenSach() {
        return tenSach;
    }

    public void setTenSach(String tenSach) {
        this.tenSach = tenSach;
    }

    public int getGiaBia() {
        return giaBia;
    }

    public void setGiaBia(int giaBia) {
        this.giaBia = giaBia;
    }

    public String getNhaSanXuat() {
        return nhaSanXuat;
    }

    public void setNhaSanXuat(String nhaSanXuat) {
        this.nhaSanXuat = nhaSanXuat;
    }
    
    
}
