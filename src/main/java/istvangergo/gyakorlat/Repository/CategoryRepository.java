package istvangergo.gyakorlat.Repository;

import istvangergo.gyakorlat.Entity.Category;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Category, Integer> {
}