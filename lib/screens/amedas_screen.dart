import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/providers/area_settings_provider.dart';
import 'package:weather/providers/selected_tab_bar_provider.dart';
import 'package:weather/repositories/setting_repository.dart';
import 'package:weather/views/amedas/amedas.dart';

/// アメダス画面
class AmedasScreen extends ConsumerWidget {
  final List<AreaSetting> areaSettings;

  const AmedasScreen({Key? key, required this.areaSettings}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // エリア設定
    final asyncAreaSettings = ref.watch(areaSettingsProvider);

    return asyncAreaSettings.when(
      data: (areaSettings) {
        // タブ内の天気予報
        final List<Widget> controllers = List.generate(areaSettings.length, (i) => Amedas(
          areaCode: areaSettings[i].areaCode,
        ));

        // タブ
        final tabs = List.generate(areaSettings.length, (i) => Tab(text: areaSettings[i].labelName));

        // 選択している上部タブバー
        final selectedTabBar = ref.watch(selectedTabBarProvider);

        return DefaultTabController(
          initialIndex: selectedTabBar,
          length: controllers.length,
          child: Scaffold(
            appBar: AppBar(
              elevation: 1,
              title: TabBar(
                isScrollable: true,
                tabs: tabs,
                onTap: (int index) {
                  ref.read(selectedTabBarProvider.notifier).state = index;
                },
              ),
            ),
            body: TabBarView(children: controllers),
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
