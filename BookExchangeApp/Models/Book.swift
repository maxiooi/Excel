import Foundation

struct Book: Codable {
    let id: UUID
    var title: String
    var author: String
    var genre: String?
    var condition: String?
    var ownerId: UUID
}
