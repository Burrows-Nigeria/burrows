import 'package:Burrows/modules/services/platform/Platform.dart';
import 'package:Burrows/modules/services/platform/PlatformBase.dart';

class WP extends PlatformBase {
  WP() : super() {
    baseUrl = "https://wp.getgolo.com/workspace/wp-json/wp/v2/";
    type = PlatformType.wp;
  }
}
