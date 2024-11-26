package istvangergo.gyakorlat.Controller;

import istvangergo.gyakorlat.Entity.Message;
import istvangergo.gyakorlat.Repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import java.time.LocalDateTime;

@Controller
public class MessageController {
    @Autowired
    private MessageRepository messageRepository;
    @PostMapping("/sendMessage")
    public String sendMessage(String message, Model model) {
        Message adminMessage = new Message();
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String name = (authentication != null && authentication.isAuthenticated() &&
                !authentication.getPrincipal().equals("anonymousUser"))
                ? authentication.getName()
                : "Vendég";

        adminMessage.setName(name);
        adminMessage.setMessage(message);
        adminMessage.setTimestamp(LocalDateTime.now());

        messageRepository.save(adminMessage);

        model.addAttribute("successMessage", "Your message has been sent successfully!");
        return "index";
    }
}