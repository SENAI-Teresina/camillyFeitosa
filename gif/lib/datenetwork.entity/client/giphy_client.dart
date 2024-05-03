import 'dart:convert';

import 'package:gif/datenetwork.entity/client/base_client.dart';
import 'package:gif/datenetwork.entity/response_entity.dart';
import 'package:logger/logger.dart';


class GiphyClient extends BaseClient {
  final String baseUrl;
  final String apiKey;
  

  GiphyClient({
    required this.baseUrl,
    required this.apiKey,
    required Logger log,
  }) : super (log: log);

  Future<ResponseEntity> getTrending({int? limit, int? offset}) async{
    final params = {
      'api_key': apiKey,
    };

    if (limit != null) {
      params['limit'] = limit.toString();
    }

    if (offset != null) {
      params['offset'] = offset.toString();
    }

    //Do request
    final response = 
    await get ('${baseUrl} vl/gifs/trending', queryParameters: params);

    //check the result
    chekKo(response, 'get_trending', body: params.toString());

    //Serializ result and return
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ResponseEntity.fromJson(json);

  }
}