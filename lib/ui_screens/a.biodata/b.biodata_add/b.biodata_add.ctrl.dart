part of '_index.dart';

class BiodataAddCtrl {
  init() => logxx.i(BiodataAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  createDoc() async {
    final data = Biodata(
      id: UniqueKey().toString(),
      name: _dt.rxName.value,
      level: _dt.rxLevel.value,
      quotes: _dt.rxQuotes.value,
      study: _dt.rxStudy.value,
      grade: int.parse(_dt.rxGrade.value),
      createdAt: DateTime.now().toString(),
    );
    await _sv.createDoc(data);
    debugPrint(data.toString());
  }

  submit() => _dt.rxForm.submit();
}
