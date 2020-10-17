package com.softserve.itacademy.controller;

import com.softserve.itacademy.model.Priority;
import com.softserve.itacademy.model.Task;
import com.softserve.itacademy.repository.TaskRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/edit-task")
public class UpdateTaskServlet extends HttpServlet {

    private TaskRepository taskRepository;
    private Task task;

    @Override
    public void init() throws ServletException {
        taskRepository = TaskRepository.getTaskRepository();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        task = taskRepository.read(id);

        if (task == null) {
            response.setStatus(404);
            request.setAttribute("message", "Task with ID '" + id + "' not found in To-Do List!");
            request.setAttribute("url", request.getServletPath());
            request.getRequestDispatcher("/WEB-INF/pages/error.jsp").forward(request, response);
        } else {
            request.setAttribute("task", task);
            request.setAttribute("priorities", Priority.values());
            request.getRequestDispatcher("/WEB-INF/pages/update-task.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        task.setPriority(Priority.valueOf(request.getParameter("priority")));
        task.setTitle(request.getParameter("title"));

        response.sendRedirect(request.getContextPath() + "/tasks-list");
    }
}
