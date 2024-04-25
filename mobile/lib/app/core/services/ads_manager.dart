import '../../flavors/build_config.dart';
import '../../flavors/environment.dart';

class AdsManager {
  static final environment = BuildConfig.instance.environment;
  static String get bannerAdUnitId {
    if (environment == Environment.DEVELOPMENT) {
      return 'ca-app-pub-3940256099942544/6300978111';
    } else {
      return 'ca-app-pub-9696384850738948/6248309615';
    }
  }

  static String get interstitialAdUnitId {
    if (environment == Environment.DEVELOPMENT) {
      return 'ca-app-pub-3940256099942544/1033173712';
    } else {
      return 'ca-app-pub-9696384850738948/9993465547';
    }
  }

  static String get rewardedAdUnitId {
    if (environment == Environment.DEVELOPMENT) {
      return 'ca-app-pub-3940256099942544/5224354917';
    } else {
      return 'ca-app-pub-9696384850738948/7435600878';
    }
  }
}

abstract class AdsId {
  static const String adsOpenApp = 'app_open_ads';

  static const String native = 'native';

  static const String inter = 'inter';

  static const String banner = 'banner';
}
