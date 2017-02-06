package com.speed.mixer.service;

import com.speed.mixer.model.User;

import java.util.List;

/**
 * Created by sambit on 2/5/2017.
 */
public interface UserService {
    User findById(long id);

    User findByName(String name);

    void saveUser(User user);

    void updateUser(User user);

    void deleteUserById(long id);

    List<User> findAllUsers();

    void deleteAllUsers();

    public boolean isUserExist(User user);
}
