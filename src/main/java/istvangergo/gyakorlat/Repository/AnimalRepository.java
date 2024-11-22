package istvangergo.gyakorlat.Repository;

import istvangergo.gyakorlat.Entity.Animal;
import org.springframework.data.repository.CrudRepository;
public interface AnimalRepository extends CrudRepository<Animal, Integer>{
}
