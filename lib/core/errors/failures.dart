  import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMessage;
  Failure(this.errorMessage);
  }

class ServiceFailure extends Failure{
  ServiceFailure(super.errorMessage);

  factory ServiceFailure.fromDioError(DioException dioError){
    switch(dioError.type){

      case DioExceptionType.connectionTimeout:
      return ServiceFailure('Connection Time Out!');
      case DioExceptionType.sendTimeout:
        return ServiceFailure('Send Time Out!');

      case DioExceptionType.receiveTimeout:
        return ServiceFailure('Receive Time Out!');

      case DioExceptionType.badCertificate:
        return ServiceFailure('Bad Certification From Server!');
      case DioExceptionType.badResponse:
        return ServiceFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServiceFailure('Request To Server Was Canceled!');

      case DioExceptionType.connectionError:
      return ServiceFailure('Connection Error!');

      case DioExceptionType.unknown:
        if(dioError.message!.contains('SocketException'))
          {
            return ServiceFailure(
                'No Internet Connection, Please Try Again Later');
          }

          return ServiceFailure(
              'Opps There are an Error, Please Try Again Later');

      default:
        return ServiceFailure(
            'Opps There are an Error, Please Try Again Later');
    }

  }
  factory ServiceFailure.fromResponse(int statusCode, Map<String,dynamic> response){
    
    if(statusCode==400||statusCode==403||statusCode==401){
      return ServiceFailure(response['error']['message']);
    }
    else if (statusCode==404){
      return ServiceFailure('Your Request not Found, Please try again Later 404');

    }
    else if (statusCode==500){
      return ServiceFailure('Internal Server Error, Please try again Later 500');

    }
    else {
      return ServiceFailure('Opps There was an Error, Please try again Later');

    }
  }
}