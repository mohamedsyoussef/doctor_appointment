import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // @POST(ApiConstants.login)
  // Future<loginresponse> login(@Body() Map<String, dynamic> body);
  // @POST(ApiConstants.signup)
  // Future<Response> signup(@Body() Map<String, dynamic> body);

}