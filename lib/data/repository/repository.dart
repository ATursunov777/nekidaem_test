import 'package:nekidaem_test/data/server_api/models/card_model.dart';
import 'package:nekidaem_test/data/server_api/server_api.dart';

class Repository {
  final _serviceApi = ServerApi();

  Future<void> initialRequestData(String token) async {
    return await _serviceApi.initialRequestData(token);
  }

  Future<String> login(
    String username,
    String password,
  ) async {
    try {
      final response =
          await _serviceApi.login(username: username, password: password);
      return response;
    } catch (e) {
      throw (e);
    }
  }

  Future<List<Cards>> getCards(String? row) async {
    try {
      final response = await _serviceApi.getCars(row);
      return response;
    } catch (e) {
      throw (e);
    }
  }
}
