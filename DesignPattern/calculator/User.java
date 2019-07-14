/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculator;
import java.util.ArrayList;
/**
 *
 * @author Hoang Anh
 */
public class User {
    private Calculator calculator = new Calculator();
    private ArrayList<Command> commands = new ArrayList<Command>();
    private int current = 0;
    
    public void Redo (int levels) {
//        System.out.println("--- ReDo);
        for (int i = 0; i < levels; i++)
            if (current < commands.size() - 1)
                    commands.get(current++).Execute();
    }
    
    public void Undo (int levels) {
//        System.out.println("--- ReDo);
        for (int i = 0; i < levels; i++)
            if (current > 0)
                    commands.get(--current).UnExecute();
    }
    
    public void Compute(char operator, int operand) {
        Command command = new CalculatorCommand(calculator, operator, operand);
        command.Execute();
        
        commands.add(command);
        current++;
    }
    
}
