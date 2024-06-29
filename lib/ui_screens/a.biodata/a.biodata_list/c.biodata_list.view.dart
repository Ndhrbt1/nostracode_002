part of '_index.dart';

class BiodataListView extends StatelessWidget {
  const BiodataListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: BiodataListAppbar(),
      ),
      floatingActionButton: const BiodataListFab(),
      body: OnBuilder<List<Biodata>>.all(
        listenTo: _dt.rxBiodataList,
        onWaiting: () => const Center(
          child: CircularProgressIndicator(),
        ),
        onError: (error, refreshError) => Text(error),
        onData: (data) => OnReactive(
          () => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  data.length,
                  (index) => Card(
                    color: Colors.white10,
                    child: ListTile(
                      title: Text(data[index].name),
                      subtitle: Text(data[index].id),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              _ct.deleteDoc(data[index].id);
                            },
                            icon: const Icon(Icons.delete),
                          ),
                          IconButton(
                            onPressed: () {
                              _ct.updateDoc(
                                id: data[index].id,
                                createdAt: data[index].createdAt,
                              );
                            },
                            icon: const Icon(Icons.repeat),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _ct.createDoc();
                  },
                  child: const Text(
                    "create doc",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
