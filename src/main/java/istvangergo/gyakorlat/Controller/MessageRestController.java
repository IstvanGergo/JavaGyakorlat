package istvangergo.gyakorlat.Controller;

import istvangergo.gyakorlat.Entity.Message;
import istvangergo.gyakorlat.Repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MessageRestController {
    @Autowired
    private MessageRepository messageRepository;
    @GetMapping("/getMessages")
    public Iterable<Message> getMessages(Model model) {
        return messageRepository.findAll();
    }
}
