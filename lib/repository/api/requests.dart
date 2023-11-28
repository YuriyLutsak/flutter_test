import 'package:crypto_coin/repository/models/Entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class RequestApi {
  Future<List<Entity>> getAll() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH&tsyms=USD');
    debugPrint(response.toString());
    final data = response.data as Map<String, dynamic>;
    final dataToEntity = data.entries.map(
      (e) => Entity(
        e.key,
        (e.value as Map<String, dynamic>)['USD'], // ['USD'] - ключ в мапе
      ),
    ).toList();
    return dataToEntity;
  }
}
