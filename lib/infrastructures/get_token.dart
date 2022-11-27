import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../env.dart';

/// トークン取得
Future<String> getToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  // トークンが保存されていて期限内であればそれを返す
  final token = prefs.getString('tokenString');
  final expired = prefs.getInt('tokenExpired');
  if (token != null && expired != null && DateTime.now().millisecondsSinceEpoch < expired) {
    return token;
  }

  // トークン取得
  final String apiBaseUri = environment['apiTokenUri']!;
  final String apiUsername = environment['apiUsername']!;
  final String apiPassword = environment['apiPassword']!;
  final Uri url = Uri.parse(apiBaseUri);
  final Map<String, String> headers = { 'content-type': 'application/json' };
  final String body = json.encode({ 'username': apiUsername, 'password': apiPassword });

  final http.Response res = await http.post(url, headers: headers, body: body);
  if (res.statusCode != 201) {
    throw Exception('Failed to get token.');
  }

  final resBody = json.decode(res.body);

  // トークンと期限を保存しておく
  prefs.setString('tokenString', resBody['token']);
  prefs.setInt('tokenExpired', resBody['expiredAt']);

  return resBody['token'];
}
