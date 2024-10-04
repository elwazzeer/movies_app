import 'package:movieapp/core/network/error_msg_model.dart';

class ServerException implements Exception{
  final ErrorMsgModel errorMsgModel ;

  const ServerException({required this.errorMsgModel});

}