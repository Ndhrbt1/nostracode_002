part of '_index.dart';

class AuthRepoMock implements AuthRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from AuthRepoMock');
    return x;
  }

  @override
  Future<void> createUserEP({required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteCurrentUser() {
    throw UnimplementedError();
  }

  @override
  Future<void> signInAnonymously() {
    throw UnimplementedError();
  }

  @override
  Future<void> signInByGoogle() {
    throw UnimplementedError();
  }

  @override
  Future<void> signInEP({required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
