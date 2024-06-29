part of '_index.dart';

class BiodataProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (p0) => _sv.onSetState(),
    ),
  );

  final rxBiodataList = RM.injectFuture<List<Biodata>>(() => Future.value([]),
      sideEffects: SideEffects(
        initState: () => _sv.readColl(),
      ));

  final rxPickedImage = RM.inject<XFile?>(() => null);

  final rxImageUrl = RM.inject<String>(() => '');

  final rxSelectedId = RM.inject<String>(() => '');

  final rxBiodataDetail = RM.injectFuture<Biodata?>(() => Future.value(null),
      sideEffects: SideEffects(
        initState: () => _sv.readDoc(),
      ));
}
