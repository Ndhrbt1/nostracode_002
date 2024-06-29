part of '_index.dart';

class BiodataListCtrl {
  init() => logxx.i(BiodataListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
