part of '_index.dart';

class BiodataEditData {
  final rxTitle = 'Biodata Edit'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxBiodataDetail = _pv.rxBiodataDetail;

  final rxPickedImage = _pv.rxPickedImage;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.updateDoc();
      nav.back();
      nav.back();
    },
  );

  final rxName = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxBiodataDetail.st?.name}',
      validators: [
        Validate.isNotEmpty,
        Validate.fullName,
      ],
    ),
  );

  final rxLevel = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxBiodataDetail.st?.level}',
      validators: [
        Validate.isNotEmpty,
        Validate.alphaNumericSpace,
      ],
    ),
  );

  final rxQuotes = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxBiodataDetail.st?.quotes}',
      validators: [
        Validate.isNotEmpty,
        Validate.description,
      ],
    ),
  );

  final rxStudy = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxBiodataDetail.st?.study}',
      validators: [
        Validate.isNotEmpty,
        Validate.alphaNumericSpace,
      ],
    ),
  );
  final rxGrade = RM.inject(
    () => RM.injectTextEditing(
      text: '${_dt.rxBiodataDetail.st?.grade}',
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
      ],
    ),
  );
}
