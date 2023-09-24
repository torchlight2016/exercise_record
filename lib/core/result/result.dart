import 'package:dio/dio.dart';
import 'package:exercise_record/core/result/result_error.dart';

sealed class Result<E> {
  static Future<Result<S>> wrap<S>(Future<S> Function() future) async {
    try {
      return Success(await future().catchError(_handleApiResponse));
    } on ResultError catch (e, st) {
      return Failure(e, st);
    }
  }
}

final class Success<E> extends Result<E> {
  final E value;
  Success(this.value);
}

final class Failure<E> extends Result<E> {
  final ResultError error;
  StackTrace? stackTrace;

  Failure(this.error, [this.stackTrace]);
}

_handleApiResponse(Object obj) {
  switch (obj.runtimeType) {
    case DioException:
      final dioException = obj as DioException;
      final message = dioException.message ?? '';
      final exceptionType = dioException.type;

      throw switch (exceptionType) {
        DioExceptionType.connectionTimeout => NetworkError(message),
        (_)=> ServerError(message)
      };
    default:
      throw UnknownError(obj.toString());
  }
}