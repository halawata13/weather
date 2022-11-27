import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/graphql/__generated__/fetch_region_list.data.gql.dart';

/// エリア設定
class AreaSetting {
  final String areaCode;
  final String labelName;

  AreaSetting({required this.areaCode, required this.labelName});
}

/// エリア設定をSharedPreferencesに追加する
Future insertAreaSettings(AreaSetting setting) async {
  final prefs = await SharedPreferences.getInstance();
  final areaCodes = prefs.getStringList('areaCodes') ?? [];
  final labelNames = prefs.getStringList('labelNames') ?? [];

  areaCodes.add(setting.areaCode);
  labelNames.add(setting.labelName);

  return Future.wait([
    prefs.setStringList('areaCodes', areaCodes),
    prefs.setStringList('labelNames', labelNames),
  ]);
}

/// SharedPreferencesのエリア設定を更新する
Future updateAreaSettings(List<AreaSetting> areaSettings) async {
  final prefs = await SharedPreferences.getInstance();
  final List<String> areaCodes = [];
  final List<String> labelNames = [];

  for (var setting in areaSettings) {
    areaCodes.add(setting.areaCode);
    labelNames.add(setting.labelName);
  }

  return Future.wait([
    prefs.setStringList('areaCodes', areaCodes),
    prefs.setStringList('labelNames', labelNames),
  ]);
}

/// エリア設定リストを取得する
Future<List<AreaSetting>> getAreaSettings() async {
  final prefs = await SharedPreferences.getInstance();
  final areaCodes = prefs.getStringList('areaCodes') ?? [];
  final labelNames = prefs.getStringList('labelNames') ?? [];

  return List.of(areaCodes.asMap().entries.map((item) => AreaSetting(areaCode: item.value, labelName: labelNames[item.key])));
}

/// エリア設定を表示用に変換する
AreaSetting convertToAreaSetting(GfetchRegionListData_regionList_regionItems_prefItems_areaItems items) {
  if (items.regionName == '北海道地方') {
    return AreaSetting(areaCode: items.areaCode, labelName: '北海道${items.areaName}');
  }

  return AreaSetting(areaCode: items.areaCode, labelName: items.prefName + items.areaName);
}
