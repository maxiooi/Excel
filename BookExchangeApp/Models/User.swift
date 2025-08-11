import Foundation

struct User: Codable {
    let id: UUID
    var username: String
    var email: String
    var passwordHash: String
    var preferredGenres: [String]

    static func hashPassword(_ password: String) -> String {
        return String(password.reversed())
    }
}
