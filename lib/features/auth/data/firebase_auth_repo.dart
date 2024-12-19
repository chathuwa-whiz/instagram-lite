import 'package:firebase_auth/firebase_auth.dart';
import 'package:testproj/features/auth/domain/auth_repo.dart';
import 'package:testproj/features/auth/domain/entities/app_user.dart';

class FirebaseAuthRepo implements AuthRepo {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Future<AppUser?> getCurrentUser() async {
    // get current logged in user from firebase
    final firebaseUser = firebaseAuth.currentUser;

    // no user logged in
    if(firebaseUser == null) {
      return null;
    }
    
    // user exist
    return AppUser(
        uid: firebaseUser.uid,
        email: firebaseUser.email!,
        name: ''
    );
  }

  @override
  Future<AppUser?> loginWithEmailPassword(String email, String password) async {
    try {

      // attempt signin
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      
      // create user
      AppUser user = AppUser(
          uid: userCredential.user!.uid,
          email: email,
          name: ''
      );

      // return user
      return user;

    } catch (error) {
      throw Exception('Login failed: $error');
    }
  }

  @override
  Future<void> logout() async {
    firebaseAuth.signOut();
  }

  @override
  Future<AppUser?> registerWithEmailPassword(String name, String email, String password) async {
    try {

      // attempt signup
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      // create user
      AppUser user = AppUser(
          uid: userCredential.user!.uid,
          email: email,
          name: name
      );

      // return user
      return user;

    } catch (error) {
      throw Exception('Signup failed: $error');
    }
  }
  
  
  
}