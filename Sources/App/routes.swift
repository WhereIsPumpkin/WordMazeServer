import Vapor

func routes(_ app: Application) throws {
    
    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.post("createRoom") { req async throws -> HTTPStatus in
        let randomCode = Int.random(in: 1000...9999)
        
        let newRoom = GameRoom(code: randomCode)
        
        try await newRoom.save(on: req.db)
        
        return .created
    }
}
