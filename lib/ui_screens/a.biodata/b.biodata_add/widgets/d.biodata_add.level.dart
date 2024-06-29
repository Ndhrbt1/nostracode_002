part of '../_index.dart';

class BiodataAddLevel extends StatelessWidget {
  const BiodataAddLevel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxLevel.controller,
        decoration: InputDecoration(
          hintText: 'input level',
          labelText: 'level',
          errorText: _dt.rxLevel.error,
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
      ),
    );
  }
}
