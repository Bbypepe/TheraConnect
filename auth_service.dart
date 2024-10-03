import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign in with Google
  Future<User?> signInWithGoogle() async {
    try {
      // Logic to sign in with Google
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Check if user is signed in
  Stream<User?> get user {
    return _auth.authStateChanges();
  }
}
