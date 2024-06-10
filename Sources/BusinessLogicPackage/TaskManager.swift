//
//  File.swift
//  
//
//  Created by Zaki on 10.06.2024.
//

public class TaskManager {
	private var taskList = [Task]()

	public init(taskList: [Task] = [Task]()) {
		self.taskList = taskList
	}

	public func allTasks() -> [Task] {
		taskList
	}

	public func completedTasks() -> [Task] {
		taskList.filter { $0.completed }
	}

	public func uncompletedTasks() -> [Task] {
		taskList.filter { !$0.completed }
	}

	public func addTask(task: Task) {
		taskList.append(task)
	}

	public func addTasks(tasks: [Task]) {
		taskList.append(contentsOf: tasks)
	}

	public func removeTask(task: Task) {
		taskList.removeAll { $0 === task }
	}
}
