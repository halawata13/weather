import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:weather/graphql/__generated__/fetch_region_list.data.gql.dart';
import 'package:weather/repositories/setting_repository.dart';

/// エリアリスト
class AreaList extends StatelessWidget {
  final String title;
  final BuiltList<GfetchRegionListData_regionList_regionItems_prefItems_areaItems> items;

  const AreaList({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int i) {
            return Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
              ),
              child: ListTile(
                title: Text(
                  items[i].areaName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                onTap: () {
                  // エリア設定オブジェクトに変換
                  final areaSetting = convertToAreaSetting(items[i]);

                  // エリア設定を保存
                  insertAreaSettings(areaSetting)
                    .whenComplete(() {
                      // 天気予報画面に戻る
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    });
                }, // タップ
              ),
            );
          },
        ),
      ),
    );
  }
}
