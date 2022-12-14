// File containing Routes, DI, Guards...
import 'package:flutter_modular/flutter_modular.dart';

import 'module/property/property_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: PropertyModule()),
      ];
}
