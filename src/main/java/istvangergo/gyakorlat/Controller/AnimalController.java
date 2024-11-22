package istvangergo.gyakorlat.Controller;

import istvangergo.gyakorlat.Repository.AnimalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AnimalController {
    @Autowired
    private AnimalRepository animalRepository;
    @GetMapping("/animals")
    public String getAnimals(Model model) {
        model.addAttribute("animals", animalRepository.findAll());
        return "animals";
    }
}
