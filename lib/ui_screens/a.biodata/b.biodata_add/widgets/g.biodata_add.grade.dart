part of '../_index.dart';

class BiodataAddGrade extends StatelessWidget {
  const BiodataAddGrade({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxGrade.controller,
        decoration: InputDecoration(
          hintText: 'input grade',
          labelText: 'grade',
          errorText: _dt.rxGrade.error,
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
      ),
    );
  }
}
