//Scenario
//The Little Lemon app allows users to view and interact with Little Lemon’s menu. As you now know, to make this functionality possible, the menu data needs to be fetched from the server first.
//In this exercise, you will use URLSession and URLSessionDataTask to perform the HTTP requests and receive the menu data from the server.

//Step 1: Define the Little Lemon server address as a constant String

import Foundation
let littleLemonAddress = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"

//Step 2: Initialize a new URL object with the Little Lemon address String

let url = URL(string: littleLemonAddress)

//Step 3: Use guard to unwrap the Optional url constant

guard let url = url else { throw NSError() }

//Step 4: Create a new URLRequest object with unwrapped url
let request = URLRequest(url:url)

//Step 5: Create a new URLSessionDataTask using request constant
let task = URLSession.shared.dataTask(with: request) { data, response, error in
    
    //Step 6: Resume the task to execute it
    //task.resume()
    
    //Step 7: Handle the response data of the data task
    
    if let data = data,
       
        //Step 8: Convert the Data to String
       let string = String(data: data, encoding: .utf8) {
        
        //Print the response String to the console
        print(string)
    }
}
task.resume()


