package serpas.josue.chattingpracticeapp;

import java.util.HashMap;
import java.util.Map;

public class Chat {

    private String chatId;
    private boolean publicChat;
    private Map<String, User> users = new HashMap<>();

    //Chats are public by default unless otherwise specified
    public Chat(String chatId) {
        this.chatId = chatId;
        this.publicChat = true;
    }

    public Chat(String chatId, boolean isPublic) {
        this.chatId = chatId;
        this.publicChat = isPublic;
    }

    public String getChatId() {
        return chatId;
    }

    public boolean isPublicChat() {
        return publicChat;
    }

    public int getParticipantAmount() { return users.size();}

    public void joinChat(User user) {
        users.put(user.getUsername(), user);
    }
}