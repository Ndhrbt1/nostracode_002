part of '_index.dart';

class BiodataRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from BiodataRepo');
    return x;
  }

  Future<List<Biodata>> getColl() async {
    List<Biodata> biodata = [];
    final result = await FirebaseFirestore.instance.collection('nc002').get();

    for (var element in result.docs) {
      biodata.add(Biodata.fromMap(element.data()));
    }

    debugPrint(result.docs[0].data().toString());
    return biodata;
  }

  Future<Biodata?> getDoc() async {
    final getDoc = await FirebaseFirestore.instance.collection('nc002').doc(_pv.rxSelectedId.st).get();
    final product = Biodata.fromMap(getDoc.data() ?? {});

    return product;
  }

  Future<void> createDoc(Biodata data) async {
    await FirebaseFirestore.instance.collection('nc002').doc(data.id).set(data.toMap());
  }

  Future<void> deleteDoc(String id) async {
    await FirebaseFirestore.instance.collection('nc002').doc(id).delete();
  }
}
