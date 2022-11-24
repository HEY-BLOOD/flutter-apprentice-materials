import 'package:chopper/chopper.dart';

import 'model_converter.dart';
import 'model_response.dart';
import 'recipe_model.dart';
import 'service_interface.dart';

part 'recipe_service.chopper.dart';

const String apiId = '832a5f8e';
const String apiKey = '35abbbb8d99cd62a15a95a4b227efc8f';
const String apiUrl = 'https://api.edamam.com/';

Request _addQuery(Request req) {
  final params = Map<String, dynamic>.from(req.parameters);
  params['app_id'] = apiId;
  params['app_key'] = apiKey;

  return req.copyWith(parameters: params);
}

@ChopperApi()
abstract class RecipeService extends ChopperService
    implements ServiceInterface {
  @override
  @Get(path: 'search')
  Future<Response<Result<APIRecipeQuery>>> queryRecipes(
    @Query('q') String query,
    @Query('from') int from,
    @Query('to') int to,
  );

  static RecipeService create() {
    final client = ChopperClient(
      baseUrl: apiUrl,
      interceptors: [_addQuery, HttpLoggingInterceptor()],
      converter: ModelConverter(),
      errorConverter: const JsonConverter(),
      services: [
        _$RecipeService(),
      ],
    );
    return _$RecipeService(client);
  }
}
