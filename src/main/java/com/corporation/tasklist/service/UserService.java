package com.corporation.tasklist.service;

import com.corporation.tasklist.model.User;
import com.corporation.tasklist.model.UserSignInForm;

public interface UserService {

    User addUser(User user);

    User getUser(UserSignInForm userSignInForm);

    // User getUser(Long userId);

}
