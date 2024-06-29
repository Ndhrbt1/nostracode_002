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
      floatingActionButton: const BiodataAddFab(),
      body: Center(
        child: OnFormBuilder(
          listenTo: _dt.rxForm,
          builder: () => SizedBox(
            width: 480,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnFormBuilder(
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
                ),
                const SizedBoxH(15),
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    controller: _dt.rxLevel.controller,
                    decoration: InputDecoration(
                      hintText: 'input level',
                      labelText: 'level',
                      errorText: _dt.rxLevel.error,
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                    ),
                  ),
                ),
                const SizedBoxH(15),
                OnFormBuilder(
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
                ),
                const SizedBoxH(15),
                OnFormBuilder(
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
                ),
                const SizedBoxH(15),
                OnFormBuilder(
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
                ),
                const SizedBoxH(15),
                OnFormSubmissionBuilder(
                  listenTo: _dt.rxForm,
                  onSubmitting: () => const CircularProgressIndicator(),
                  child: ElevatedButton(
                    onPressed: () => _ct.submit(),
                    child: const Text(
                      "submit",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
