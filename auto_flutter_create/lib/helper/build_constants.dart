import 'package:test_app/core/enum/app_flavours.dart';

class BuildConstants {
  static Appflavours _environment = Appflavours.development;
  // ignore: use_setters_to_change_properties
  static void updateEnvironment({required Appflavours currentEnvironment}) =>
      _environment = currentEnvironment;
  static Appflavours get getCurrentEnvironment => _environment;
  static String get getCurrentEnvironmentString =>
      _environment.toString().split('.').last;
}
