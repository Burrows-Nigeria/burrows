import 'package:Burrows/modules/services/platform/Platform.dart';
import 'package:Burrows/modules/services/platform/PlatformBase.dart';

class Lara extends PlatformBase {
  static const String baseUrlImage = "https://lara-business.getgolo.com/uploads/";

  Lara(): super(){
    baseUrl = "https://lara-business.getgolo.com/api/app";
    type =PlatformType.lara;
  }
}