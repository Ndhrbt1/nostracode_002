part of '_index.dart';

class BiodataDetailCtrl {
  init() => logxx.i(BiodataDetailCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
