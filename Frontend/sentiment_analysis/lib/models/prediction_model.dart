class SentimentPrediction {
  final String userText;
  final double prediction;
  final Map<String, double> probabilities;

  SentimentPrediction({
    required this.userText,
    required this.prediction,
    required this.probabilities,
  });

  factory SentimentPrediction.fromJson(
    String userText,
    Map<String, dynamic> json,
  ) {
    final List<dynamic> probs = json['probabilities'];

    return SentimentPrediction(
      userText: userText,
      prediction: double.parse(json['prediction'].toString()),
      probabilities: {
        'negative': probs[0],
        'neutral': probs[1],
        'positive': probs[2],
      },
    );
  }
}
