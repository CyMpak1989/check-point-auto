package ru.medical.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.medical.domain.Car;
import ru.medical.repository.CarRepository;


@Controller
@RequestMapping("/logpasses")
@PreAuthorize("hasAuthority('ADMIN')")
public class LogPassesController {
    @Autowired
    private CarRepository carRepository;

    @GetMapping
    public String logpasses(Model model) {
        Iterable<Car> car = carRepository.findAll();
        model.addAttribute("car", car);
        return "logpasses";
    }
}
