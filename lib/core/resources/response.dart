abstract class Response<T> {

  final T? data;
  final Exception? error;

  const Response({this.error, this.data});

}

class SuccessResponse<T> extends Response<T> {
  const SuccessResponse(T? data) : super(data: data);
}

class ErrorResponse<T> extends Response<T> {
  const ErrorResponse(Exception error) : super(error: error);
}