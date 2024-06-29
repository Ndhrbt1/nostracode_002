part of '_index.dart';

abstract class Prov {
  static Injected<SampleProv> get sample => _sampleProv;
  static Injected<BiodataProv> get biodata => _biodataProv;
  static Injected<AuthProv> get auth => _authProv;
}

final _sampleProv = RM2.inj(SampleProv());

final _biodataProv = RM2.inj(BiodataProv());
final _authProv = RM2.inj(AuthProv());
