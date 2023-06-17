import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

class FBRemoteConfig extends ChangeNotifier {
  static const keyUrl = 'key_url';
  bool ready = false;
  static String url = '';
  FBRemoteConfig() {
    initialize();
  }
  final remoteConfig = FirebaseRemoteConfig.instance;
  initialize() async {
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(minutes: 5),
    ));
    await remoteConfig.fetchAndActivate();
    getString();
  }

  getString() {
    url = remoteConfig.getString(keyUrl);

    ready = true;
    notifyListeners();
  }

  update() {
    remoteConfig.onConfigUpdated.listen((event) async {
      await remoteConfig.activate();
    });
  }
}
