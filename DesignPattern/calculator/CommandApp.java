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
public class CommandApp {
    public static void main(String args[]) {
        User user = new User();
        
        user.Compute('+', 100);
        user.Compute('+', 10);
        user.Compute('+', 5);
        user.Undo(2);
        user.Compute('+', 20);
    }}
