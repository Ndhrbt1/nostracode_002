part of '../_index.dart';

class BiodataAddName extends StatelessWidget {
  const BiodataAddName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxName.controller,
        decoration: InputDecoration(
          hintText: 'input name',
          errorText: _dt.rxName.error,
          labelText: 'name',
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
      ),
    );
  }
}
