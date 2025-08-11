import UIKit

class LoginViewController: UIViewController {

    private let usernameField = UITextField()
    private let passwordField = UITextField()
    private let loginButton = UIButton(type: .system)
    private let signupButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "BookSwap"

        setupViews()
    }

    private func setupViews() {
        usernameField.placeholder = "Username"
        usernameField.borderStyle = .roundedRect

        passwordField.placeholder = "Password"
        passwordField.borderStyle = .roundedRect
        passwordField.isSecureTextEntry = true

        loginButton.setTitle("Log In", for: .normal)
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)

        signupButton.setTitle("Sign Up", for: .normal)
        signupButton.addTarget(self, action: #selector(signupTapped), for: .touchUpInside)

        let stack = UIStackView(arrangedSubviews: [usernameField, passwordField, loginButton, signupButton])
        stack.axis = .vertical
        stack.spacing = 12
        stack.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(stack)

        NSLayoutConstraint.activate([
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }

    @objc private func loginTapped() {
        let listVC = BookListViewController()
        navigationController?.pushViewController(listVC, animated: true)
    }

    @objc private func signupTapped() {
        let alert = UIAlertController(title: "Sign Up", message: "Signup flow not yet implemented.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
