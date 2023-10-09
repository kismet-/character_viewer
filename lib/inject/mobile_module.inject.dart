// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'mobile_module.dart' as _i1;
import '../home/component/search_results_list/search_results_list_bloc.dart'
    as _i2;
import '../home/component/search_bar/search_bar_bloc.dart' as _i3;
import 'dart:collection' as _i4;
import '../provided_service.dart' as _i5;
import '../lifecycle_managed_service.dart' as _i6;
import '../common/repository/repository_lifecycle_manager.dart' as _i7;
import '../logging/log_buffer.dart' as _i8;
import 'package:inject_annotation/inject_annotation.dart' as _i9;
import 'package:http/src/client.dart' as _i10;
import '../home/component/repository/search_results_repository.dart' as _i11;
import '../common/repository/repository.dart' as _i12;
import 'dart:async' as _i13;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

class AppInjector$Component implements _i1.AppInjector {
  factory AppInjector$Component.create(
          {required _i1.MobileModule mobileModule}) =>
      AppInjector$Component._(mobileModule);

  AppInjector$Component._(this._mobileModule) {
    _initialize();
  }

  final _i1.MobileModule _mobileModule;

  late final _Client$Provider _client$Provider;

  late final _Int$Provider _int$Provider;

  late final _SearchResultsRepository$Provider
      _searchResultsRepository$Provider;

  late final _SearchResultsListBloc$Provider _searchResultsListBloc$Provider;

  late final _SearchBarBloc$Provider _searchBarBloc$Provider;

  late final _UnmodifiableListViewProvidedServiceListProvidedService$Provider
      _unmodifiableListViewProvidedServiceListProvidedService$Provider;

  late final _UnmodifiableListViewRepositoryListRepository$Provider
      _unmodifiableListViewRepositoryListRepository$Provider;

  late final _RepositoryLifecycleManager$Provider
      _repositoryLifecycleManager$Provider;

  late final _StringFlavorName$Provider _stringFlavorName$Provider;

  late final _LogBuffer$Provider _logBuffer$Provider;

  late final _SharedPreferences$Provider _sharedPreferences$Provider;

  late final _UnmodifiableListViewLifecycleServiceListLifecycleManagedService$Provider
      _unmodifiableListViewLifecycleServiceListLifecycleManagedService$Provider;

  void _initialize() {
    _client$Provider = _Client$Provider(_mobileModule);
    _int$Provider = _Int$Provider(_mobileModule);
    _searchResultsRepository$Provider = _SearchResultsRepository$Provider(
      _client$Provider,
      _int$Provider,
    );
    _searchResultsListBloc$Provider =
        _SearchResultsListBloc$Provider(_searchResultsRepository$Provider);
    _searchBarBloc$Provider =
        _SearchBarBloc$Provider(_searchResultsRepository$Provider);
    _unmodifiableListViewProvidedServiceListProvidedService$Provider =
        _UnmodifiableListViewProvidedServiceListProvidedService$Provider(
      _searchResultsRepository$Provider,
      _mobileModule,
    );
    _unmodifiableListViewRepositoryListRepository$Provider =
        _UnmodifiableListViewRepositoryListRepository$Provider(
      _unmodifiableListViewProvidedServiceListProvidedService$Provider,
      _mobileModule,
    );
    _repositoryLifecycleManager$Provider = _RepositoryLifecycleManager$Provider(
        _unmodifiableListViewRepositoryListRepository$Provider);
    _stringFlavorName$Provider = _StringFlavorName$Provider(_mobileModule);
    _logBuffer$Provider = _LogBuffer$Provider(_mobileModule);
    _sharedPreferences$Provider = _SharedPreferences$Provider(_mobileModule);
    _unmodifiableListViewLifecycleServiceListLifecycleManagedService$Provider =
        _UnmodifiableListViewLifecycleServiceListLifecycleManagedService$Provider(
      _unmodifiableListViewProvidedServiceListProvidedService$Provider,
      _mobileModule,
    );
  }

  @override
  _i2.SearchResultsListBloc createSearchResultsListBloc() =>
      _searchResultsListBloc$Provider.get();

  @override
  _i3.SearchBarBloc createSearchBarBloc() => _searchBarBloc$Provider.get();

  @override
  _i4.UnmodifiableListView<_i5.ProvidedService> services() =>
      _unmodifiableListViewProvidedServiceListProvidedService$Provider.get();

  @override
  _i4.UnmodifiableListView<_i6.LifecycleManagedService>
      lifecycleManagedServices() =>
          _unmodifiableListViewLifecycleServiceListLifecycleManagedService$Provider
              .get();

  @override
  _i7.RepositoryLifecycleManager createRepositoryManager() =>
      _repositoryLifecycleManager$Provider.get();

  @override
  _i8.LogBuffer provideLogBuffer() => _logBuffer$Provider.get();
}

class _Client$Provider implements _i9.Provider<_i10.Client> {
  _Client$Provider(this._module);

  final _i1.MobileModule _module;

  _i10.Client? _singleton;

  @override
  _i10.Client get() => _singleton ??= _module.client();
}

class _Int$Provider implements _i9.Provider<int> {
  _Int$Provider(this._module);

  final _i1.MobileModule _module;

  int? _singleton;

  @override
  int get() => _singleton ??= _module.appVariant();
}

