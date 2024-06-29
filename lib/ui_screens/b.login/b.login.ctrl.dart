part of '_index.dart';

class LoginCtrl {
  init() => logxx.i(LoginCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  signInAnonymously() => _sv.signInAnonymously();

  signInByGoogle() => _sv.signInByGoogle();

  signOut() => _sv.signOut();

  deleteCurrentUser() => _sv.deleteCurrentUser();

  submit() => _dt.rxForm.submit();

  signInEP() async {
    await _sv.signInEP(
      email: _dt.rxEmail.value,
      password: _dt.rxPassword.value,
    );
  }
}
