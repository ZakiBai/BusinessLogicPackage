//
//  File.swift
//  
//
//  Created by Zaki on 10.06.2024.
//

import Foundation

public class Task {
	public var title: String
	public var completed = false

	public init(title: String, completed: Bool = false) {
		self.title = title
		self.completed = completed
	}
}

public final class RegularTask: Task { }

public final class ImportantTask: Task {
	
	public enum TaskPriority: Int {
		case low
		case medium
		case high
	}

	public var deadLine: Date {
		switch taskPriority {
		case .low:
			return Calendar.current.date(byAdding: .day, value: 3, to: date)! // swiftlint:disable:this force_unwrapping
		case .medium:
			return Calendar.current.date(byAdding: .day, value: 2, to: date)! // swiftlint:disable:this force_unwrapping
		case .high:
			return Calendar.current.date(byAdding: .day, value: 1, to: date)! // swiftlint:disable:this force_unwrapping
		}
	}

	private var date: Date
	public var taskPriority: TaskPriority

	public init(title: String, date: Date, taskPriority: TaskPriority) {
		self.taskPriority = taskPriority
		self.date = date
		super.init(title: title)
	}
}
