part of '_index.dart';

abstract class Repo {
  static Injected<SampleRepo> get sample => _sampleRepo;
  static Injected<BiodataRepo> get biodata => _biodataRepo;
  static Injected<AuthRepo> get auth => _authRepo;
}

final _sampleRepo = RM3.inj(SampleRepo());

final _biodataRepo = RM3.inj(BiodataRepo());
final _authRepo = RM3.inj(AuthRepo());
