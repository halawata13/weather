import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/repositories/setting_repository.dart';

final areaSettingsProvider = FutureProvider<List<AreaSetting>>((_) async {
  return await getAreaSettings();
});
