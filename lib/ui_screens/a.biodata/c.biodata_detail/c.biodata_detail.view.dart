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
            child: Card(
              color: Colors.white10,
              child: SizedBox(
                height: 450,
                width: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    data!.imageUrl.isEmpty
                        ? const Card(
                            color: Colors.white10,
                            child: SizedBox(
                              height: 150,
                              width: 150,
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
                            child: Image.network(data.imageUrl),
                          ),
                    const SizedBox(height: 15),
                    Text('Name: ${data.name}'),
                    Text('Level: ${data.level}'),
                    Text(
                      'Quotes: ${data.quotes}',
                      textAlign: TextAlign.center,
                    ),
                    Text('Study: ${data.study}'),
                    Text('Grade: ${data.grade}'),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
