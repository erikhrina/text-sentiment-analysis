import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sentiment_analysis/constants/constants.dart';

class ApiClient {
  final String _baseUrl = baseUrl;

  Future<dynamic> get({
    required String path,
    required Map<String, String> headers,
  }) async {
    final response = await http
        .get(
          Uri.parse('$_baseUrl$path'),
          headers: headers,
        )
        .timeout(
          const Duration(seconds: 15),
          onTimeout: () => http.Response(
            jsonEncode({'error': 'Timeout'}),
            401,
          ),
        );
    return response.body;
  }

  Future<Map<String, dynamic>> post({
    required String path,
    required Map<String, String> headers,
    required dynamic body,
  }) async {
    final response = await http
        .post(
          Uri.parse('$_baseUrl$path'),
          headers: headers,
          body: jsonEncode(body),
        )
        .timeout(
          const Duration(seconds: 15),
          onTimeout: () => http.Response(
            jsonEncode({'error': 'Timeout'}),
            401,
          ),
        );
    return jsonDecode(response.body);
  }
}
