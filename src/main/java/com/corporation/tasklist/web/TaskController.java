package com.corporation.tasklist.web;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.corporation.tasklist.model.Task;
import com.corporation.tasklist.service.TaskService;
import com.corporation.tasklist.web.constant.SessionAttribute;

@Controller
@RequestMapping("/tasks")
public class TaskController {

    @Autowired
    private TaskService taskService;

    @RequestMapping(method = RequestMethod.GET)
    public String goToTasksView(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute(SessionAttribute.ID_USER);
        List<Task> tasks = taskService.findAllUserTasks(userId);
        model.addAttribute("tasks", tasks);
        return "task/tasks-view";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String goToAddingTaskForm(Model model) {
        model.addAttribute("task", new Task());
        return "task/task-add-form";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addTask(@Valid Task task, Errors errors, HttpSession session) {
        if (errors.hasErrors()) {
            return "task/task-add-form";
        }

        Long userId = (Long) session.getAttribute(SessionAttribute.ID_USER);
        taskService.addTask(task, userId);
        return "redirect:/tasks";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteTask(@RequestParam("taskId") long taskId) {
        taskService.deleteTask(taskId);
        return "redirect:/tasks";
    }
}
