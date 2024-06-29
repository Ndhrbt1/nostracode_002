part of '_index.dart';

class BiodataEditCtrl {
  init() => logxx.i(BiodataEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  submit() => _dt.rxForm.submit();

  updateDoc() async {
    String imageUrl = _dt.rxBiodataDetail.st!.imageUrl;

    if (_dt.rxPickedImage.st != null) {
      imageUrl = await _sv.getImageUrl(_dt.rxBiodataDetail.st!.id);
    }

    final data = Biodata(
      id: _dt.rxBiodataDetail.st!.id,
      name: _dt.rxName.st.value,
      level: _dt.rxLevel.st.value,
      quotes: _dt.rxQuotes.st.value,
      study: _dt.rxStudy.st.value,
      grade: int.parse(_dt.rxGrade.st.value),
      createdAt: _dt.rxBiodataDetail.st!.createdAt,
      imageUrl: imageUrl,
    );
    debugPrint(data.toString());
    await _sv.updateDoc(data);
  }
}
