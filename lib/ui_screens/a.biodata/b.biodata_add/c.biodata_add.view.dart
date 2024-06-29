part of '_index.dart';

class BiodataAddView extends StatelessWidget {
  const BiodataAddView({super.key});

// name
// level
// quotes
// study
// grade

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: BiodataAddAppbar(),
      ),
      // floatingActionButton: const BiodataAddFab(),
      body: Center(
        child: OnFormBuilder(
          listenTo: _dt.rxForm,
          builder: () => SizedBox(
            width: 480,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _dt.rxPickedImage.st == null
                    ? const Card(
                        color: Colors.white10,
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Center(
                              child: Text(
                            'pick image from gallery',
                            textAlign: TextAlign.center,
                          )),
                        ),
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
                const BiodataAddName(),
                const SizedBoxH(15),
                const SizedBoxH(15),
                const BiodataAddLevel(),
                const SizedBoxH(15),
                const BiodataAddQuotes(),
                const SizedBoxH(15),
                const BiodataAddStudy(),
                const SizedBoxH(15),
                const BiodataAddGrade(),
                const SizedBoxH(15),
                const BiodataAddSubmit()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
