
import 'archive_info_platform_interface.dart';

class ArchiveInfo {
  Future<String?> getPackageName(String path) {
    return ArchiveInfoPlatform.instance.getPackageName(path);
  }

}
