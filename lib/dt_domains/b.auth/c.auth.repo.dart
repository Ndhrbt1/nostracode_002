part of '_index.dart';

class AuthRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from AuthRepo');
    return x;
  }

  Future<void> signInAnonymously() async {
    final anon = await FirebaseAuth.instance.signInAnonymously();
    debugPrint(anon.user.toString());
  }

  Future<void> signInByGoogle() async {
    final GoogleAuthProvider provider = GoogleAuthProvider().setCustomParameters({"prompt": "select_account"});
    final google = await FirebaseAuth.instance.signInWithPopup(provider);
    debugPrint(google.user.toString());
  }

  Future<void> deleteCurrentUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
    debugPrint('deleted');
  }

  Future<void> createUserEP({required String email, required String password}) async {
    final create = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    debugPrint(create.user.toString());
  }

  Future<void> signInEP({required String email, required String password}) async {
    final signin = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    debugPrint(signin.user.toString());
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    debugPrint('sign out');
  }
}
