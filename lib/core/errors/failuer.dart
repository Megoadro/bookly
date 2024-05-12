import 'package:dio/dio.dart';

abstract class Failuer {
  final String errMessege;
  const Failuer(this.errMessege);
}

class ServerFailuer extends Failuer {
  ServerFailuer(super.errMessege);

  factory ServerFailuer.fromDioErro(DioException dioException) {
    switch (dioException.type) {
      //1
      case DioExceptionType.connectionTimeout:
        return ServerFailuer('Connectin timeout with api server');
      //2
      case DioExceptionType.sendTimeout:
        return ServerFailuer('Send timeout with api server');
      //3  
      case DioExceptionType.receiveTimeout:
        return ServerFailuer('Receive timeout with api server');
      //4  
      case DioExceptionType.badCertificate:
        return ServerFailuer('Incorrect crtificate with api server');
      //5--->Second Factory
      case DioExceptionType.badResponse:
        return ServerFailuer.fromBadResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      //6  
      case DioExceptionType.cancel:
        return ServerFailuer('Request to Api Server Was Cancel');
      //7  
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketExceptions')) {
          return ServerFailuer('No Internet Conection');
        }
      //8 
      case DioExceptionType.unknown:
        return ServerFailuer('Unexpected Error .. Please Try later !');
      //9  
      default:
        return ServerFailuer('OOPS! There was an error .. pleasw try again');
    }
    //10
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
