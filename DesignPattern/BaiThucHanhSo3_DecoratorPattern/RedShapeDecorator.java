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
public class RedShapeDecorator extends ShapeDecorator {
    //public IShape shape;

    public RedShapeDecorator(IShape shape) {
        super(shape);
    }
    
    @Override
    public void draw() {
        super.draw(); //To change body of generated methods, choose Tools | Templates.
        setRedBorder();
    }    
    
    private void setRedBorder() {
       System.out.println("Set Red Border");
    }
    
}
