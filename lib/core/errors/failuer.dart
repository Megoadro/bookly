import 'package:dio/dio.dart';

abstract class Failuer {
  final String errMessege;
  const Failuer(this.errMessege);
}

class ServerFailuer extends Failuer {
  ServerFailuer(super.errMessege);

  factory ServerFailuer.fromDioErro(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer('Connectin timeout with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailuer('Send timeout with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailuer('Receive timeout with api server');
      case DioExceptionType.badCertificate:
        return ServerFailuer('Incorrect crtificate with api server');
      case DioExceptionType.badResponse:
        return ServerFailuer.fromBadResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailuer('Request to Api Server Was Cancel');
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketExceptions')) {
          return ServerFailuer('No Internet Conection');
        }
      case DioExceptionType.unknown:
        return ServerFailuer('Unexpected Error .. Please Try later !');
      default:
        return ServerFailuer('OOPS! There was an error .. pleasw try again');
    }
    return ServerFailuer('Unexpected Error .. Please Try later !');
  }

  factory ServerFailuer.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuer(response['error']['messege']);
    } else if (statusCode == 404) {
      return ServerFailuer('Your Request Not Found..Please Try Agsain');
    } else if (statusCode == 500) {
      return ServerFailuer('Internel Server Error..Please Try Agsain');
    } else {
      return ServerFailuer('OOPS! There was an error .. pleasw try again');
    }
  }
}
