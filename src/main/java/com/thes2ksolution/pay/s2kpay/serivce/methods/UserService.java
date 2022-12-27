package com.thes2ksolution.pay.s2kpay.serivce.methods;

import com.thes2ksolution.pay.s2kpay.exception.domain.*;
import com.thes2ksolution.pay.s2kpay.model.Address;
import com.thes2ksolution.pay.s2kpay.model.User;
import jakarta.mail.MessagingException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public interface UserService {

    User register(String firstName, String lastName, String username, String email, String phone, Address address) throws UserNotFoundException, UsernameExistException, EmailExistException, MessagingException, PhoneExistException;

    List<User> getUsers();

    User findUserByUsername(String username);

    User findUserByEmail(String email);

    User addNewUser(String firstName, String lastName, String username, String phone, String email, String role, boolean isNonLocked, boolean isActive, MultipartFile profileImage) throws UserNotFoundException, UsernameExistException, EmailExistException, IOException, NotAnImageFileException, PhoneExistException;

    User updateUser(String currentUsername, String newFirstName, String newLastName, String newPhone, String newUsername, String newEmail, String role, boolean isNonLocked, boolean isActive, MultipartFile profileImage) throws UserNotFoundException, UsernameExistException, EmailExistException, IOException, NotAnImageFileException, PhoneExistException;

    void deleteUser(String username) throws IOException;

    void resetPassword(String email) throws MessagingException, EmailNotFoundException;

    User updateProfileImage(String username, MultipartFile profileImage) throws UserNotFoundException, UsernameExistException, EmailExistException, IOException, NotAnImageFileException, NotAnImageFileException, PhoneExistException;

    User findUserByPhone(String phone);
    void refreshToken(HttpServletRequest request, HttpServletResponse response);
}



