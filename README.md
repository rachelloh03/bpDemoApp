# Blueprint Demo App
 
This is the repository for the Blueprint 2021 mobile development (iOS) track. This repository was used to teach 3 sessions on iOS development. The branches are labeled by session number. Each session has a starter and completed branch, reflecting the code in each. Here's a brief rundown of each session's content:

1. Swift syntax overview (bpDemoApp/SwiftSyntax.playground), common UI components (UILabel, UIButton, UITextField), basic functions including @objc types, NSLayoutConstraint
2. TableViews, TableViewCells, tab bars, stack views, scroll views
3. Sending URL requests, populating table views and table cells with data, delegates, asynchronous and synchronous processes, passing data to view controllers

Our code is documented with information on Swift components and coding concepts. All code was written using UIKit.

## Running our code
Make sure you have the latest version of XCode (12+) to run our app on iOS 14+. Clone this repository using `git clone https://github.com/mlong93/bpDemoApp.git` and checkout a branch with `git checkout <branch-name>`. 

## Session 1
We provide a XCode playground titled `SwiftSyntax`. We cover variable declarations (`var`, `let`), data types (tuples, arrays, sets, dictionaries, typealiases), optionals (including unwrapping), functions, classes, enums, and structs.

In `HomeViewController.swift`, we build a single-view app, demonstrating the use of layout constraints and basic functionality of UI elements such as labels, buttons, and text fields.

## Session 2
In this session, we begin by building a UITableViewController, which will be used to display movie data. We create a sample MovieViewCell that displays a movie's poster image, title, release date, and rating. We also added functionality to the table view so that clicking a cell would display its content in a stack view, which is itself embedded in a scroll view.

## Session 3
This session focuses on managing and passing data between consecutive views. We create a new object `Movies` that holds an array of `Movie` structs. An object of `Movies` can also fetch movie data from [The Movie Database (tmdb)](https://www.themoviedb.org) and parse the JSON response with [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON). Our table view displays the movie data stored in our `Movies` object. Selecting a movie in the table then passes the data to another view controller, `MovieView`.

## Session 4 (optional)
We hosted a supplementary session for students to ask more questions about iOS development and the Swift language. Some other important concepts we cover are singletons, Core Data, ....
