package com.corporation.tasklist.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.corporation.tasklist.model.User;
import com.corporation.tasklist.model.UserSignInForm;
import com.corporation.tasklist.repository.UserRepository;
import com.corporation.tasklist.service.UserService;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User addUser(User user) {
        return userRepository.save(user);
    }

    @Override
    public User getUser(UserSignInForm userSignInForm) {
        return userRepository.findByLoginAndPassword(userSignInForm.getLogin(), userSignInForm.getPassword());
    }

}