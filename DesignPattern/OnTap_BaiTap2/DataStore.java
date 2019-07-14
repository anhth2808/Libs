/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap2;

import java.util.ArrayList;

/**
 *
 * @author Hoang Anh
 */
public class DataStore {
    private static DataStore ds;
    ArrayList<Sach> dsSach;
    
     
    
    // constructor
    protected DataStore() {
        dsSach = new ArrayList<>();
        dsSach.add(new Sach("001", "Sach toan", 15000, "Giao duc"));
        dsSach.add(new Sach("002", "Sach van", 20000, "Giao duc"));
        dsSach.add(new Sach("003", "Truyen kieu", 5000, "Ha Noi"));    
        dsSach.add(new Sach("004", "Than dong dat viet", 35000, "Kim Dong"));
        dsSach.add(new Sach("005", "Di toi mat trang", 120000, "Kim Dong"));
    }
    
    
    // singleton
    public static DataStore createInstance() {
        if (ds == null)
            ds = new DataStore();
        return ds;
    }

    
    // getter setter
    public ArrayList<Sach> getDsSach() {
        return dsSach;
    }

    public void setDsSach(ArrayList<Sach> dsSach) {
        this.dsSach = dsSach;
    }
    
    
    
}
