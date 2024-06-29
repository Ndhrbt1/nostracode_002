part of '_index.dart';

abstract class Serv {
  static SampleServ get sample => SampleServ();
  static BiodataServ get biodata => BiodataServ();
  static AuthServ get auth => AuthServ();
}
