import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:weather/graphql/__generated__/fetch_region_list.data.gql.dart';
import 'package:weather/views/setting/pref_list.dart';

/// 地域リスト
class RegionList extends StatelessWidget {
  final BuiltList<GfetchRegionListData_regionList_regionItems> items;

  const RegionList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                items[i].regionName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              onTap: () {
                // 都道府県リストへ遷移
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => PrefList(
                      title: items[i].regionName,
                      items: items[i].prefItems,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
