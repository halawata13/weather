import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/constants/color.dart';
import 'package:weather/providers/selected_tab_bar_provider.dart';
import 'package:weather/repositories/setting_repository.dart';
import 'package:weather/views/forecast/forecast.dart';

/// 天気予報画面
class ForecastScreen extends ConsumerWidget {
  final List<AreaSetting> areaSettings;

  const ForecastScreen({Key? key, required this.areaSettings}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // タブ内の天気予報
    final List<Widget> controllers = List.generate(areaSettings.length, (i) => Forecast(
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
            indicatorColor: weatherColors.shade50,
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
  }
}
