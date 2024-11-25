package istvangergo.gyakorlat.Controller;

import istvangergo.gyakorlat.Entity.Animal;
import istvangergo.gyakorlat.Repository.AnimalRepository;
import istvangergo.gyakorlat.Service.AnimalNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class AnimalController {
    @Autowired
    private AnimalRepository animalRepository;
    @GetMapping("/api/animals")
    public Iterable<Animal> getAnimals(Model model) {
        Iterable<Animal> animals = animalRepository.findAll();
        return animals;
    }
    @GetMapping("/api/animals/{id}")
    public Animal getAnimal(@PathVariable int id) {
        return animalRepository.findById(id).orElseThrow(() -> new AnimalNotFoundException(id));
    }
    @PutMapping("api/animals/{id}")
    public Animal updateAnimal(@PathVariable int id, @RequestBody Animal animal) {
        return animalRepository.findById(id).map(a->{
            a.setName(animal.getName());
            a.setValue(animal.getValue());
            a.setCategory(animal.getCategory());
            a.setYear(animal.getYear());
            return animalRepository.save(a);
        })
        .orElseGet(()-> {
            animal.setId(id);
            return animalRepository.save(animal);
        });
    }
    @DeleteMapping("/api/animals{id}")
    public void deleteAnimal(@PathVariable int id) {
        animalRepository.deleteById(id);
    }
}
