package serpas.josue.chattingpracticeapp;

import java.util.HashMap;
import java.util.Map;

public class User {

    private String username;
    private Map<String, Chat> userChats = new HashMap<>();

    public User(String username) {
        this.username = username;
    }

    public String getUsername() {
        return this.username;
    }

    public Chat getChat(String chatId) {
        return userChats.get(chatId);
    }

    public void joinChat(Chat chat) {
        userChats.put(chat.getChatId(), chat);
        chat.joinChat(this);
    }
}
