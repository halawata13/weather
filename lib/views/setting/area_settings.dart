import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/graphql/__generated__/fetch_region_list.data.gql.dart';
import 'package:weather/graphql/__generated__/fetch_region_list.req.gql.dart';
import 'package:weather/graphql/__generated__/fetch_region_list.var.gql.dart';
import 'package:weather/views/setting/region_list.dart';

/// エリア設定画面
class AreaSettings extends StatelessWidget {
  final client = GetIt.I<Client>();

  AreaSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Operation(
        client: client,
        operationRequest: GfetchRegionListReq((b) => b),
        builder: (
            BuildContext context,
            OperationResponse<GfetchRegionListData, GfetchRegionListVars>? response,
            Object? error,
        ) {
          if (response == null || response.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          final data = response.data;

          if (data == null) {
            return const Center(child: Text('Error'));
          }

          return Scaffold(
            body: RegionList(
              items: data.regionList.regionItems,
            ),
          );
        },
      ),
    );
  }
}
