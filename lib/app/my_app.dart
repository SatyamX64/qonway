import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:qonway/data/source/data_source.dart';

import 'app_config.dart';
import 'app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appConfig = AppConfig.of(context);
    return MaterialApp(
      title: appConfig.name,
      initialRoute: appConfig.initialRoute,
      onGenerateRoute: AppRouter.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Lato'),
    );
  }

  static Future<void> initGlobalConfigs() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft
    ]);
  }

  static Widget run() {
    final DataSource dataSource = DataSource();

    return Provider.value(value: dataSource, child: const MyApp());
  }
}
