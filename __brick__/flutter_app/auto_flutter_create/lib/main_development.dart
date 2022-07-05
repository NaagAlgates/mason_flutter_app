import 'package:{{app_name}}/app/app.dart';
import 'package:{{app_name}}/bootstrap.dart';
import 'package:{{app_name}}/core/enum/app_flavours.dart';
import 'package:{{app_name}}/helper/build_constants.dart';
import 'package:flutter/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BuildConstants.updateEnvironment(currentEnvironment: Appflavours.development);
  bootstrap(
    () => FlavoursConfiguration(
      appflavour: BuildConstants.getCurrentEnvironment,
      child: const App(),
    ),
  );
}
