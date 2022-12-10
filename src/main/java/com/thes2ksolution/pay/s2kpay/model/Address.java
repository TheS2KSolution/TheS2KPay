package com.thes2ksolution.pay.s2kpay.model;

import jakarta.persistence.Embeddable;

@Embeddable
public class  Address {
    private String street;
    private String city;
    private String country;

}
