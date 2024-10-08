//
//  File.swift
//  
//
//  Created by sgogrichiani on 08.10.24.
//

import Fluent
import Vapor

final class GameRoom: Model, Content, @unchecked Sendable {
    static let schema = "game_rooms"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "code")
    var code: Int

    init() {}

    init(id: UUID? = nil, code: Int) {
        self.id = id
        self.code = code
    }
}
