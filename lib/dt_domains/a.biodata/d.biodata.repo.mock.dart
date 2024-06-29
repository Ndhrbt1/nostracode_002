part of '_index.dart';

class BiodataRepoMock implements BiodataRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from BiodataRepoMock');
    return x;
  }

  @override
  Future<List<Biodata>> getColl() {
    throw UnimplementedError();
  }

  @override
  Future<void> createDoc(Biodata data) {
    throw UnimplementedError();
  }
}
