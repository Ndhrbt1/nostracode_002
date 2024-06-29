part of '_index.dart';

abstract class Data {
  static Injected<HomeData> get home => _homeData;
  static Injected<SampleSatuData> get sampleSatu => _sampleSatuData;
  static Injected<SampleDuaData> get sampleDua => _sampleDuaData;
  static Injected<SampleTigaData> get sampleTiga => _sampleTigaData;
  static Injected<BiodataListData> get biodataList => _biodataListData;

  static Injected<BiodataAddData> get biodataAdd => _biodataAddData;
  static Injected<BiodataDetailData> get biodataDetail => _biodataDetailData;
  static Injected<BiodataEditData> get biodataEdit => _biodataEditData;
  static Injected<LoginData> get login => _loginData;
  static Injected<RegisterData> get register => _registerData;
}

final _homeData = RM1.inj(HomeData(), Ctrl.home.init);

final _sampleSatuData = RM1.inj(SampleSatuData(), Ctrl.sampleSatu.init);
final _sampleDuaData = RM1.inj(SampleDuaData(), Ctrl.sampleDua.init);
final _sampleTigaData = RM1.inj(SampleTigaData(), Ctrl.sampleTiga.init);

final _biodataListData = RM1.inj(BiodataListData(), Ctrl.biodataList.init);
final _biodataAddData = RM1.inj(BiodataAddData(), Ctrl.biodataAdd.init);
final _biodataDetailData = RM1.inj(BiodataDetailData(), Ctrl.biodataDetail.init);
final _biodataEditData = RM1.inj(BiodataEditData(), Ctrl.biodataEdit.init);

final _loginData = RM1.inj(LoginData(), Ctrl.login.init);

final _registerData = RM1.inj(RegisterData(), Ctrl.register.init);
