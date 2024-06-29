part of '_index.dart';

class BiodataListCtrl {
  init() => logxx.i(BiodataListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  readColl() => _sv.readColl();

  createDoc() {
    final data = Biodata(
      id: UniqueKey().toString(),
      name: 'indah',
      level: 'bootcamp',
      quotes: 'lslsllssll',
      study: 'uncil',
      grade: 2,
      createdAt: DateTime.now().toString(),
    );
    _sv.createDoc(data);
  }

  updateDoc({required String id, required createdAt}) {
    final data = Biodata(
      id: id,
      name: 'updated',
      level: 'bootcamp',
      quotes: 'lslsllssll',
      study: 'uncil',
      grade: 2,
      createdAt: createdAt,
    );
    _sv.updateDoc(data);
  }

  deleteDoc(String id) => _sv.deleteDoc(id);
}
