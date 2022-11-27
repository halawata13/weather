import 'dart:async';
import 'package:ferry/ferry.dart';
import 'package:gql_error_link/gql_error_link.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:gql_transform_link/gql_transform_link.dart';

class HttpAuthLink extends Link {
  HttpAuthLink({required this.getToken, required this.graphQLEndpoint}) {
    _link = Link.from([
      TransformLink(requestTransformer: transformRequest),
      ErrorLink(onException: handleException),
    ]);
  }

  final String graphQLEndpoint;
  final Future<String> Function() getToken;
  late Link _link;
  late String _token;

  Future<void> updateToken() async => _token = await getToken();

  Stream<Response> handleException(
      Request request,
      NextLink forward,
      LinkException exception,
      ) async* {
    if (exception is HttpLinkServerException && exception.response.statusCode == 401) {
      await updateToken();
      yield* forward(request);
      return;
    }

    Zone.current.handleUncaughtError(exception, StackTrace.fromString(''));

    throw exception;
  }

  Request transformRequest(Request request) {
    return request.updateContextEntry<HttpLinkHeaders>(
          (headers) => HttpLinkHeaders(
        headers: <String, String>{
          ...headers?.headers ?? <String, String>{},
          'Authorization': 'Bearer $_token',
        },
      ),
    );
  }

  @override
  Stream<Response> request(
      Request request, [
        Stream<Response> Function(Request)? forward,
      ]
      ) async* {
    await updateToken();
    yield* _link.concat(HttpLink(graphQLEndpoint)).request(request, forward);
  }
}
