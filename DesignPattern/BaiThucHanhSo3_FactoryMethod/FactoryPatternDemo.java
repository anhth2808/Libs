/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaiThucHanhSo3_FactoryMethod;

/**
 *
 * @author Hoang Anh
 */
public class FactoryPatternDemo {
    public static void main(String[] args) {
        IShape a = new Rectangle();
        a.draw();
        
    }    
}
