package com.example;


import com.sun.istack.NotNull;

import javax.persistence.*;

@Entity
@Table(name="user")
@Inheritance(strategy = InheritanceType.JOINED)
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotNull
    @Column(name="name", nullable=false)
    private String name;

    @NotNull
    @Column(name="password", nullable=false)
    private String password;

    public User() {
        // Default constructor for Hibernate
    }

    public User(String name, String password){
        this.name = name;
        this.password = password;
    }

    public int getId(){
        return id;
    }

    public void setId(int id){
        this.id = id;
    }

    public String getName(){
        return name;
    }

    public void setName(String name){
        this.name = name;
    }

    public String getPassword(){
        return password;
    }

    public void setPassword(String password){
        this.password = password;
    }
}

