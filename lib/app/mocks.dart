part of '_index.dart';

class Mocks {
  static final Mocks instance = Mocks._privateConstructor();

  Mocks._privateConstructor();

  Future<void> init() async {
    injectMocks();
  }

  injectMocks() {
    Repo.sample.injectMock(() => SampleRepoMock());
    Repo.biodata.injectMock(() => BiodataRepoMock());
    Repo.auth.injectMock(() => AuthRepoMock());
  }
}
