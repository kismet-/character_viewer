import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'build_flavor.g.dart';

class BuildFlavor extends EnumClass {
  static const BuildFlavor debug = _$debug;
  static const BuildFlavor production = _$production;

  const BuildFlavor._(String name) : super(name);

  static BuiltSet<BuildFlavor> get values => _$values;

  static BuildFlavor valueOf(String name) => _$valueOf(name);
}

/// Defines the constants that are determined by build flavor.
class BuildFlavorConfiguration {
  /// The build flavor associated with this configuration.
  final BuildFlavor buildFlavor;

  /// Human-readable description of the flavor.
  final String name;

  /// Whether to show the debug banner, and to enable debug diagnostics.
  final bool useDebugMode;

  final int variant;

  BuildFlavorConfiguration({
    required this.buildFlavor,
    required this.name,
    required this.useDebugMode,
    required this.variant,
  });

  static final _debugConfiguration = BuildFlavorConfiguration(
      buildFlavor: BuildFlavor.debug,
      name: 'Debug',
      useDebugMode: true,
      variant: int.parse(const String.fromEnvironment('APP_CONFIG_VARIANT')));

  static final _productionConfiguration = BuildFlavorConfiguration(
      buildFlavor: BuildFlavor.production,
      name: 'Production',
      useDebugMode: false,
      variant: int.parse(const String.fromEnvironment('APP_CONFIG_VARIANT')));

  factory BuildFlavorConfiguration.configurationFor(BuildFlavor flavor) {
    switch (flavor) {
      case BuildFlavor.debug:
        return _debugConfiguration;
      case BuildFlavor.production:
        return _productionConfiguration;
    }
    return _debugConfiguration;
  }
}
