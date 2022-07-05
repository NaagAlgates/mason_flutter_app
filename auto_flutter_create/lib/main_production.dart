import 'package:test_app/app/app.dart';
import 'package:test_app/bootstrap.dart';
import 'package:test_app/core/enum/app_flavours.dart';
import 'package:test_app/helper/build_constants.dart';
import 'package:flutter/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BuildConstants.updateEnvironment(currentEnvironment: Appflavours.production);
  bootstrap(
    () => FlavoursConfiguration(
      appflavour: BuildConstants.getCurrentEnvironment,
      child: const App(),
    ),
  );
}
