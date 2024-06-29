part of '_index.dart';

class BiodataListView extends StatelessWidget {
  const BiodataListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: BiodataListAppbar(),
      ),
      floatingActionButton: const BiodataListFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final test = await FirebaseFirestore.instance.collection('nc002').get();
                debugPrint(test.toString());
                debugPrint(test.docs[0].data()['age'].toString());
              },
              child: const Text(
                "Elevated Button",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
