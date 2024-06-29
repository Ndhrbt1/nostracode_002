part of '_index.dart';

class BiodataDetailView extends StatelessWidget {
  const BiodataDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: BiodataDetailAppbar(),
      ),
      floatingActionButton: BiodataDetailFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BiodataDetailCharlie(),
            BiodataDetailDelta(),
            BiodataDetailEcho(),
          ],
        ),
      ),
    );
  }
}
