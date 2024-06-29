part of '_index.dart';

class BiodataAddView extends StatelessWidget {
  const BiodataAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: BiodataAddAppbar(),
      ),
      floatingActionButton: BiodataAddFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BiodataAddCharlie(),
            BiodataAddDelta(),
            BiodataAddEcho(),
          ],
        ),
      ),
    );
  }
}
