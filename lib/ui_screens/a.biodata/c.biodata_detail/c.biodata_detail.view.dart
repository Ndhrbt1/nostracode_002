part of '_index.dart';

class BiodataDetailView extends StatelessWidget {
  const BiodataDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: BiodataDetailAppbar(),
        ),
        floatingActionButton: const BiodataDetailFab(),
        body: OnBuilder<Biodata?>.all(
          listenTo: _dt.rxBiodataDetail,
          onWaiting: () => const Center(
            child: CircularProgressIndicator(),
          ),
          onError: (error, refreshError) => const Text('error'),
          onData: (data) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                data!.imageUrl.isEmpty
                    ? const Text('empty photo')
                    : SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network(data.imageUrl),
                      ),
                Text(data.name),
                Text(data.level),
                Text(data.quotes),
                Text(data.study),
                Text(data.grade.toString()),
              ],
            ),
          ),
        ));
  }
}
