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
public class ShapeFactory {
    public IShape shape;

//    public ShapeFactory(IShape shape) {
//        this.shape = shape;
//    }
    
    public IShape getShape() {
        return this.shape;
    }
}
