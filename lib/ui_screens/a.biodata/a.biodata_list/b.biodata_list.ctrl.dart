part of '_index.dart';

class BiodataListCtrl {
  init() => logxx.i(BiodataListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<List<Biodata>> getColl() async {
    List<Biodata> biodata = [];
    final result = await FirebaseFirestore.instance.collection('nc002').get();

    for (var element in result.docs) {
      biodata.add(Biodata.fromMap(element.data()));
    }

    debugPrint(result.docs[0].data().toString());
    return biodata;
  }

  readColl() => _dt.rxBiodataList.stateAsync = _ct.getColl();
}
