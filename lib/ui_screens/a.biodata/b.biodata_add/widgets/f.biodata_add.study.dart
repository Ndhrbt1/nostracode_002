part of '../_index.dart';

class BiodataAddStudy extends StatelessWidget {
  const BiodataAddStudy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxStudy.controller,
        decoration: InputDecoration(
          hintText: 'input study',
          labelText: 'study',
          errorText: _dt.rxStudy.error,
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
      ),
    );
  }
}
