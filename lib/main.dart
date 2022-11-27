import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:ferry/ferry.dart';
import 'package:weather/views/app.dart';
import 'package:weather/infrastructures/graphql_client.dart';

void main() async {
  final client = await initClient();
  GetIt.I.registerLazySingleton<Client>(() => client);

  runApp(const ProviderScope(child: App()));
}
