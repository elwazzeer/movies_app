import 'package:equatable/equatable.dart';

class ErrorMsgModel extends Equatable {
  final int statusCode;

  final String statusMessage;

  final bool success;

  const ErrorMsgModel({required this.success,
    required this.statusCode,
    required this.statusMessage});

  factory ErrorMsgModel.fromJson(Map<String, dynamic> json) {
    return ErrorMsgModel(
        success: json['success'],
        statusCode: json['statusCode'],
        statusMessage: json['statusMessage']);
  }

  @override
  List<Object> get props => [statusCode, statusMessage, success];
}
