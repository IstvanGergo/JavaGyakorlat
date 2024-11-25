package istvangergo.gyakorlat.Repository;

import istvangergo.gyakorlat.Entity.Message;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepository extends CrudRepository<Message, Integer>{
}
