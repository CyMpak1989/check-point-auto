package ru.medical.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.medical.domain.Car;
import ru.medical.repository.CarRepository;

import java.util.List;
import java.util.Map;

@Controller
public class IndexController {
    @Autowired
    private CarRepository carRepository;

    @GetMapping("/index")
    public String index(Map<String, Object> model) {

        Iterable<Car> carAll = carRepository.findAll();

        model.put("car", carAll);

        return "index";
    }

    @PostMapping
    public String add(@RequestParam String number, @RequestParam String comment, Map<String, Object> model) {
        Car car = new Car(number, comment);

        carRepository.save(car);

        Iterable<Car> carAll = carRepository.findAll();

        model.put("car", carAll);

        return "index";
    }

    @PostMapping("filter")
    public String filter(@RequestParam String filter, Map<String, Object> model) {
        Iterable<Car> car;
        if (filter != null && !filter.isEmpty()) {
            car = carRepository.findByNumberContaining(filter);
        } else {
            car = carRepository.findAll();
        }

        model.put("car", car);

        return "index";
    }
}