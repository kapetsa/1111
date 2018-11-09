package com.novik.firstapp.repos;

import com.novik.firstapp.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepo extends CrudRepository<User, Long> {

    void deleteById(Long Id);


    User findByUsername(String username);
}
