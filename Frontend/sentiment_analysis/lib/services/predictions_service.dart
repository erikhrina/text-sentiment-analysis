class PredictionsService {
  static String mapPrediction(double prediction) {
    if (prediction == 0) {
      return 'NEGATIVE';
    } else if (prediction == 1) {
      return 'NEUTRAL';
    } else {
      return 'POSITIVE';
    }
  }
}
