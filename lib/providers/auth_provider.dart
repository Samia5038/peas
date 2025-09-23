// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class AuthProvider extends ChangeNotifier {
//   bool _isLoggedIn = false;
//   String? _name;
//   String? _email;
//   String? _role; // 'general' or 'farmer'

//   bool get isLoggedIn => _isLoggedIn;
//   String? get name => _name;
//   String? get email => _email;
//   String? get role => _role;

//   Future<void> signup(String name, String email, String role, String password) async {
//     // For demo: store the credentials in SharedPreferences (NOT secure; demo only)
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString('user_name', name);
//     await prefs.setString('user_email', email);
//     await prefs.setString('user_role', role);
//     await prefs.setString('user_password', password);
//     _name = name;
//     _email = email;
//     _role = role;
//     _isLoggedIn = true;
//     notifyListeners();
//   }

//   Future<bool> login(String email, String password) async {
//     final prefs = await SharedPreferences.getInstance();
//     final storedEmail = prefs.getString('user_email');
//     final storedPassword = prefs.getString('user_password');

//     if (storedEmail == email && storedPassword == password) {
//       _name = prefs.getString('user_name');
//       _email = storedEmail;
//       _role = prefs.getString('user_role') ?? 'general';
//       _isLoggedIn = true;
//       notifyListeners();
//       return true;
//     }
//     return false;
//   }

//   Future<void> logout() async {
//     _isLoggedIn = false;
//     _name = null;
//     _email = null;
//     _role = null;
//     notifyListeners();
//   }

//   Future<void> loadFromPrefs() async {
//     final prefs = await SharedPreferences.getInstance();
//     final storedEmail = prefs.getString('user_email');
//     if (storedEmail != null) {
//       _name = prefs.getString('user_name');
//       _email = storedEmail;
//       _role = prefs.getString('user_role') ?? 'general';
//       // Do not auto-login for demo. To auto-login set _isLoggedIn = true.
//       _isLoggedIn = false;
//     }
//   }
// }



// import 'package:flutter/material.dart';

// class AuthProvider with ChangeNotifier {
//   String? userRole;

//   void loginAs(String role) {
//     userRole = role;
//     notifyListeners();
//   }

//   void logout() {
//     userRole = null;
//     notifyListeners();
//   }
// }



import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String? _userRole;

  String? get userRole => _userRole;

  /// Log in as a specific role: 'Farmer' or 'General User'
  void loginAs(String role) {
    _userRole = role;
    notifyListeners();
  }

  /// Log out the current user
  void logout() {
    _userRole = null;
    notifyListeners();
  }

  /// Helper method to check if user is logged in
  bool get isLoggedIn => _userRole != null;

  /// Navigate to home screen based on role
  String get homeRoute {
    if (_userRole == 'Farmer') return '/home-farmer';
    if (_userRole == 'General User') return '/home-general';
    return '/auth';
  }
}
