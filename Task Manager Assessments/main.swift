//
//  main.swift
//  Task Manager Assessments
//
//  Created by Shontara Hatton on 2/20/18.
//  Copyright © 2018 Shontara Hatton. All rights reserved.
//

import Foundation

//Objectives
//User should be able to create new tasks.
//User should be able to see a list of all tasks (Completed and Uncompleted).
//User should be able to see a list of only uncompleted tasks.
//User should be able to see a list of only completed tasks.
//User should be able to mark a task complete.
//User should be able to delete a task.
//User should be able to exit the program.
//The program should display menu(s) listing all possible actions the user can take.
//The program should include error handling to account for incorrect user input.
//Each task should have:
//Title
//Due date
//Details of task

class TaskManager {
    var name: String
    var completed = false
    init(name: String) {
        self.name = name
    
    }
    
}



var taskArray = [TaskManager]()
print("Task Manager accessed!")


func createNewTask() {
    print("What is the name of your task?")
    var name = readLine()
    var tasks = TaskManager(name: name!)
    taskArray.append(tasks)
    
    
    
    print("Please type in a due date.")
    var userInput = readLine()
    
    let currentDate = Date()
    print(currentDate)
    let calendar = Calendar.current
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .long
    dateFormatter.dateFormat = "MM/dd/yyyy HH:mm"
    print(dateFormatter.string(from: currentDate))

    
}

func bothTasks() {
    for task in taskArray {
        print(task.name)
    }
}


func completedTasks() {
    for task in taskArray {
        if task.completed == true {
            print(task.name)
        }
    }
}

func markTask() {
print("Enter the task you want to mark complete")
    for task in taskArray {
        print(task.name)

    }
    var userInput = readLine()
    for task in 0...taskArray.count - 1 {
        if taskArray [task].name == userInput {
            taskArray [task].completed = true
        }
    }
}

func deleteTask() {
    print("Do you want to delete a task?")
    var userInput = readLine()
   
    for task in 0...taskArray.count - 1 {
        if taskArray[task].name == userInput {
            taskArray.remove(at: task)
        }
    
    }
}


func mainMenu() {
    print("Press 1 to create new task")
    print("Press 2 to access all tasks")
    print("Press 3 to access completed tasks")
    print("Press 4 to mark a task complete")
    print("Press 5 to delete a task")
    print("Press 6 to exit")
var userInput = Int(readLine()!)
    if userInput == 1 {
        createNewTask()
    }
    else if userInput == 2 {
        bothTasks()
    }
    else if userInput == 3 {
        completedTasks()
    }
    else if userInput == 4 {
        markTask()
    }
    else if userInput == 5  {
        deleteTask()
    }
    else if userInput == 6 {
        exit(0)
    }
    
}

mainMenu()



