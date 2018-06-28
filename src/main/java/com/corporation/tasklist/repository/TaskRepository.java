package com.corporation.tasklist.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.corporation.tasklist.model.Task;

public interface TaskRepository extends CrudRepository<Task, Long> {

    List<Task> findTaskByUser_Id(Long userId);
}
