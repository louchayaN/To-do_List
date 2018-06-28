package com.corporation.tasklist.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.corporation.tasklist.web.util.SessionUtil;

@Controller
@RequestMapping("/")
public class HomeController {

    @RequestMapping(method = RequestMethod.GET)
    public String goToStartPage(HttpSession session) {
        if (SessionUtil.isAuthenticatedUser(session)) {
            return "redirect:/tasks";
        }
        return "redirect:/users";
    }

}
