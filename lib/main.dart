import 'package:dio/browser.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:universal_html/html.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/nav/nav.dart';
import 'services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();

  await FlutterFlowTheme.initialize();

  // Ory auth steps as per https://www.ory.sh/docs/getting-started/integrate-auth/flutter-web-redirect 
  await dotenv.load(fileName: ".env");
  final baseUrl = dotenv.get("ORY_BASE_URL").toString();

  // create the dio client for http requests
  final options = BaseOptions(
      method: "passkey",
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10000),
      receiveTimeout: const Duration(seconds: 5000),
      headers: {
        "Accept": "application/json",
      },
      validateStatus: (status) {
        // here we prevent the request from throwing an error when the status code is less than 500 (internal server error)
        return status! < 500;
      },
    );
    final dio = DioForBrowser(options);
    final adapter = BrowserHttpClientAdapter();
    // enable cookies support
    // we need this so we can send HTTP requests to the server with the cookies stored in the browser
    adapter.withCredentials = true;
    dio.httpClientAdapter = adapter;

    final auth = AuthService(dio);

    if (!(await auth.isAuthenticated())) {
      _launchURL(baseUrl);
      return;
    }
    
  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: const MyApp(),
  ));
}

void _launchURL(String url) async {
  window.open("$url/self-service/login/browser", '_self');
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Deepengine',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}
