/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap5;

/**
 *
 * @author Hoang Anh
 */
public class AppDemo {
    public static void main(String[] args) {
        SinhVienDB db = new SinhVienDB();
        System.out.println(db.add(new SinhVien(1, "Tran Van A", "28/1/2019", "Khanh Hoa")));
        System.out.println(db.add(new SinhVien(1, "Tran Van A", "28/1/2019", "Khanh Hoa")));
//        System.out.println(db.update(new SinhVien(1, "Tran Van A", "28/1/2019", "Nha trang")));
//        System.out.println(db.deleteByKey(1));
        System.out.println(db.findById(1).toString());
    }
}
