import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        title = "Login Screen"
        let loginButton = UIBarButtonItem(title: "Log In", style: .plain, target: self, action: #selector(login))
        navigationItem.setLeftBarButton(loginButton, animated: true)
    }
    
    @objc
    private func login() {
        // store the user session (example only, not for the production)
        UserDefaults.standard.set(true, forKey: "LOGGED_IN")
        // navigate to the Main Screen
        AppDelegate.shared.rootViewController.switchToMainScreen()
    }
}
