/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap2;

import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Hoang Anh
 */

// ob
public class SachClient implements IViewSach{
    public XuLySach xl = new XuLySach();

    // constructor
    public SachClient() {
        xl.setIvSach(this);
    }

    
    
    @Override
    public Sach themSach() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        Scanner in = new Scanner(System.in); 

        System.out.println("Nhap ma sach");
        String maSach = in.nextLine();

        System.out.println("Nhap ten sach");
        String tenSach = in.nextLine();

        System.out.println("Nhap gia bia");
        String giaBia = in.nextLine();
        
        System.out.println("Nhap nha san xuat");
        String nhaSanXuat = in.nextLine();
        
        Sach sach = new Sach(maSach, tenSach, Integer.parseInt(giaBia), nhaSanXuat);
        
        return sach;
    }

    @Override
    public Sach capNhatSach() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//        xl.capNhatSach();
        Scanner in = new Scanner(System.in); 

        System.out.println("Nhap ma sach can cap nhat");
        String maSach = in.nextLine();

        System.out.println("Nhap ten sach");
        String tenSach = in.nextLine();

        System.out.println("Nhap gia bia");
        String giaBia = in.nextLine();
        
        System.out.println("Nhap nha san xuat");
        String nhaSanXuat = in.nextLine();
        
        Sach sach = new Sach(maSach, tenSach, Integer.parseInt(giaBia), nhaSanXuat);

        return sach;

    }

    @Override
    public Sach xoaSach() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        Scanner in = new Scanner(System.in); 

        System.out.println("Nhap ma sach can xoa");
        String maSach = in.nextLine();
        
//        Sach sach = new Sach(maSach, "", 0, "");
        Sach sach = new Sach();
        sach.setMaSach(maSach);
        return sach;
    }

    @Override
    public void hienThiDS_Sach(ArrayList dsSach) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        System.out.println("Danh sach:");
        for (int i = 0 ; i < dsSach.size(); i++) {
            Sach s = (Sach)dsSach.get(i);
            System.out.println(s.getMaSach());
            System.out.println(s.getTenSach());
            System.out.println(s.getGiaBia());
            System.out.println(s.getNhaSanXuat());
            System.out.println("================");
        }

    }

    public void setXl(XuLySach xl) {
        this.xl = xl;
    }
    
}
