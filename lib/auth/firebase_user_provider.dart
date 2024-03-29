import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CommunicoFirebaseUser {
  CommunicoFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

CommunicoFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CommunicoFirebaseUser> communicoFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<CommunicoFirebaseUser>(
        (user) => currentUser = CommunicoFirebaseUser(user));
