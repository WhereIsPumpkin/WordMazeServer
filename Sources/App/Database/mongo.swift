//
//  mongo.swift
//
//
//  Created by sgogrichiani on 08.10.24.
//

import Fluent
import FluentMongoDriver
import Vapor

func connect(_ app: Application) {
    
    let connectionString = "mongodb+srv://sabaG:test@wordmaze.ekskk.mongodb.net/WordMazeDB?retryWrites=true&w=majority&appName=WordMaze"
    
    do {
        try app.databases.use(.mongo(connectionString: connectionString), as: .mongo)
        print("Connected to MongoDB!")
    } catch {
        print("MongoDB connection error:", error.localizedDescription)
    }
}
