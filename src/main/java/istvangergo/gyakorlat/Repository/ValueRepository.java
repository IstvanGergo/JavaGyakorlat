package istvangergo.gyakorlat.Repository;

import istvangergo.gyakorlat.Entity.Value;
import org.springframework.data.repository.CrudRepository;

public interface ValueRepository extends CrudRepository<Value, Integer> {
}