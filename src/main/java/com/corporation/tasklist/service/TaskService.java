package com.corporation.tasklist.service;

import java.util.List;

import com.corporation.tasklist.model.Task;

public interface TaskService {

    void addTask(Task task, Long userId);

    List<Task> findAllUserTasks(Long userId);

    void deleteTask(long taskId);

}
