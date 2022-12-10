package com.thes2ksolution.pay.s2kpay.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


import java.util.List;
import java.util.Set;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id ;
    private String fullName;
    private String email;
    private String Phone;
    private String password;
    @Embedded
    private Address address;
    @ManyToMany(mappedBy = "users",fetch = FetchType.EAGER)
    private Set<Roles> roles;
}
