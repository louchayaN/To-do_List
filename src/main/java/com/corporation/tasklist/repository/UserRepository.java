package com.corporation.tasklist.repository;

import org.springframework.data.repository.CrudRepository;

import com.corporation.tasklist.model.User;

public interface UserRepository extends CrudRepository<User, Long> {

    User findByLoginAndPassword(String login, String password);

    User getById(Long userId);

}
