package com.corporation.tasklist.web.util;

import javax.servlet.http.HttpSession;

import com.corporation.tasklist.web.constant.SessionAttribute;

public class SessionUtil {

    private SessionUtil() {
        throw new AssertionError("Class contains static methods only. You should not instantiate it!");
    }

    public static boolean isAuthenticatedUser(HttpSession session) {
        if (session.getAttribute(SessionAttribute.ID_USER) == null) {
            return false;
        }
        return true;
    }

}
