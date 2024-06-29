part of '_index.dart';

class RegisterCtrl {
  init() => logxx.i(RegisterCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  submit() => _dt.rxForm.submit();

  createUserEP() async {
    await _sv.createUserEP(
      email: _dt.rxEmail.value,
      password: _dt.rxPassword.value,
    );
  }
}
