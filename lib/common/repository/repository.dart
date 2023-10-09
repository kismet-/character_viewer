import 'package:character_viewer/provided_service.dart';

import '../../logging/logging.dart';

/// Common interface for repositories that store user data.
abstract class Repository extends ProvidedService {
  void start();

  void stop();

  void clear();

  static String buildLogName(String name) {
    return "${repositoryLogPrefix}.${name}";
  }
}
