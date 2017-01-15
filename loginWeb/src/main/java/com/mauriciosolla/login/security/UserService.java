package com.mauriciosolla.login.security;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * Created by mauriciosolla on 15/01/17.
 */
@Service("userService")
public class UserService implements UserDetailsService{

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = new User();

        if (username != null && !username.equals("")) {

            //TODO implements getUser
            String userSimulation = "user123";
            if (userSimulation.equals(username)) {

                user = new User();
                user.setId(999);
                user.setName("User");
                user.setUsername(userSimulation);
                user.setPassword("pass456");

            } //TODO simulation

        }

        return user;
    }
}
