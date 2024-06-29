part of '../_index.dart';

class BiodataEditQuotes extends StatelessWidget {
  const BiodataEditQuotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxQuotes.st.controller,
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
