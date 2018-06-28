package com.corporation.tasklist.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.corporation.tasklist.model.Task;
import com.corporation.tasklist.model.User;
import com.corporation.tasklist.repository.TaskRepository;
import com.corporation.tasklist.repository.UserRepository;
import com.corporation.tasklist.service.TaskService;

@Service
public class TaskServiceImpl implements TaskService {

    @Autowired
    private TaskRepository taskRepository;

    @Autowired
    private UserRepository userRepository;

    @Override
    @Transactional
    public void addTask(Task task, Long userId) {
        User user = userRepository.getById(userId);
        task.setUser(user);
        taskRepository.save(task);
    }

    @Override
    public List<Task> findAllUserTasks(Long userId) {
        Iterable<Task> tasksIteration = taskRepository.findTaskByUser_Id(userId);
        List<Task> tasks = new ArrayList<>();
        tasksIteration.forEach(tasks::add);
        return tasks;
    }

}