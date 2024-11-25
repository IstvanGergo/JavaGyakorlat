package istvangergo.gyakorlat.Service;

public class AnimalNotFoundException extends RuntimeException{
    public AnimalNotFoundException(int id){
        super("Az állat nem található!" + id);
    }
}
