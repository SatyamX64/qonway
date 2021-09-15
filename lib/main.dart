import 'package:flutter/material.dart';

import 'app/app_config.dart';
import 'app/app_router.dart';
import 'app/my_app.dart';

Future<void> main() async {
  await MyApp.initGlobalConfigs();
  runApp(
    AppConfig(
      name: 'Qonway',
      initialRoute: AppRouter.HOME,
      flavour: Flavour.developement,
      child: MyApp.run(),
    ),
  );
}
