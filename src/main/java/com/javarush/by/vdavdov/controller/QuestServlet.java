package com.javarush.by.vdavdov.controller;

import com.javarush.by.vdavdov.entity.User;
import com.javarush.by.vdavdov.service.GameLogic;
import com.javarush.by.vdavdov.service.UserService;
import com.javarush.by.vdavdov.service.UserUserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;

import static com.javarush.by.vdavdov.constants.Constants.*;

@WebServlet(urlPatterns = QUEST_SERVLET)
public class QuestServlet extends HttpServlet {
    private GameLogic gameLogic = new GameLogic();
    static final Logger logger = LogManager.getLogger(HomeServlet.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        logger.info("Get to /quest from {}", req.getRemoteAddr());

        req.getRequestDispatcher(QUEST_JSP).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        logger.info("Post to /quest from {}", req.getRemoteAddr());

        req.getSession().setAttribute("state",gameLogic.checkGameStatus(req, resp).name());
    }
}
