import 'dart:collection';

import 'package:character_viewer/bloc/bloc_factory.dart';
import 'package:character_viewer/build_flavor.dart';
import 'package:character_viewer/common/repository/repository.dart';
import 'package:character_viewer/common/repository/repository_lifecycle_manager.dart';
import 'package:character_viewer/home/component/repository/search_results_repository.dart';
import 'package:character_viewer/inject/annotations.dart';
import 'package:character_viewer/lifecycle_managed_service.dart';
import 'package:character_viewer/logging/log_buffer.dart';
import 'package:character_viewer/provided_service.dart';
import 'package:http/http.dart' as http;
import 'package:inject_annotation/inject_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mobile_module.inject.dart' as generated;

/// Module to resolve inject.dart to resolve dependencies.
@module
class MobileModule {
  final BuildFlavorConfiguration _configuration;

  MobileModule({required BuildFlavorConfiguration configuration})
      : _configuration = configuration;

  @provides
  @singleton
  int appVariant() => _configuration.variant;

  @provides
  @flavorName
  String buildFlavorName() => _configuration.name;

  @provides
  @singleton
  http.Client client() => http.Client();

  @provides
  @singleton
  LogBuffer logBuffer() {
    return LogBuffer(loglimitBytes: 250000);
  }

  @provides
  @singleton
  @asynchronous
  Future<SharedPreferences> sharedPreferences() =>
      SharedPreferences.getInstance();

  @provides
  @singleton
  @providedServiceList
  UnmodifiableListView<ProvidedService> services(
    SearchResultsRepository loadRepository,
  ) =>
      UnmodifiableListView<ProvidedService>([
        loadRepository,
      ]);

  @provides
  @singleton
  @lifecycleServiceList
  UnmodifiableListView<LifecycleManagedService> lifecycleManagedServices(
    @providedServiceList UnmodifiableListView<ProvidedService> services,
  ) =>
      UnmodifiableListView<LifecycleManagedService>(
        List<LifecycleManagedService>.from(
          services.whereType<LifecycleManagedService>(),
        ),
      );

  @provides
  @singleton
  @repositoryList
  UnmodifiableListView<Repository> repositories(
    @providedServiceList UnmodifiableListView<ProvidedService> services,
  ) =>
      UnmodifiableListView<Repository>(
        List<Repository>.from(
          services.whereType<Repository>(),
        ),
      );
}

@Component([
  MobileModule,
])
abstract class AppInjector implements BlocFactory {
  static const create = generated.AppInjector$Component.create;

  @inject
  @providedServiceList
  UnmodifiableListView<ProvidedService> services();

  @inject
  @lifecycleServiceList
  UnmodifiableListView<LifecycleManagedService> lifecycleManagedServices();

  @inject
  RepositoryLifecycleManager createRepositoryManager();

  @inject
  LogBuffer provideLogBuffer();
}
