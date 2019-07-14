/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package KT_TranHoangAnh_58131259;

/**
 *
 * @author Hoang Anh
 */
public class Sach {
    private int id;
    private String tenSach;
    private int giaBia;
    private int soLuong;
    private String nhaXB;   

    public Sach(int id, String tenSach, int giaBia, int soLuong, String nhaXB) {
        this.id = id;
        this.tenSach = tenSach;
        this.giaBia = giaBia;
        this.soLuong = soLuong;
        this.nhaXB = nhaXB;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public String getNhaXB() {
        return nhaXB;
    }

    public void setNhaXB(String nhaXB) {
        this.nhaXB = nhaXB;
    }
    
    
    
    
    
}
