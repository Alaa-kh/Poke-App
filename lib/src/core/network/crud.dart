import 'package:dartz/dartz.dart';
import 'package:poke/src/core/constants/packages.dart';

class Crud {
  final Dio _dio = Dio();
  Future<Either<Failures, Map<String, dynamic>>> get({
    required final String url,
    CancelToken? cancelToken,
  }) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';

      _dio.options.connectTimeout = const Duration(seconds: 3);
      _dio.options.receiveTimeout = const Duration(seconds: 3);

      _dio.options.responseType = ResponseType.json;

      Response response = await _dio.get(url, cancelToken: cancelToken);

      dynamic jsonResponse = response.data;

      if (jsonResponse is List) {
        return right({"data": jsonResponse});
      }
      return right(jsonResponse);
    } catch (e) {
      if (e is DioException) {
        if (e.response?.statusCode == 401) {
          return left(Failures(errMessage: e.response.toString()));
        } else if (e.response?.statusCode == 422) {
          Map response = jsonDecode(e.response.toString());
          return left(Failures(errMessage: response['message']));
        }
        return left(FailuresServer.fromDioException(exType: e.type));
      }

      return left(Failures(errMessage: 'حدث خطأ ما اعد المحاولة مجددا'));
    }
  }

  Future<Either<Failures, Map<String, dynamic>>> post({
    required final String url,
    required final Map<String, dynamic> body,
    final bool isFormData = false,
    final String? photo,
  }) async {
    try {
      _dio.options.headers['Content-Type'] = 'application/json';
      _dio.options.headers['Accept'] = 'application/json';
      _dio.options.headers['Transfer-Encoding'] = 'chunked';

      _dio.options.connectTimeout = const Duration(seconds: 15);
      _dio.options.receiveTimeout = const Duration(seconds: 15);
      _dio.options.responseType = ResponseType.json;

      _dio.interceptors.addAll([
        LogInterceptor(
          request: true,
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
        )
      ]);

      final Response response;

      if (isFormData) {
        FormData data = FormData.fromMap({
          if (photo != null) "photo": await MultipartFile.fromFile(photo),
          ...body,
        });
        response = await _dio.post(url, data: data);
      } else {
        response = await _dio.post(url, data: body);
      }

      final Map<String, dynamic> responseData =
          response.data as Map<String, dynamic>;
      debugPrint('response: $response');

      return right(responseData);
    } catch (e) {
      if (e is DioException) {
        if (e.response?.statusCode == 401) {
          return left(Failures(errMessage: e.response.toString()));
        } else if ([422, 404, 403].contains(e.response?.statusCode)) {
          final Map<String, dynamic> response =
              e.response!.data as Map<String, dynamic>;
          return left(
            Failures(
              errMessage: response['message'] as String,
              data: response['data'],
            ),
          );
        }
        return left(FailuresServer.fromDioException(exType: e.type));
      }
      return left(Failures(errMessage: 'حدث خطأ ما، يرجى المحاولة مرة أخرى'));
    }
  }

  Future<Either<Failures, Map<String, dynamic>>> put({
    required final String url,
    required final Map<String, dynamic> body,
  }) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';

      final response = await _dio.put(url, data: body);

      final Map<String, dynamic> responseData = jsonDecode(response.toString());

      return right(responseData);
    } catch (e) {
      if (e is DioException) {
        if (e.response?.statusCode == 400) {
          Map response = jsonDecode(e.response.toString());
          return left(Failures(errMessage: response['message']));
        }
        return left(FailuresServer.fromDioException(exType: e.type));
      }
      return left(Failures(errMessage: 'A sudden error occurred, try again'));
    }
  }

  Future<Either<Failures, Map<String, dynamic>>> delete({
    required final String url,
  }) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      final Response response = await _dio.delete(url);
      final Map<String, dynamic> responseData = jsonDecode(
        response.toString(),
      );

      return right(responseData);
    } catch (e) {
      if (e is DioException) {
        if (e.response?.statusCode == 400) {
          Map response = jsonDecode(e.response.toString());
          return left(Failures(errMessage: response['message']));
        }
        return left(FailuresServer.fromDioException(exType: e.type));
      }
      return left(Failures(errMessage: 'A sudden error occurred, try again'));
    }
  }
}
