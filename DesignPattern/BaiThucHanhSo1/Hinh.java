/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaiThucHanhSo1;

import java.util.ArrayList;
import java.util.function.BiFunction;

/**
 *
 * @author Hoang Anh
 */
abstract public class Hinh implements IHinh{
    protected ArrayList para = new ArrayList();
    protected float area;

    // constructor
    public Hinh() {
    }

    
    // getter setter
    public ArrayList getPara() {
        return para;
    }

    public void setPara(ArrayList para) {
        this.para = para;
    }

    public float getArea() {
        return area;
    }

    public void setArea(float area) {
        this.area = area;
    }

    
    public void NhapThamSo(float a, float b) {
       
    }
    
    public void TinhDienTich() {
       
    }    
    
    
}
