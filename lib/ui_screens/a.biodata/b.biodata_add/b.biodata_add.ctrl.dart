part of '_index.dart';

class BiodataAddCtrl {
  init() => logxx.i(BiodataAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
