import 'package:character_viewer/lifecycle_managed_service.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:video_player/video_player.dart';

final _log = Logger('LifecycleListener');

class LifecycleListener extends StatefulWidget {
  final Widget child;
  final WidgetsBindingSupplier widgetsBindingSupplier;
  final Iterable<LifecycleManagedService> services;

  LifecycleListener(
      {required Iterable<LifecycleManagedService> services,
      required Widget child})
      : this._(child, () => WidgetsBinding.instance, services);

  @visibleForTesting
  LifecycleListener.forTest(
      {required WidgetsBindingSupplier widgetsBindingSupplier,
      required Iterable<LifecycleManagedService> services})
      : this._(Container(), widgetsBindingSupplier, services);

  LifecycleListener._(this.child, this.widgetsBindingSupplier, this.services);

  @override
  _LifecycleListenerState createState() => _LifecycleListenerState(
      child: child,
      widgetsBindingSupplier: widgetsBindingSupplier,
      services: services);
}

class _LifecycleListenerState extends State<LifecycleListener>
    with WidgetsBindingObserver {
  final Widget child;
  final WidgetsBindingSupplier widgetsBindingSupplier;
  final Iterable<LifecycleManagedService> services;
  AppLifecycleState _state = AppLifecycleState.resumed;
  late VideoPlayerController _controller;

  _LifecycleListenerState(
      {required this.child,
      required this.widgetsBindingSupplier,
      required this.services});

  @override
  void initState() {
    super.initState();
    const variant = String.fromEnvironment('APP_CONFIG_VARIANT');

    _controller = VideoPlayerController.asset(int.parse(variant) == 1
        ? 'assets/audio/the_simpsons_theme.m4a'
        : 'assets/audio/the_wire_theme.m4a')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
    widgetsBindingSupplier().addObserver(this);
  }

  @override
  void dispose() {
    widgetsBindingSupplier().removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _state = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    services.forEach(_notifyLifecycleState);
    return child;
  }

  void _notifyLifecycleState(LifecycleManagedService service) {
    switch (_state) {
      case AppLifecycleState.resumed:
        service.onResume();
        break;
      case AppLifecycleState.inactive:
        service.onInactive();
        break;
      case AppLifecycleState.paused:
      case AppLifecycleState.inactive:
        service.onPause();
        break;
      default:
        _log.shout('Unknown app lifecycle state: $_state');
        break;
    }
  }
}

@visibleForTesting
typedef WidgetsBinding WidgetsBindingSupplier();
