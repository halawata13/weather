import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/constants/color.dart';
import 'package:weather/providers/area_settings_provider.dart';
import 'package:weather/repositories/setting_repository.dart';
import 'package:weather/screens/amedas_screen.dart';
import 'package:weather/screens/forecast_screen.dart';
import 'package:weather/screens/setting_screen.dart';

// 画面下部のナビゲーションバーの選択状態
final _selectedScreenIndexProvider = StateProvider((ref) => 0);

/// 画面下部のナビゲーションバー
class NavigationBarScreen extends ConsumerWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  Widget getScreenWidgets(List<AreaSetting> areaSettings, int selectedScreenIndex, WidgetRef ref) {
    switch (selectedScreenIndex) {
      case 0:
        return ForecastScreen(areaSettings: areaSettings);
      case 1:
        return AmedasScreen(areaSettings: areaSettings);
      case 2:
        return SettingScreen(areaSettings: areaSettings, onAreaChanged: () {
          // エリアが追加されたら状態も更新
          ref.refresh(areaSettingsProvider);
        });
      default:
        throw ArgumentError('Unexpected bottom bar index');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // エリア設定
    final asyncAreaSettings = ref.watch(areaSettingsProvider);
    // 画面下部のナビゲーションバーの選択状態
    final selectedScreenIndex = ref.watch(_selectedScreenIndexProvider);

    return asyncAreaSettings.when(
      data: (areaSettings) {
        return Scaffold(
          body: getScreenWidgets(areaSettings, selectedScreenIndex, ref),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.sunny), label: '天気予報'),
              BottomNavigationBarItem(icon: Icon(Icons.thermostat), label: '実況天気'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'エリア設定'),
            ],
            currentIndex: selectedScreenIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            onTap: (int index) {
              ref.read(_selectedScreenIndexProvider.notifier).state = index;
            },
          ),
        );
      },
      error: (error, trace) => Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: null,
        ),
        body: Center(
          child: Text(
            error.toString(),
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      loading: () => Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: null,
        ),
        body: const CircularProgressIndicator(),
      ),
    );
  }
}
