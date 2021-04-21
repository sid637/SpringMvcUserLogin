package com.springmvc.service;

import com.springmvc.exception.InvalidUserException;
import com.springmvc.model.Login;
import com.springmvc.model.User;

public interface UserService {

  int register(User user) throws InvalidUserException;

  User validateUser(Login login);
}
