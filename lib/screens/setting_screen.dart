import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/constants/color.dart';
import 'package:weather/repositories/setting_repository.dart';
import 'package:weather/screens/area_setting_screen.dart';

final _selectedItemIndexProvider = StateProvider<Set<int>>((ref) => {});

/// 設定画面
class SettingScreen extends ConsumerWidget {
  final List<AreaSetting> areaSettings;
  final void Function() onAreaChanged;

  const SettingScreen({Key? key, required this.onAreaChanged, required this.areaSettings}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 選択したエリアの状態
    final selectedItemIndex = ref.watch(_selectedItemIndexProvider);
    // 追加ボタン
    final areaAdditionButton = ElevatedButton(
      onPressed: () async {
        await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AreaSettingScreen())
        );

        // 呼び出し元にエリア変更を通知
        onAreaChanged();
      },
      child: const Text('エリアを追加する'),
    );

    // 登録したエリアがなければ追加ボタンだけ
    if (areaSettings.isEmpty) {
      return Center(child: areaAdditionButton);
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('エリア設定'),
      ),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // 削除ボタン
              ElevatedButton(
                onPressed: selectedItemIndex.isEmpty ? null : () async {
                  // 選択されていない項目を抽出する
                  final List<AreaSetting> unselectedAreaSettings = [];
                  areaSettings.asMap().forEach((i, setting) {
                    if (!selectedItemIndex.contains(i)) {
                      unselectedAreaSettings.add(setting);
                    }
                  });
                  // 選択されていない項目で更新をかける
                  updateAreaSettings(unselectedAreaSettings);
                  // 状態を更新する
                  ref.read(_selectedItemIndexProvider.notifier).state = {};
                  // 呼び出し元にエリア変更を通知
                  onAreaChanged();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: const Text('選択したエリアを削除する'),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: areaSettings.length,
            itemBuilder: (BuildContext context, int i) {
              return Container(
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: i == 0 ? 1.0 : 0, color: colorBorder),
                      bottom: const BorderSide(width: 1.0, color: colorBorder),
                    )
                ),
                child: ListTile(
                  leading: selectedItemIndex.contains(i) ? const Icon(Icons.check_box_sharp) : const Icon(Icons.check_box_outline_blank),
                  title: Text(areaSettings[i].labelName),
                  onTap: () {
                    // 項目の選択と解除
                    if (selectedItemIndex.contains(i)) {
                      selectedItemIndex.remove(i);
                    } else {
                      selectedItemIndex.add(i);
                    }

                    // 状態の更新
                    ref.read(_selectedItemIndexProvider.notifier).state = {...selectedItemIndex};
                  },
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 16),

        // 追加ボタン
        areaAdditionButton,
      ]),
    );
  }
}
