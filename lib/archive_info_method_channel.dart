import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'archive_info_platform_interface.dart';

/// An implementation of [ArchiveInfoPlatform] that uses method channels.
class MethodChannelArchiveInfo extends ArchiveInfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('archive_info');

  @override
  Future<String?> getPackageName(String path) async {
    final package = await methodChannel
        .invokeMethod<String>('getPackageInfo', {'file': path});
    return package;
  }
}
