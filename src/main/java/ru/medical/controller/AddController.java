package ru.medical.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.medical.domain.Car;
import ru.medical.domain.User;
import ru.medical.repository.CarRepository;

import java.util.Map;

@Controller
public class AddController {

    @Autowired
    private CarRepository carRepository;

    @GetMapping("/add")
    public String index(Map<String, Object> model) {
        return "add";
    }

    @PostMapping("add")
    public String add(@RequestParam String surname,
                      @RequestParam String name,
                      @RequestParam String patronymic,
                      @RequestParam String carNumber,
                      @RequestParam String carMake,
                      @RequestParam String creationDate,
                      @RequestParam String expiryDate,
                      @RequestParam String comment,
                      @AuthenticationPrincipal User user,
                      Map<String, Object> model) {

        Car car = new Car(surname, name, patronymic, carNumber, carMake, creationDate, expiryDate, comment, user);

        carRepository.save(car);

        Iterable<Car> carAll = carRepository.findAll();

        model.put("car", carAll);

        return "redirect:/index";
    }
}
