part of '_index.dart';

class BiodataAddData {
  final rxTitle = 'Biodata Add'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.createDoc();
      nav.back();
    },
  );

  final rxName = RM.injectTextEditing(
    text: 'default name',
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );
  final rxLevel = RM.injectTextEditing(
    text: 'default level',
    validators: [
      Validate.isNotEmpty,
      Validate.alphaNumericSpace,
    ],
  );
  final rxQuotes = RM.injectTextEditing(
    text: 'default quotes',
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );
  final rxStudy = RM.injectTextEditing(
    text: 'default study',
    validators: [
      Validate.isNotEmpty,
      Validate.alphaNumericSpace,
    ],
  );
  final rxGrade = RM.injectTextEditing(
    text: '2',
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );
}
