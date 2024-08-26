// Abstraction
abstract class AuthService {
  void authenticate(String username, String password);
}

// Concrete Implementation
class FirebaseAuthService implements AuthService {
  @override
  void authenticate(String username, String password) {
    print('Authenticating with Firebase');
    // Firebase authentication logic
  }
}

// High-level module
class UserService {
  final AuthService _authService;

  UserService(this._authService);

  void login(String username, String password) {
    _authService.authenticate(username, password);
  }
}

void main() {
  AuthService authService = FirebaseAuthService();
  UserService userService = UserService(authService);

  userService.login('user', 'password'); // Output: Authenticating with Firebase
}
