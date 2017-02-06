package com.speed.mixer.service;


import com.speed.mixer.model.User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/**
 * Created by sambit on 2/5/2017.
 */
@Service("userService")
public class UserServiceImpl implements UserService{

    private static final AtomicLong counter = new AtomicLong();

    private static List<User> users;

    static{
        users= populateDummyUsers();
    }

    private static List<User> populateDummyUsers() {
        List<User> users = new ArrayList<User>();
        users.add(new User(counter.incrementAndGet(),"Sambit", "Orissa", "sambit@abc.com"));
        users.add(new User(counter.incrementAndGet(),"Raj", "Bihar", "raj@abc.com"));
        users.add(new User(counter.incrementAndGet(),"Bhanu", "Telengana", "bhanu@abc.com"));
        System.out.println("UserServiceImpl populateDummyUsers::"+users);
        return users;
    }

    @Override
    public User findById(long id) {
        for(User user : users){
            if(user.getId() == id){
                return user;
            }
        }
        return null;
    }

    @Override
    public User findByName(String name) {
        for(User user : users){
            if(user.getUsername().equalsIgnoreCase(name)){
                return user;
            }
        }
        return null;
    }

    @Override
    public void saveUser(User user) {
        user.setId(counter.incrementAndGet());
        users.add(user);
    }

    @Override
    public void updateUser(User user) {
        int index = users.indexOf(user);
        users.set(index, user);
    }

    @Override
    public void deleteUserById(long id) {
        for (Iterator<User> iterator = users.iterator(); iterator.hasNext(); ) {
            User user = iterator.next();
            if (user.getId() == id) {
                iterator.remove();
            }
        }
    }

    @Override
    public List<User> findAllUsers() {
        return users;
    }

    @Override
    public void deleteAllUsers() {
        users.clear();
    }

    @Override
    public boolean isUserExist(User user) {
        return findByName(user.getUsername())!=null;
    }
}
