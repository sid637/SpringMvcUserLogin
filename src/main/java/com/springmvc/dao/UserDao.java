package com.springmvc.dao;

import com.springmvc.exception.InvalidUserException;
import com.springmvc.model.Login;
import com.springmvc.model.User;

public interface UserDao {

  int register(User user) throws InvalidUserException;

  User validateUser(Login login);
}
