import 'package:flutter/foundation.dart';
import 'package:sentiment_analysis/api/api_interface.dart';
import 'package:sentiment_analysis/models/prediction_model.dart';

class PredictionsApi extends ApiInterface {
  // Get sentiment prediction from a text.
  Future<SentimentPrediction?> getPrediction(String text) async {
    final String path = 'predict';
    Map<String, dynamic>? response;
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    Map<String, String> body = {
      'text': text,
    };
    try {
      response = await ApiInterface.apiClient.post(
        path: path,
        headers: headers,
        body: body,
      );
      return SentimentPrediction.fromJson(text, response);
    } catch (e) {
      if (kDebugMode) print(e);
      return null;
    }
  }
}
