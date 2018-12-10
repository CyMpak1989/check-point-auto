package ru.medical.repository;

import org.springframework.data.repository.CrudRepository;
import ru.medical.domain.Car;

public interface CarRepository extends CrudRepository<Car, Long> {

}
