/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap6;

/**
 *
 * @author Hoang Anh
 */
public class AppDemo {
     public static void main(String[] args) {
         Context ct = new Context();
         ct.setTinhToan(new Cong());
         System.out.println(ct.tinh(1, 2));
     }
}
