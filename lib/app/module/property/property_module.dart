import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/property_page.dart';
import 'presenter/stores/property_store.dart';

class PropertyModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton(((i) => PropertyStore(
        lastSale: null,
        leased: '',
        size: null,
        leases: const [],
        demographies: const []))),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => PropertyPage(),
    )
  ];
}
