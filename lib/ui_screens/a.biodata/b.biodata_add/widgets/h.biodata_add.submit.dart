part of '../_index.dart';

class BiodataAddSubmit extends StatelessWidget {
  const BiodataAddSubmit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormSubmissionBuilder(
      listenTo: _dt.rxForm,
      onSubmitting: () => const CircularProgressIndicator(),
      child: ElevatedButton(
        onPressed: () => _ct.submit(),
        child: const Text(
          "submit",
        ),
      ),
    );
  }
}
