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
public class DecoratorPatternDemo {
    public static void main(String[] args) {
        IShape circle = new Circle();
        IShape redShape = new RedShapeDecorator(circle);
//        redShape = new RedShapeDecorator(redShape);
        IShape blueShape = new BlueShapeDecorator(redShape);
        blueShape.draw();

    }   
}
