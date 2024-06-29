part of '../_index.dart';

class BiodataAddAppbar extends StatelessWidget {
  const BiodataAddAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
