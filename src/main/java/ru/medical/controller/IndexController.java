package ru.medical.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.medical.domain.Car;
import ru.medical.repository.CarRepository;

import java.util.Map;

@Controller
public class IndexController {
    @Autowired
    private CarRepository carRepository;

    @GetMapping("/index")
    public String index(@RequestParam(required = false, defaultValue = "") String filter, Model model) {
        Iterable<Car> car;
        if (filter != null && !filter.isEmpty()) {
            car = carRepository.findByCarNumberContaining(filter);
        } else {
            car = carRepository.findAll();
        }
        model.addAttribute("car", car);
        model.addAttribute("filter", filter);

        return "index";
    }
}