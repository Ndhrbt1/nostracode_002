part of '_index.dart';

class BiodataEditCtrl {
  init() => logxx.i(BiodataEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
