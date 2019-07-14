/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BuilderPattern;

/**
 *
 * @author Hoang Anh
 */
public class BuilderMain {
    public static void main(String[] args) {
        Computer computer = new Computer.Builder()
                .addCpu("I3")
                .addMemory("3g ram")
                .addHardisk("300g")
                .addMonitor("day la monitor").build();
        System.out.println(computer.toString());
                
    }
}
