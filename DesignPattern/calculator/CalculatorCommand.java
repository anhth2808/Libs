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
public class CalculatorCommand extends Command{
    char operator;
    int operand;
    Calculator calculator;
    
    
    
    public CalculatorCommand(Calculator calculator, char operator, int operand) {
        this.calculator = calculator;
        this.operator = operator;
        this.operand = operand;
    }

    public void setOperator(char operator) {
        this.operator = operator;
    }

    public void setOperand(int operand) {
        this.operand = operand;
    }

    
    
    @Override
    public void Execute() {
        calculator.Operation(operator, operand);
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void UnExecute() {
        calculator.Operation(Undo(operator), operand);
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    private char Undo(char operator) {
        char undo = ' ';
        switch(operator) {
            case '+':
                undo = '-';
                break;
            case '-':
                undo = '+';
                break;
            case '*':
                undo = '/';
                break;
            case '/':
                undo = '*';
                break;
        }
        return undo;
    }
}

