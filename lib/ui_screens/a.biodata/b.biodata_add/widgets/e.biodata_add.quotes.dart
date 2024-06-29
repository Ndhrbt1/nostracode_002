part of '../_index.dart';

class BiodataAddQuotes extends StatelessWidget {
  const BiodataAddQuotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxQuotes.controller,
        decoration: InputDecoration(
          hintText: 'input quotes',
          labelText: 'quotes',
          errorText: _dt.rxQuotes.error,
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
      ),
    );
  }
}
