abstract class ApiResponse<T> {

  final T? data;
  final Exception? error;

  const ApiResponse({this.error, this.data});

}

class SuccessResponse<T> extends ApiResponse<T> {
  const SuccessResponse(T? data) : super(data: data);
}

class ErrorResponse<T> extends ApiResponse<T> {
  const ErrorResponse(Exception error) : super(error: error);
}