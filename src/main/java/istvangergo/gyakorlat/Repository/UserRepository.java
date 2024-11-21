package istvangergo.gyakorlat.Repository;

import java.util.Optional;

import istvangergo.gyakorlat.Entity.User;
import org.springframework.data.repository.CrudRepository;
public interface UserRepository extends CrudRepository<User, Integer>
{
    Optional<User> findByEmail(String email);
}
