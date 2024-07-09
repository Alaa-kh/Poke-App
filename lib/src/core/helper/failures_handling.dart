import 'package:dio/dio.dart';

class Failures {
  final String errMessage;
  final dynamic data;
  Failures({
    required this.errMessage,
    this.data,
  });
}

class FailuresServer extends Failures {
  FailuresServer({
    required super.errMessage,
    super.data,
  });
  factory FailuresServer.fromDioException({
    required DioExceptionType exType,
  }) {
    switch (exType) {
      case DioExceptionType.connectionTimeout:
        return FailuresServer(errMessage: 'انتهت مهلة الاتصال');
      case DioExceptionType.sendTimeout:
        return FailuresServer(errMessage: 'انتهت مهلة الإرسال');
      case DioExceptionType.receiveTimeout:
        return FailuresServer(errMessage: 'انتهت مهلة الاستلام');
      case DioExceptionType.badCertificate:
        return FailuresServer(errMessage: 'شهادة سيئة');
      case DioExceptionType.badResponse:
        return FailuresServer(errMessage: 'غير موجود!');
      case DioExceptionType.cancel:
        return FailuresServer(errMessage: 'تم الإلغاء');
      case DioExceptionType.connectionError:
        return FailuresServer(errMessage: 'خطأ في الاتصال');
      case DioExceptionType.unknown:
        return FailuresServer(errMessage: 'غير معروف');
    }
  }
}
