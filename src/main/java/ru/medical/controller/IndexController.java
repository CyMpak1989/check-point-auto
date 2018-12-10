package ru.medical.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.medical.domain.Car;
import ru.medical.repository.CarRepository;

import java.util.Map;

@Controller
public class IndexController {
    @Autowired
    private CarRepository carRepository;

    @RequestMapping("/index")
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
}