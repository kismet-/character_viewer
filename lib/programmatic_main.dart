import 'package:character_viewer/build_flavor.dart';
import 'package:character_viewer/home/page/home_page.dart';
import 'package:character_viewer/inject/mobile_module.dart';
import 'package:character_viewer/lifecycle/lifecycle_listener.dart';
import 'package:character_viewer/lifecycle_managed_service.dart';
import 'package:character_viewer/logging/logging.dart';
import 'package:character_viewer/provided_service.dart';
import 'package:character_viewer/service_provider.dart';
import 'package:character_viewer/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

final _log = Logger('main');

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void programmaticMain(BuildFlavorConfiguration configuration) async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLogging(configuration);

  final injector = await AppInjector.create(
    mobileModule: MobileModule(configuration: configuration),
  );

  final services = (injector.services() as Iterable<ProvidedService>).toList()
    ..add(injector);
  final lifecycleServices = injector.lifecycleManagedServices();
  injector..createRepositoryManager();

  runApp(
    ServiceProvider(
      services: services,
      parent: null,
      child: LifecycleListener(
        services: lifecycleServices as Iterable<LifecycleManagedService>,
        child: CharacterViewer(
          GlobalRouteHandler(),
          configuration,
        ),
      ),
    ),
  );
}

/// Main widget of the CharacterViewer app.
class CharacterViewer extends StatelessWidget {
  final GlobalRouteHandler _globalRouteHandler;
  final BuildFlavorConfiguration _configuration;

  CharacterViewer(
    this._globalRouteHandler,
    this._configuration,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Character Viewer',
      theme: ThemeData(useMaterial3: true),
      navigatorKey: navigatorKey,
      color: AppColors.background,
      debugShowCheckedModeBanner: _configuration.useDebugMode,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: child!,
        );
      },
      onGenerateRoute: _globalRouteHandler.onGenerateRoute,
      initialRoute: '/',
      home: HomePage(),
    );
  }
}

class GlobalRouteHandler {
  Route? onGenerateRoute(RouteSettings settings) {
    Uri uri;
    try {
      uri = Uri.parse(settings.name!);
    } on FormatException catch (e, s) {
      _log.severe('Failed to parse navigation route: ${settings.name}', e, s);
      return null;
    }
    _log.info('Generating global route for $uri');
    if (uri.pathSegments.length < 2) {
      _log.severe('Root navigation missing path information: $uri');
      return null;
    }
    switch (uri.pathSegments[1]) {
      case '/':
        return MaterialPageRoute<void>(
          builder: (context) => HomePage(),
          settings: settings,
        );
      default:
        return null;
    }
  }
}
