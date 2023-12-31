import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:safe_device/safe_device.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:test_webview/fb_remote_config.dart';
import 'package:test_webview/firebase_options.dart';
import 'package:test_webview/menu.dart';
import 'package:test_webview/navigation_controls.dart';
import 'package:test_webview/stub_page.dart';
import 'package:test_webview/web_view_stack.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
  FBRemoteConfig();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FBRemoteConfig()),
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: const WebViewApp(),
      ),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;
  bool isRealDevice = true;

  @override
  void initState() {
    super.initState();

    controller = WebViewController();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    isRealDevice = await SafeDevice.isRealDevice;
  }

  @override
  Widget build(BuildContext context) {
    bool haveUrl = context.watch<FBRemoteConfig>().haveUrl;

    if (haveUrl) {
      final url = FBRemoteConfig.url;
      if (url == '' || !isRealDevice) {
        return const StubPage();
      } else {
        return WebViewPage(controller: controller, url: url);
      }
    } else {
      return const Scaffold(
        body: Center(
          child: RefreshProgressIndicator(),
        ),
      );
    }
  }
}

class WebViewPage extends StatelessWidget {
  final WebViewController controller;
  final String url;
  const WebViewPage({
    Key? key,
    required this.controller,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool loadUrlBool = context.read<FBRemoteConfig>().loadUrl(controller, url);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
        actions: [
          NavigationControls(controller: controller),
          Menu(controller: controller),
        ],
      ),
      body: WebViewStack(controller: controller, loadUrlBool: loadUrlBool),
    );
  }
}
