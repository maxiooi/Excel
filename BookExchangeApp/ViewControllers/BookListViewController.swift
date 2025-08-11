import UIKit

class BookListViewController: UITableViewController {

    private var books: [Book] = [
        Book(id: UUID(), title: "1984", author: "George Orwell", genre: "Dystopian", condition: "Good", ownerId: UUID()),
        Book(id: UUID(), title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy", condition: "Fair", ownerId: UUID())
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Available Books"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let book = books[indexPath.row]
        cell.textLabel?.text = "\(book.title) by \(book.author)"
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let book = books[indexPath.row]
        let alert = UIAlertController(title: book.title, message: "Author: \(book.author)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
