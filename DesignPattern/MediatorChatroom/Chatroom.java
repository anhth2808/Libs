/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MediatorChatroom;

import java.util.Hashtable;



/**
 *
 * @author Hoang Anh
 */
public class Chatroom implements IChatroom {
    Hashtable participants = new Hashtable();

    
    
    @Override
    public void Register(Participant participant) {
        if  (participants.get(participant.getName()) == null) {
            participants.put(participant.getName(), participant);
        }
        participant.setChatroom(this);
        
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void Send(String from, String to, String message) {
        Participant pto = (Participant)participants.get(to);
        if (pto != null) {
            pto.Recevice(from, message);
        }
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    

    
}
