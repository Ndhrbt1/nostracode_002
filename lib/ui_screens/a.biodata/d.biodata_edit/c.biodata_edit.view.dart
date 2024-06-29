part of '_index.dart';

class BiodataEditView extends StatelessWidget {
  const BiodataEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: BiodataEditAppbar(),
      ),
      floatingActionButton: BiodataEditFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BiodataEditCharlie(),
            BiodataEditDelta(),
            BiodataEditEcho(),
          ],
        ),
      ),
    );
  }
}
