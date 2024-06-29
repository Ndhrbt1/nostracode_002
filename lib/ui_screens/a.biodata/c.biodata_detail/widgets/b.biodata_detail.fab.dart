part of '../_index.dart';

class BiodataDetailFab extends StatelessWidget {
  const BiodataDetailFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        nav.to(Routes.biodataEdit);
      },
    );
  }
}
