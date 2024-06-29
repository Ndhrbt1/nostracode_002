part of '_index.dart';

class BiodataServ {
  void init() {
    logxx.i(BiodataServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(BiodataServ, 'rxCounter setState success');
  }

  readColl() => _pv.rxBiodataList.stateAsync = _rp.getColl();

  createDoc(Biodata data) {
    _pv.rxBiodataList.st = [..._pv.rxBiodataList.st]..insert(0, data);
    return _rp.createDoc(data);
  }

  deleteDoc(String id) {
    _pv.rxBiodataList.st = [..._pv.rxBiodataList.st]..removeWhere((element) => element.id == id);
    return _rp.deleteDoc(id);
  }
}
