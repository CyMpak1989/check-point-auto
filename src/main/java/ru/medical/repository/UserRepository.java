package ru.medical.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.medical.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
