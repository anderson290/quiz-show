/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author mateus
 */
public class Database {

    private static ArrayList<User> users = new ArrayList<>();

    public static ArrayList<User> getUsers() {

        users.add(new User("Anderson"));
        users.add(new User("Guilherme"));
        users.add(new User("Mateus"));
        users.add(new User("Weslley"));

        return users;

    }

    public static boolean searchUser(String user) {

        for (User u : Database.getUsers()) {

            if (u.getName().equals(user) == true) {
                return u.getName().contains(user);
            }

        }

        return false;

    }

}
