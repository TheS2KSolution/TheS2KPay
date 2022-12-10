package com.thes2ksolution.pay.s2kpay.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;
import java.util.Set;


@AllArgsConstructor
@NoArgsConstructor
@Entity
@Setter
@Getter
public class Roles  {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String roleName;
    @ManyToMany
    private Set <Users> users;
    @ManyToMany(mappedBy = "roles",fetch = FetchType.EAGER)
    private Set <Privileges> privileges;


}
