part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    Routes.home: (RouteData data) => const HomeView(),
    Routes.sampleSatu: (RouteData data) => const SampleSatuView(),
    Routes.sampleDua: (RouteData data) => const SampleDuaView(),
    Routes.sampleTiga: (RouteData data) => const SampleTigaView(),
    Routes.biodataList: (RouteData data) => const BiodataListView(),
    Routes.biodataAdd: (RouteData data) => const BiodataAddView(),
    Routes.biodataDetail: (RouteData data) => const BiodataDetailView(),
    Routes.biodataEdit: (RouteData data) => const BiodataEditView(),
    Routes.login: (RouteData data) => const LoginView(),
    Routes.register: (RouteData data) => const RegisterView(),
  };
}
