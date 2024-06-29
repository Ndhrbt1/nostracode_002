part of '_index.dart';

class BiodataEditView extends StatelessWidget {
  const BiodataEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: BiodataEditAppbar(),
      ),
      floatingActionButton: const BiodataEditFab(),
      body: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _dt.rxPickedImage.st == null
                  ? SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.network(_dt.rxBiodataDetail.st!.imageUrl),
                    )
                  : SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.network(_dt.rxPickedImage.st!.path),
                    ),
              ElevatedButton(
                onPressed: () async {
                  _dt.rxPickedImage.st = await ImagePicker().pickImage(source: ImageSource.gallery);
                  debugPrint(_dt.rxPickedImage.st!.path.toString());
                },
                child: const Text(
                  "Pick image from gallery",
                ),
              ),
              const SizedBoxH(15),
              const BiodataEditName(),
              const SizedBoxH(15),
              const BiodataEditLevel(),
              const SizedBoxH(15),
              const BiodataEditQuotes(),
              const SizedBoxH(15),
              const BiodataEditStudy(),
              const SizedBoxH(15),
              const BiodataEditGrade(),
              const SizedBoxH(15),
              const BiodataEditSubmit(),
            ],
          ),
        ),
      ),
    );
  }
}
