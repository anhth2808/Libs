/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MediatorChatroom;

/**
 *
 * @author Hoang Anh
 */
public class NonBeatleParticipant extends Participant {

    public NonBeatleParticipant(String name) {
        super(name);
    }

    @Override
    public void Recevice(String from, String message) {
        System.out.println("To a non-Beatle: ");
        super.Recevice(from, message); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
