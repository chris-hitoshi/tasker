import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tasker/modules/home/home_module.dart';

void main() {
  return runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tasker',
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorScheme: const ColorScheme.light(
          background: Colors.white,
        ),
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
  }
}
