import 'package:dio/dio.dart';

class ApiServices{
  ApiServices(this._dio);
  final String _baseUrl='https://www.googleapis.com/books/v1/';
  final Dio _dio;

  Future<Map<String,dynamic>> getData({required String endPoints})async{
    Response  response=  await  _dio.get('$_baseUrl$endPoints');
    return response.data ;
  }
}