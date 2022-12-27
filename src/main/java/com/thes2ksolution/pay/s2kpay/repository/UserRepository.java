package com.thes2ksolution.pay.s2kpay.repository;

import com.thes2ksolution.pay.s2kpay.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    User findUserByUsername(String username);

    User findUserByPhone(String phone);

    User findUserByEmail(String email);
}
