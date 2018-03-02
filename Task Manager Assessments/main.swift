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
    
}


let currentDate = Date()
let calendar = Calendar.current

let twoWeeksFromNow = calendar.date(byAdding: .day, value: 14, to: currentDate)

print(twoWeeksFromNow!)

let dateFormatter = DateFormatter()

dateFormatter.dateFormat = "MM/dd/yyyy HH:mm"

print( "Your due date is", dateFormatter.string(from: twoWeeksFromNow!))




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
    var completeTask = readLine()
    for task in 0...taskArray.count - 1 {
        if taskArray[task].name == completeTask {
            taskArray[task].completed = true
            print("You have marked", taskArray[task].name , "complete")
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

var userInput = 0

func mainMenu() {
    print("Press 1 to create new task")
    print("Press 2 to access both tasks")
    print("Press 3 to access completed tasks")
    print("Press 4 to mark a task complete")
    print("Press 5 to delete a task")
    print("Press 6 to exit")
    userInput = Int(readLine()!)!
    
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


while userInput != 6 {
mainMenu()
}


//var myNumber = 0
//func enterNumber() {
//    print("please enter a number, enter 10 to exit")
//     myNumber = Int(readLine()!)!
//}
//
//while myNumber != 10 {
//    enterNumber()
//}













