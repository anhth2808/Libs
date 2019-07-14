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
public class CompareByPrice implements ICompare<Sach> {

    
    @Override
    public int compare(Sach t1, Sach t2) {
        if (t1.getGiaBia() < t2.getGiaBia()) {
            return -1;
        } else if (t1.getGiaBia() == t2.getGiaBia()) {
            return 0;
        }
        return 1;
    }
    
}
