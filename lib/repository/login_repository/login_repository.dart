import 'package:getx_api_seth/data/network/network_api_services.dart';
import 'package:getx_api_seth/resources/app_urls/app_urls.dart';


class LoginReposiroty {
  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = await _apiService.postApi(data, AppURL.loginApi);
    return response;
  }
}
