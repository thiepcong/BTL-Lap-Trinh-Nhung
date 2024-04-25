import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/flavors/build_config.dart';
import 'app/flavors/env_config.dart';
import 'app/flavors/environment.dart';
import 'app/my_app.dart';
import 'app/core/config/app_bloc_observer.dart';

void main() async {
  Bloc.observer = AppBlocObserver();

  EnvConfig devConfig = EnvConfig(
    appName: "Othello",
    appVersion: "0.1",
    apiBaseUrl: "",
    webBaseUrl: "",
    shouldCollectCrashLog: true,
    iOSAppId: '',
    androidAppId: '',
  );

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );

  WidgetsFlutterBinding.ensureInitialized();


  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

