part of '../_index.dart';

class BiodataDetailAppbar extends StatelessWidget {
  const BiodataDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
