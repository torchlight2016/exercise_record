sealed class ResultError {}

final class NetworkError extends ResultError {
  final String message;

  NetworkError(this.message);
}

final class ServerError extends ResultError {
  final String message;

  ServerError(this.message);
}

final class UnknownError extends ResultError {
  final String message;

  UnknownError(this.message);
}
