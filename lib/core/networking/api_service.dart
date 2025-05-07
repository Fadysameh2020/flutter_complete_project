import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/networking/api_constant.dart';
import 'package:flutter_complete_project/core/networking/api_general_response.dart';
import 'package:flutter_complete_project/features/authentication/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/features/authentication/login/data/models/login_response.dart';
import 'package:flutter_complete_project/features/authentication/signup/data/models/sign_up_request_body.dart';
import 'package:flutter_complete_project/features/home/data/model/specialization_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: APIConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  /// auth_service
  @POST(APIConstants.login)
  Future<ApiGeneralResponse<UserData>> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(APIConstants.signup)
  Future<ApiGeneralResponse<UserData>> signup(
    @Body() SignupRequestBody signupRequestBody,
  );

  /// home_service
  @GET(APIConstants.specialization)
  Future<ApiGeneralResponse<List<SpecializationResponse>>> getSpecialization();
}
