package com.example.entity;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "Users")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Account implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "fullname", nullable = false)
    private String fullName;

    @Column(name = "username", nullable = false)
    private String userName;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "admin", nullable = false)
    private boolean isAdmin;

    @Column(name = "active", nullable = false)
    private boolean isActive;

 
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "user")
    private List<Cart> carts;
    
   
    @OneToMany(fetch = FetchType.EAGER,mappedBy = "user")
    private List<Order> orders;
    

    @OneToMany(fetch = FetchType.EAGER,mappedBy = "user")
    private List<Favorite> favorites;

    // Constructors, getters, setters, and other methods as needed.
}
