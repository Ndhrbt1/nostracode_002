part of '_index.dart';

class BiodataListData {
  final rxTitle = 'Biodata List'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxBiodataList = _pv.rxBiodataList;
}
