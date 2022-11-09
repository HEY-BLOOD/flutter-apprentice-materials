import 'dart:developer';

import 'package:chopper/chopper.dart';

import 'recipe_model.dart';
import 'model_response.dart';
import 'model_converter.dart';

const String apiKey = '35abbbb8d99cd62a15a95a4b227efc8f';
const String apiId = '832a5f8e';
const String apiUrl = 'https://api.edamam.com/search';

@ChopperApi()
abstract class RecipeService extends ChopperService {
  @Get(path: 'search')
  Future<Response<Result<APIRecipeQuery>>> queryRecipes(
      @Query('q') String query, @Query('from') int from, @Query('to') int to);
// TODO: Add create()
}
// TODO: Add _addQuery()

