part of '_index.dart';

class BiodataListData {
  final rxTitle = 'Welcome To Nostradamus'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxBiodataList = _pv.rxBiodataList;

  final rxSelectedId = _pv.rxSelectedId;
}
