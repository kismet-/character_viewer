import 'dart:collection';

import 'package:character_viewer/common/repository/repository.dart';
import 'package:character_viewer/inject/annotations.dart';
import 'package:inject_annotation/inject_annotation.dart';
import 'package:logging/logging.dart';

/// Responsible for triggering mandatory actions on all repositories.
class RepositoryLifecycleManager {
  static final _log = Logger('RepositoryLifecycleManager');

  final UnmodifiableListView<Repository> _repositories;

  bool _isStopped = true;

  @provides
  @inject
  @singleton
  RepositoryLifecycleManager(
    // this._signInBloc,
    @repositoryList this._repositories,
  ) {
    _handleProfileValidityUpdate(true);
  }

  void _handleProfileValidityUpdate(bool profileIsValid) {
    if (profileIsValid) {
      _startRepos();
    } else {
      _stopRepos();
      _clearData();
    }
  }

  void _startRepos() {
    if (!_isStopped) return;
    _isStopped = false;
    _log.info('Starting all repositories');
    for (var repo in _repositories) {
      repo.start();
    }
  }

  void _stopRepos() {
    if (_isStopped) return;
    _isStopped = true;
    _log.info('Stopping all repositories');
    for (var repo in _repositories) {
      repo.stop();
    }
  }

  void _clearData() {
    _log.info('Clearing repository and user data');
    for (var repo in _repositories) {
      repo.clear();
    }
  }
}
