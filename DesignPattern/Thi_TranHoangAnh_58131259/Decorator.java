/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Thi_TranHoangAnh_58131259;

/**
 *
 * @author Hoang Anh
 */
public class Decorator implements ICompoment{
    protected ICompoment component;
    
    
    @Override
    public void hienThi() {
        component.hienThi();
    }

    @Override
    public MonHoc getMonHoc() {
        return component.getMonHoc();
    }

    public void setComponent(ICompoment component) {
        this.component = component;
    }
            
}
