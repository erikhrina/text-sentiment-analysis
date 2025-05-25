import 'package:sentiment_analysis/api/api_client.dart';

abstract class ApiInterface {
  static late ApiClient apiClient;

  ApiInterface() {
    apiClient = ApiClient();
  }
}
