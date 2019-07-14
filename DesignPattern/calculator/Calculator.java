/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculator;

/**
 *
 * @author Hoang Anh
 */
public class Calculator {
    private int total = 0;
    
    public void Operation(char operator, int operand) {
        switch(operator) {
            case '+':
                total += operand;
                break;
            case '-':
                total -= operand;
                break;
            case '*':
                total *= operand;
                break;
            case '/':
                total /= operand;
                break;
        }
        System.out.println("Total = " + total);
    }
}
