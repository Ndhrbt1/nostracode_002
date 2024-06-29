part of '_index.dart';

class BiodataDetailData {
  final rxTitle = 'Biodata Detail'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxBiodataDetail = _pv.rxBiodataDetail;
}
