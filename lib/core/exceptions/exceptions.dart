abstract class BaseException implements Exception {
  final String message;
  const BaseException(this.message);
}

class UnknownErrorException extends BaseException {
  const UnknownErrorException() : super("Une erreur est survenue !");
}