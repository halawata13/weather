import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:weather/graphql/__generated__/fetch_region_list.data.gql.dart';
import 'package:weather/views/setting/area_list.dart';

/// 都道府県リスト
class PrefList extends StatelessWidget {
  final String title;
  final BuiltList<GfetchRegionListData_regionList_regionItems_prefItems> items;

  const PrefList({super.key, required this.title, required this.items});

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
                  items[i].prefName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                onTap: () {
                  // エリアリストに遷移
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => AreaList(
                        title: items[i].prefName,
                        items: items[i].areaItems,
                      ),
                    ),
                  );
                }, // タップ
              ),
            );
          },
        ),
      ),
    );
  }
}
