part of '_index.dart';

abstract class Ctrl {
  static HomeCtrl get home => HomeCtrl();
  static SampleSatuCtrl get sampleSatu => SampleSatuCtrl();
  static SampleDuaCtrl get sampleDua => SampleDuaCtrl();
  static SampleTigaCtrl get sampleTiga => SampleTigaCtrl();
  static BiodataListCtrl get biodataList => BiodataListCtrl();
  static BiodataAddCtrl get biodataAdd => BiodataAddCtrl();
  static BiodataDetailCtrl get biodataDetail => BiodataDetailCtrl();
  static BiodataEditCtrl get biodataEdit => BiodataEditCtrl();
}
