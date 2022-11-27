import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather/infrastructures/get_token.dart';
import 'package:weather/infrastructures/http_auth_link.dart';
import '../env.dart';

Future<Client> initClient() async {
  final String apiBaseUri = environment['apiBaseUri']!;
  // await Hive.initFlutter();
  // final box = await Hive.openBox<Map<String, dynamic>>("graphql");
  // await box.clear();
  // final store = HiveStore(box);
  // final cache = Cache(store: store);

  final link = HttpAuthLink(getToken: getToken, graphQLEndpoint: apiBaseUri);

  final client = Client(
    link: link,
    // cache: cache,
  );

  return client;
}
