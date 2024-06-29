part of '../_index.dart';

class BiodataEditAppbar extends StatelessWidget {
  const BiodataEditAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
