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

  updateDoc(Biodata data) {
    _rp.createDoc(data);
    _pv.rxBiodataList.setState(
      (s) {
        final index = _pv.rxBiodataList.st.indexWhere((element) => element.id == data.id);
        return s[index] = data;
      },
    );
  }

  deleteDoc(String id) {
    _pv.rxBiodataList.st = [..._pv.rxBiodataList.st]..removeWhere((element) => element.id == id);
    return _rp.deleteDoc(id);
  }

  selectedId(String id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.st = id;
  }

  readDoc() => _pv.rxBiodataDetail.stateAsync = _rp.getDoc();

  // * storage

  Future<String> getImageUrl(String id) async {
    final uin8list = await _pv.rxPickedImage.st?.readAsBytes();
    final contentType = _pv.rxPickedImage.st?.mimeType;
    final url = await FirebaseStorage.instance.ref(id).putData(
          uin8list!,
          SettableMetadata(contentType: contentType),
        );
    _pv.rxImageUrl.st = await url.ref.getDownloadURL();

    debugPrint(_pv.rxImageUrl.st);
    return _pv.rxImageUrl.st;
  }
}
