sealed class Result<T> {
  const Result();

  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is Failure<T>;

  T? get successValue => (this is Success<T>) ? (this as Success<T>).data : null;
  Exception? get failureValue => (this is Failure<T>) ? (this as Failure<T>).exception : null;

  void onSuccess(void Function(T data) action) {
    if (this is Success<T>) {
      action((this as Success<T>).data);
    }
  }

  void onFailure(void Function(Exception error) action) {
    if (this is Failure<T>) {
      action((this as Failure<T>).exception);
    }
  }

  static Result<T> fromSuccess<T>(T data) => Success(data);
  static Result<T> fromFailure<T>(Exception exception) => Failure(exception);
}

class Success<T> extends Result<T> {
  final T data;
  const Success(this.data);
}

class Failure<T> extends Result<T> {
  final Exception exception;
  const Failure(this.exception);
}