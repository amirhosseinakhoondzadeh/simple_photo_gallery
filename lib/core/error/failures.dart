import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  Failure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

// General failures
class ServerFailure extends Failure {
  final int? code;
  final String message;

  ServerFailure({this.code, required this.message}) : super(message: message);
}

// Internet Connection Failure
class InternetFailure extends Failure {
  final String message;
  InternetFailure({required this.message}) : super(message: message);
}

// Cache Failure
class CacheFailure extends Failure {
  final String message;
  CacheFailure({required this.message}) : super(message: message);
}

class OperationFailure extends Failure {
  final String message;
  OperationFailure({required this.message}) : super(message: message);
}
