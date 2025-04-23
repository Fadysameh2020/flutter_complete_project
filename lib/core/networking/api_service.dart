import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/networking/api_constant.dart';
import 'package:flutter_complete_project/features/authentication/data/login_request_body.dart';
import 'package:flutter_complete_project/features/authentication/data/login_response.dart';

// import 'package:flutter_complete_project/features/login/data/models/login_request_body.dart';
// import 'package:flutter_complete_project/features/login/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';

// import '../../features/sign_up/data/models/sign_up_request_body.dart';
// import '../../features/sign_up/data/models/sign_up_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: APIConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(APIConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  // @POST(ApiConstants.signup)
  // Future<SignupResponse> signup(
  //     @Body() SignupRequestBody signupRequestBody,
  //     );
}
