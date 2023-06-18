import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FBRemoteConfig extends ChangeNotifier {
  static const keyUrl = 'key_url';
  static String url = '';
  bool haveUrl = false;
  bool loadWebViewPage = false;

  final remoteConfig = FirebaseRemoteConfig.instance;

  FBRemoteConfig() {
    initialize();
  }

  void initialize() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? localUrl = prefs.getString(keyUrl);

    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(minutes: 5),
    ));

    if (localUrl == null || localUrl == '') {
      await remoteConfig.fetchAndActivate();
      getUrl(prefs);
    } else {
      getLocalUrl(localUrl);
    }
  }

  bool loadUrl(WebViewController controller, String url) {
    if (!loadWebViewPage) {
      controller
          .loadRequest(
        Uri.parse(url),
      )
          .then((value) {
        loadWebViewPage = true;

        notifyListeners();
      }).timeout(const Duration(seconds: 10));
    }

    return loadWebViewPage;
  }

  void getUrl(SharedPreferences prefs) async {
    url = remoteConfig.getString(keyUrl);
    await prefs.setString(keyUrl, url);
    haveUrl = true;
    notifyListeners();
  }

  void getLocalUrl(String localUrl) {
    url = localUrl;
    haveUrl = true;
    notifyListeners();
  }
}
