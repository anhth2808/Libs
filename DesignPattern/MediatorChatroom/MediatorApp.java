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
public class MediatorApp {
    public static void main(String[] args) {
        Chatroom c = new Chatroom();
        
        Participant George = new BeatleParticipant("George");
        Participant Paul = new BeatleParticipant("Paul");
        Participant Ringo = new BeatleParticipant("Ringo");
        Participant John = new BeatleParticipant("John");
        Participant Yoko = new NonBeatleParticipant("Yoko");
        
        c.Register(George);
        c.Register(Paul);
        c.Register(Ringo);
        c.Register(John);
        c.Register(Yoko);
        
        
        Yoko.Send("John", "Hi ohn ! ");
        Paul.Send("Ringo", "All u need is love");
        Ringo.Send("George", "My sweet Lord");
        Paul.Send("John", "Can't buy me love");
        John.Send("Yoko", "My sweet love");
        
    }
}
