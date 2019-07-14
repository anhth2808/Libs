/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaiThucHanhSo3_DecoratorPattern;

/**
 *
 * @author Hoang Anh
 */
public class ShapeDecorator implements IShape{
    protected IShape shape;

    // constructor
    public ShapeDecorator(IShape shape) {
        this.shape = shape;
    }

    @Override
    public void draw() {
        shape.draw();
    }
            
   
    
    
}