class _SearchResultsRepository$Provider
    implements _i9.Provider<_i11.SearchResultsRepository> {
  _SearchResultsRepository$Provider(
    this._client$Provider,
    this._int$Provider,
  );

  final _Client$Provider _client$Provider;

  final _Int$Provider _int$Provider;

  _i11.SearchResultsRepository? _singleton;

  @override
  _i11.SearchResultsRepository get() =>
      _singleton ??= _i11.SearchResultsRepository(
        _client$Provider.get(),
        _int$Provider.get(),
      );
}

class _SearchResultsListBloc$Provider
    implements _i9.Provider<_i2.SearchResultsListBloc> {
  const _SearchResultsListBloc$Provider(this._searchResultsRepository$Provider);

  final _SearchResultsRepository$Provider _searchResultsRepository$Provider;

  @override
  _i2.SearchResultsListBloc get() =>
      _i2.SearchResultsListBloc(_searchResultsRepository$Provider.get());
}

class _SearchBarBloc$Provider implements _i9.Provider<_i3.SearchBarBloc> {
  const _SearchBarBloc$Provider(this._searchResultsRepository$Provider);

  final _SearchResultsRepository$Provider _searchResultsRepository$Provider;

  @override
  _i3.SearchBarBloc get() =>
      _i3.SearchBarBloc(_searchResultsRepository$Provider.get());
}

class _UnmodifiableListViewProvidedServiceListProvidedService$Provider
    implements _i9.Provider<_i4.UnmodifiableListView<_i5.ProvidedService>> {
  _UnmodifiableListViewProvidedServiceListProvidedService$Provider(
    this._searchResultsRepository$Provider,
    this._module,
  );

  final _SearchResultsRepository$Provider _searchResultsRepository$Provider;

  final _i1.MobileModule _module;

  _i4.UnmodifiableListView<_i5.ProvidedService>? _singleton;

  @override
  _i4.UnmodifiableListView<_i5.ProvidedService> get() =>
      _singleton ??= _module.services(_searchResultsRepository$Provider.get());
}

class _UnmodifiableListViewRepositoryListRepository$Provider
    implements _i9.Provider<_i4.UnmodifiableListView<_i12.Repository>> {
  _UnmodifiableListViewRepositoryListRepository$Provider(
    this._unmodifiableListViewProvidedServiceListProvidedService$Provider,
    this._module,
  );

  final _UnmodifiableListViewProvidedServiceListProvidedService$Provider
      _unmodifiableListViewProvidedServiceListProvidedService$Provider;

  final _i1.MobileModule _module;

  _i4.UnmodifiableListView<_i12.Repository>? _singleton;

  @override
  _i4.UnmodifiableListView<_i12.Repository> get() =>
      _singleton ??= _module.repositories(
          _unmodifiableListViewProvidedServiceListProvidedService$Provider
              .get());
}

class _RepositoryLifecycleManager$Provider
    implements _i9.Provider<_i7.RepositoryLifecycleManager> {
  _RepositoryLifecycleManager$Provider(
      this._unmodifiableListViewRepositoryListRepository$Provider);

  final _UnmodifiableListViewRepositoryListRepository$Provider
      _unmodifiableListViewRepositoryListRepository$Provider;

  _i7.RepositoryLifecycleManager? _singleton;

  @override
  _i7.RepositoryLifecycleManager get() =>
      _singleton ??= _i7.RepositoryLifecycleManager(
          _unmodifiableListViewRepositoryListRepository$Provider.get());
}

class _StringFlavorName$Provider implements _i9.Provider<String> {
  const _StringFlavorName$Provider(this._module);

  final _i1.MobileModule _module;

  @override
  String get() => _module.buildFlavorName();
}

class _LogBuffer$Provider implements _i9.Provider<_i8.LogBuffer> {
  _LogBuffer$Provider(this._module);

  final _i1.MobileModule _module;

  _i8.LogBuffer? _singleton;

  @override
  _i8.LogBuffer get() => _singleton ??= _module.logBuffer();
}

class _SharedPreferences$Provider
    implements _i9.Provider<_i13.Future<_i14.SharedPreferences>> {
  _SharedPreferences$Provider(this._module);

  final _i1.MobileModule _module;

  _i14.SharedPreferences? _singleton;

  @override
  _i13.Future<_i14.SharedPreferences> get() async =>
      _singleton ??= await _module.sharedPreferences();
}

class _UnmodifiableListViewLifecycleServiceListLifecycleManagedService$Provider
    implements
        _i9.Provider<_i4.UnmodifiableListView<_i6.LifecycleManagedService>> {
  _UnmodifiableListViewLifecycleServiceListLifecycleManagedService$Provider(
    this._unmodifiableListViewProvidedServiceListProvidedService$Provider,
    this._module,
  );

  final _UnmodifiableListViewProvidedServiceListProvidedService$Provider
      _unmodifiableListViewProvidedServiceListProvidedService$Provider;

  final _i1.MobileModule _module;

  _i4.UnmodifiableListView<_i6.LifecycleManagedService>? _singleton;

  @override
  _i4.UnmodifiableListView<_i6.LifecycleManagedService> get() =>
      _singleton ??= _module.lifecycleManagedServices(
          _unmodifiableListViewProvidedServiceListProvidedService$Provider
              .get());
}
