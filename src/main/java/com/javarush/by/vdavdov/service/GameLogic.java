package com.javarush.by.vdavdov.service;

import com.javarush.by.vdavdov.entity.GameState;
import com.javarush.by.vdavdov.entity.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;

import static com.javarush.by.vdavdov.constants.Constants.*;
import static com.javarush.by.vdavdov.constants.Constants.QUEST_SERVLET;

public class GameLogic {
    private final UserService userService = UserUserServiceImpl.getInstance();
    static final Logger logger = LogManager.getLogger(GameLogic.class);

    public GameState checkGameStatus(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        long id = (long) session.getAttribute("id");
        User user = userService.get(id).get();
        int answer = Integer.parseInt(req.getParameter("answer"));
        if (answer == 1) {
            user.nextLevel();
            logger.info("Score user {} upped", req.getRemoteAddr());
            if (user.getScore() > 2) {
                logger.info("User {} win", req.getRemoteAddr());
                resp.sendRedirect(WIN_SERVLET);
                return GameState.WIN;
            } else {
                session.setAttribute("score", user.getScore());
                resp.sendRedirect(QUEST_SERVLET);
                return GameState.PLAY;
            }
        } else if (answer == 0) {
            logger.info("User {} defeat", req.getRemoteAddr());
            session.removeAttribute("score");
            resp.sendRedirect(LOSE_SERVLET);
            return GameState.LOST;
        } else {
            resp.sendRedirect(QUEST_SERVLET);
            return GameState.PLAY;
        }
    }
}
