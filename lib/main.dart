import 'package:character_viewer/build_flavor.dart';
import 'package:character_viewer/programmatic_main.dart';

void main() async {
  programmaticMain(
    BuildFlavorConfiguration.configurationFor(
      BuildFlavor.debug,
    ),
  );
}
