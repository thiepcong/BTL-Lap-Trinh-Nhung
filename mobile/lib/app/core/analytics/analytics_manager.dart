

class AnalyticsManager {
//   static final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

//   static FirebaseAnalyticsObserver observer =
//       FirebaseAnalyticsObserver(analytics: analytics);

//   static Future<void> trackingViewScreen(TrackingScreenViewType screen) {
//     return analytics.setCurrentScreen(
//         screenName: screen.screenName, screenClassOverride: screen.screenClass);
//   }

//   static Future<void> sendAnalyticsEvent(String name) async {
//     // Only strings and numbers (longs & doubles for android, ints and doubles for iOS) are supported for GA custom event parameters:
//     // https://firebase.google.com/docs/reference/ios/firebaseanalytics/api/reference/Classes/FIRAnalytics#+logeventwithname:parameters:
//     // https://firebase.google.com/docs/reference/android/com/google/firebase/analytics/FirebaseAnalytics#public-void-logevent-string-name,-bundle-params
//     await analytics.logEvent(
//       name: name,
//       parameters: <String, dynamic>{
//         'string': 'string',
//         'int': 42,
//         'long': 12345678910,
//         'double': 42.0,
//         // Only strings and numbers (ints & doubles) are supported for GA custom event parameters:
//         // https://developers.google.com/analytics/devguides/collection/analyticsjs/custom-dims-mets#overview
//         'bool': true.toString(),
//       },
//     );
//   }

//   static Future<void> setUserId(String id) async {
//     await analytics.setUserId(id: id);
//     await login();
//   }

//   static Future<void> login() async {
//     await analytics.logLogin(loginMethod: 'device_id');
//   }

//   static Future<void> signUp() async {
//     await analytics.logSignUp(signUpMethod: 'fill_name');
//   }

//   static Future<void> share(
//       String method, String itemId, String contentType) async {
//     await analytics.logShare(
//         method: method, itemId: itemId, contentType: contentType);
//   }

//   static Future<void> postScore(int score, int? level) async {
//     await analytics.logPostScore(score: score, level: level);
//   }

//   static Future<void> logAdImpression() async {
//     await analytics.logAdImpression(
//       adPlatform: Platform.isAndroid ? 'android' : 'ios',
//       adSource: 'google admob',
//     );
//   }
// }

// enum TrackingScreenViewType {
//   home,
//   leaderBoard,
//   singleDif,
//   singleEasy,
//   multiPlayer,
//   achievement,
//   howToPlay,
// }

// extension TrackingScreenViewTypeX on TrackingScreenViewType {
//   String get screenName {
//     switch (this) {
//       case TrackingScreenViewType.home:
//         return 'home';
//       case TrackingScreenViewType.leaderBoard:
//         return 'leader_board';
//       case TrackingScreenViewType.singleDif:
//         return 'single_dif';
//       case TrackingScreenViewType.singleEasy:
//         return 'single_easy';
//       case TrackingScreenViewType.multiPlayer:
//         return 'multi_player';
//       case TrackingScreenViewType.achievement:
//         return 'achievement';
//       case TrackingScreenViewType.howToPlay:
//         return 'how_to_play';
//     }
//   }

//   String get screenClass {
//     switch (this) {
//       case TrackingScreenViewType.home:
//         return 'HomeView';
//       case TrackingScreenViewType.leaderBoard:
//         return 'LeaderBoardView';
//       case TrackingScreenViewType.singleDif:
//         return 'DifficultBot';
//       case TrackingScreenViewType.singleEasy:
//         return 'EasyBotView';
//       case TrackingScreenViewType.multiPlayer:
//         return 'MultiPlayerView';
//       case TrackingScreenViewType.achievement:
//         return 'AchievementView';
//       case TrackingScreenViewType.howToPlay:
//         return 'HowToPlayView';
//     }
//   }
}
