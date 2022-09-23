import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DeviiFirebaseUser {
  DeviiFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DeviiFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DeviiFirebaseUser> deviiFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<DeviiFirebaseUser>((user) => currentUser = DeviiFirebaseUser(user));
