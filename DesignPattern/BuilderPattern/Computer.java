/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BuilderPattern;

import java.util.ArrayList;

/**
 *
 * @author Hoang Anh
 */
public class Computer {
    String cpu, memory, hardisk, monitor;
    ArrayList<String> complements = new ArrayList<>();

    @Override
    public String toString() {
        
        String str ="";
        for (int i = 0 ; i < complements.size(); i++) {
            str = str + ", " + complements.get(i);
        }
        
        
        return "Computer{" + "cpb=" + cpu + ", memory=" + memory + ", hardisk=" + hardisk + ", monitor=" + monitor + ", complements=" + complements + '}';
    }
    
    public static class Builder {
        private Computer computer;

        public Builder() {
            computer = new Computer();
        }
        
        public Builder addCpu(String cpu) {
            computer.cpu = cpu;
            return this;
        }
        
        public Builder addMemory(String memory) {
            computer.memory = memory;
            return this;
        }
        
        public Builder addHardisk(String hardisk) {
            computer.hardisk = hardisk;
            return this;
        }
        
        public Builder addMonitor(String monitor) {
            computer.monitor = monitor;
            return this;
        }
        
        public Builder addComplements(String str) {
            return this;
        }
        
        public Computer build() {
            return this.computer;    
        }
    }
}