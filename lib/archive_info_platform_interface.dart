import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'archive_info_method_channel.dart';

abstract class ArchiveInfoPlatform extends PlatformInterface {
  /// Constructs a ArchiveInfoPlatform.
  ArchiveInfoPlatform() : super(token: _token);

  static final Object _token = Object();

  static ArchiveInfoPlatform _instance = MethodChannelArchiveInfo();

  /// The default instance of [ArchiveInfoPlatform] to use.
  ///
  /// Defaults to [MethodChannelArchiveInfo].
  static ArchiveInfoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ArchiveInfoPlatform] when
  /// they register themselves.
  static set instance(ArchiveInfoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPackageName(String path);
}
