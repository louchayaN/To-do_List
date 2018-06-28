package com.corporation.tasklist.web;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.corporation.tasklist.model.User;
import com.corporation.tasklist.model.UserSignInForm;
import com.corporation.tasklist.service.UserService;
import com.corporation.tasklist.web.constant.SessionAttribute;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public String goToSignInForm(Model model) {
        model.addAttribute("userSignInForm", new UserSignInForm());
        return "user/sign-in";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String signIn(@Valid UserSignInForm userSignInForm, Errors errors, HttpSession session, Model model) {
        if (errors.hasErrors()) {
            return "user/sign-in";
        }

        User user = userService.getUser(userSignInForm);
        if (user == null) {
            model.addAttribute("message", "signInfailed");
            return "user/sign-in";
        }

        session.setAttribute(SessionAttribute.ID_USER, user.getId());
        return "redirect:/tasks";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String signUp(Model model) {
        model.addAttribute("user", new User());
        return "user/sign-up";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String signUp(@Valid User user, Errors errors, HttpSession session) {
        if (errors.hasErrors()) {
            return "user/sign-up";
        }

        User addedUser = userService.addUser(user);
        session.setAttribute(SessionAttribute.ID_USER, addedUser.getId());
        return "redirect:/tasks";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute(SessionAttribute.ID_USER);
        return "redirect:/users";
    }

}
