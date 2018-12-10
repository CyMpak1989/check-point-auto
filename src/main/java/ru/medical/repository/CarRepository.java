package ru.medical.repository;

import org.springframework.data.repository.CrudRepository;
import ru.medical.domain.Car;

import java.util.List;

public interface CarRepository extends CrudRepository<Car, Long> {
    List<Car> findByNumber(String number);
    List<Car> findByNumberContaining(String number);
}
