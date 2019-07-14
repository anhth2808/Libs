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
public class Participant {
    private Chatroom chatroom;
    private String name;

    // contructor
    public Participant(String name) {
        this.name = name;
    }
    
    // prototies

    public Chatroom getChatroom() {
        return chatroom;
    }

    public void setChatroom(Chatroom chatroom) {
        this.chatroom = chatroom;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    // method
    public void Send(String to, String message) {
        chatroom.Send(name, to, message);
    }
    public void Recevice(String from, String message) {
        System.out.println("from " + from + " to " + this.name + ": " + message);
    }
}
