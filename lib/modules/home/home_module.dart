import 'package:flutter_modular/flutter_modular.dart';
import 'package:tasker/modules/home/presentation/view/home_view.dart';

class HomeModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomeView());
  }
}
