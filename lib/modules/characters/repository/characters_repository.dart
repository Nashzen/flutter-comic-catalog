import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_comic_catalog/models/characters_model.dart';
import 'package:flutter_comic_catalog/shareds/constants/constants.dart';

class CharactersRepository {
  final Dio _dio;
  final url = '$BASE_URL/characters';

  CharactersRepository(this._dio);

  Future<CharacterModel> getCharacters({String offset, String name}) async {
    Map<String, String> parameters = {
      "apikey": '$PUBLIC_KEY',
      "ts": '$TS',
      "hash": '$hashConvertido',
      "offset": offset,
    };

    if (name != null) {
      parameters['nameStartsWith'] = name;
    }

    try {
      Response response = await _dio.get(url, queryParameters: parameters);
      if (response.statusCode == 200) {
        var data = json.decode(response.toString());
        return CharacterModel.fromJson(data);
      } else {
        return CharacterModel();
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
